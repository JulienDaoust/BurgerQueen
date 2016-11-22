/******************************************************************************
*
* Copyright (C) 2010 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*
* platform_zynq.c
*
* Zynq platform specific functions.
*
* 02/29/2012: UART initialization is removed. Timer initializations are
* removed. All unnecessary include files and hash defines are removed.
* 03/01/2013: Timer initialization is added back. Support for SI #692601 is
* added in the timer callback. The SI #692601 refers to the following issue.
*
* The EmacPs has a HW bug on the Rx path for heavy Rx traffic.
* Under heavy Rx traffic because of the HW bug there are times when the Rx path
* becomes unresponsive. The workaround for it is to check for the Rx path for
* traffic (by reading the stats registers regularly). If the stats register
* does not increment for sometime (proving no Rx traffic), the function resets
* the Rx data path.
*
* </pre>
 */

#ifdef __arm__

#include "xparameters.h"
#include "xparameters_ps.h"	/* defines XPAR values */
#include "xil_cache.h"
#include "xscugic.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "platform_config.h"
#include "netif/xadapter.h"
#include "xtmrctr.h"
#include "xgpio.h"
#include "cmd.h"
#include "affichage.h"

#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID		XPAR_AXI_TIMER_0_DEVICE_ID
#define INTC_BASE_ADDR		XPAR_SCUGIC_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR	XPAR_SCUGIC_DIST_BASEADDR
#define TIMER_IRPT_INTR		XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

#define RESET_RX_CNTR_LIMIT	400

/**
 *  bouton
 * */


// Parameter definitions
//#define INTC_DEVICE_ID 		XPAR_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define LEDS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR

#define BTN_INT 			XGPIO_IR_CH1_MASK

XGpio LEDInst, BTNInst;
XScuGic INTCInst;
static int led_data;
static int btn_value;
int push_button = 0;


//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *baseaddr_p);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

void time_waste() {
	float a = 1.5;
	int i;
	for(i=0; i<1000000; i++) {
		a = a*i;
	}
}

//----------------------------------------------------
// INTERRUPT HANDLER FUNCTIONS
// - called by the timer, button interrupt, performs
// - LED flashing
//----------------------------------------------------
//!! IMPORTANT : Tous ce que vous devez controler avec les boutons doit être ICI
void BTN_Intr_Handler(void *InstancePtr) {
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);
	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) != BTN_INT) {
		return;
	}

	btn_value = XGpio_DiscreteRead(&BTNInst, 1);
	//xil_printf("btn %d\n", btn_value);

	// Bouton 1 = bouton du milieu
	if(btn_value == 4)
	{
		time_waste();
		if(XGpio_DiscreteRead(&BTNInst, 1) == 4)
			if (AFF_GetAffDetailCmdStatus() == 0)
				CMD_SelectPreviousStatus();

	}
	else if(btn_value == 8)
	{
		time_waste();
		if(XGpio_DiscreteRead(&BTNInst, 1) == 8)
			if (AFF_GetAffDetailCmdStatus() == 0)
				CMD_SelectNextStatus();
	}
	else if(btn_value == 16)
	{
		time_waste();
		if(XGpio_DiscreteRead(&BTNInst, 1) == 16) {
			if (AFF_GetAffDetailCmdStatus() == 0) {
				CMD_SelectPreviousCMD();
			} else {
				CMD_SelectPreviousItem();
			}
		}

	}
	else if(btn_value == 2)
	{
		time_waste();
		if(XGpio_DiscreteRead(&BTNInst, 1) == 2) {
			if (AFF_GetAffDetailCmdStatus() == 0) {
				CMD_SelectNextCmd();
			} else {
				CMD_SelectNextItem();
			}
		}
	}
	else if(btn_value == 1)
	{
		time_waste();
		if(XGpio_DiscreteRead(&BTNInst, 1) == 1)
			AFF_SwitchScreen();
	}

//	/* TEST LED */
//
//	// Increment counter based on button value
//	// Reset if centre button pressed
//	if (btn_value != 1)
//		led_data = led_data + btn_value;
//	else
//		led_data = 0;
//
//	XGpio_DiscreteWrite(&LEDInst, 1, led_data);
//
//	/*  FIN TEST LED */
//	///////////////////////////////////////////


	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);
	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}


//----------------------------------------------------
// INITIAL SETUP FUNCTIONS
//----------------------------------------------------

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr) {
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			XScuGicInstancePtr);
	Xil_ExceptionEnable();

	XScuGic_RegisterHandler(INTC_BASE_ADDR, BTN_INT,
						(Xil_ExceptionHandler)&INTCInst,
						(void *)&BTNInst);

	return XST_SUCCESS;

}


int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr) {
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig,
			IntcConfig->CpuBaseAddress);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID,
			(Xil_ExceptionHandler) BTN_Intr_Handler, (void *) GpioInstancePtr);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
//	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
//	XScuGic_SelfTest( &InterruptSystemSetup );
	return XST_SUCCESS;
}


static void PUSHBUTTON_Init()
{


		int status;


	   		//----------------------------------------------------
	   		// INITIALIZE THE PERIPHERALS & SET DIRECTIONS OF GPIO
	   		//----------------------------------------------------
	   		// Initialise LEDs
	   		status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
	   		if (status != XST_SUCCESS)
	   			return XST_FAILURE;

	   		// Initialise Push Buttons
	   		status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	   		if (status != XST_SUCCESS)
	   			return XST_FAILURE;

	   		// Set LEDs direction to outputs
	   		XGpio_SetDataDirection(&LEDInst, 1, 0x00);

	   		// Set all buttons direction to inputs
	   		XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
	   		status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
	   			   		if (status != XST_SUCCESS)
	   			   			return XST_FAILURE;

}

/**** END boutons */


void tcp_fasttmr(void);
void tcp_slowtmr(void);

static XTmrCtr TimerInstance;

#ifndef USE_SOFTETH_ON_ZYNQ
static int ResetRxCntr = 0;
extern struct netif *webserver_netif;
#endif

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;


extern char inbyte(void);
void timer_callback(void *data, u8 TmrCtrNumber/*XScuTimer * TimerInstance*/)
{
	/* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified
	 * by lwIP. It is not important that the timing is absoluetly accurate.
	 */
	static int odd = 1;

	 TcpFastTmrFlag = 1;

	odd = !odd;
#ifndef USE_SOFTETH_ON_ZYNQ
	ResetRxCntr++;
#endif
	if (odd) {

		TcpSlowTmrFlag = 1;

	}

	/* For providing an SW alternative for the SI #692601. Under heavy
	 * Rx traffic if at some point the Rx path becomes unresponsive, the
	 * following API call will ensures a SW reset of the Rx path. The
	 * API xemacpsif_resetrx_on_no_rxdata is called every 100 milliseconds.
	 * This ensures that if the above HW bug is hit, in the worst case,
	 * the Rx path cannot become unresponsive for more than 100
	 * milliseconds.
	 */
#ifndef USE_SOFTETH_ON_ZYNQ
	if (ResetRxCntr >= RESET_RX_CNTR_LIMIT) {
		xemacpsif_resetrx_on_no_rxdata(webserver_netif);
		ResetRxCntr = 0;
	}
#endif
	XTmrCtr_Stop(data, TmrCtrNumber);
	XTmrCtr_Reset(data, TmrCtrNumber);
	XTmrCtr_Start(data, TmrCtrNumber);
}

void platform_setup_timer(void)
{
	int Status = XST_SUCCESS;
	int TimerLoadValue = 0;

	Status = XTmrCtr_Initialize(&TimerInstance, TIMER_DEVICE_ID);
	if (Status != XST_SUCCESS) {

		xil_printf("In %s: AXI Timer initialization failed...\r\n",
		__func__);
		return;
	}

	Status = XTmrCtr_SelfTest(&TimerInstance, 0);
	if (Status != XST_SUCCESS) {
		xil_printf("In %s: AXI Timer Self test failed...\r\n",
		__func__);
		return;

	}

	// Set Timer Handler
	XTmrCtr_SetHandler(&TimerInstance, timer_callback, &TimerInstance);

	// Setting timer reset value (250 milli seconds)
	TimerLoadValue = XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ / 8;
	XTmrCtr_SetResetValue(&TimerInstance, 0, TimerLoadValue);

	// Setting timer options (Interrupt and auto reload)
	XTmrCtr_SetOptions(&TimerInstance,
			TIMER_DEVICE_ID,
			(XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION));
	return;
}

void platform_setup_interrupts(void)
{
	XScuGic_DeviceInitialize(INTC_DEVICE_ID);

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler,
			(void *)INTC_DEVICE_ID);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	XScuGic_RegisterHandler(INTC_BASE_ADDR, TIMER_IRPT_INTR,
						(Xil_ExceptionHandler)XTmrCtr_InterruptHandler,
						(void *)&TimerInstance);
	/*
	 * Enable the interrupt for axi timer.
	 */
	XScuGic_EnableIntr(INTC_DIST_BASE_ADDR, TIMER_IRPT_INTR);


	return;
}

void platform_enable_interrupts()
{
	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	XTmrCtr_Start(&TimerInstance, 0);
	return;
}

void init_platform()
{
	platform_setup_timer();
	platform_setup_interrupts();
	PUSHBUTTON_Init();

	return;
}

void cleanup_platform()
{
	Xil_ICacheDisable();
	Xil_DCacheDisable();
	return;
}


Interrupt_Init(){

	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
}
#endif

