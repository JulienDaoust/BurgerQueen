//#include <stdio.h>
//#include "xbasic_types.h"
//#include "xil_io.h"
//#include "xil_exception.h"
//#include "xuartps.h"
//
//#include "platform.h"
//
//#include "xparameters.h"
//#include "xgpio.h"
//#include "xscugic.h"
//#include "Xscutimer.h"
//#include "xil_printf.h"
//#include "cmd.h"
//
//
//
//
////
////// Parameter definitions
////#define INTC_DEVICE_ID 		XPAR_SCUGIC_0_DEVICE_ID
////#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
////#define LEDS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
////#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR
////
////#define BTN_INT 			XGPIO_IR_CH1_MASK
////
////XGpio LEDInst, BTNInst;
////XScuGic INTCInst;
////static int led_data;
////static int btn_value;
////int push_button = 0;
//
////----------------------------------------------------
//// PROTOTYPE FUNCTIONS
////----------------------------------------------------
//static void BTN_Intr_Handler(void *baseaddr_p);
//static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
//static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);
//
////----------------------------------------------------
//// INTERRUPT HANDLER FUNCTIONS
//// - called by the timer, button interrupt, performs
//// - LED flashing
////----------------------------------------------------
//
//
//void time_waste() {
////	float a = 1.5;
////	int i;
////	for(i=0; i<5000000; i++) {
////		a = a*i;
////	}
//}
//
////!! IMPORTANT : Tous ce que vous devez controler avec les boutons doit �tre ICI
//void BTN_Intr_Handler(void *InstancePtr) {
//	// Disable GPIO interrupts
//	XGpio_InterruptDisable(&BTNInst, BTN_INT);
//	// Ignore additional button presses
//	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) != BTN_INT) {
//		return;
//	}
//
//	btn_value = XGpio_DiscreteRead(&BTNInst, 1);
//	xil_printf("btn %d\n", btn_value);
//;
//
//	// Bouton 1 = bouton du milieu
//	if(btn_value == 4)
//	{
//		CMD_SelectPreviousStatus();
//		time_waste();
//	}
//	else if(btn_value == 8)
//	{
//		CMD_SelectNextStatus();
//		time_waste();
//	}
//	else if(btn_value == 16)
//	{
//		CMD_SelectPreviousCMD();
//		time_waste();
//	}
//	else if(btn_value == 2)
//	{
//		CMD_SelectNextCmd();
//		time_waste();
//	}
//
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
//
//
//	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);
//	// Enable GPIO interrupts
//	XGpio_InterruptEnable(&BTNInst, BTN_INT);
//}
//
////----------------------------------------------------
//// INITIAL SETUP FUNCTIONS
////----------------------------------------------------
//
//int InterruptSystemSetup(XScuGic *XScuGicInstancePtr) {
//	// Enable interrupt
//	XGpio_InterruptEnable(&BTNInst, BTN_INT);
//	XGpio_InterruptGlobalEnable(&BTNInst);
//
//	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
//			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
//			XScuGicInstancePtr);
//	Xil_ExceptionEnable();
//
//	return XST_SUCCESS;
//
//}
//
//int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr) {
//	XScuGic_Config *IntcConfig;
//	int status;
//
//	// Interrupt controller initialisation
//	IntcConfig = XScuGic_LookupConfig(DeviceId);
//	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig,
//			IntcConfig->CpuBaseAddress);
//	if (status != XST_SUCCESS)
//		return XST_FAILURE;
//
//	// Call to interrupt setup
//	status = InterruptSystemSetup(&INTCInst);
//	if (status != XST_SUCCESS)
//		return XST_FAILURE;
//
//	// Connect GPIO interrupt to handler
//	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID,
//			(Xil_ExceptionHandler) BTN_Intr_Handler, (void *) GpioInstancePtr);
//	if (status != XST_SUCCESS)
//		return XST_FAILURE;
//
//	// Enable GPIO interrupts interrupt
//	XGpio_InterruptEnable(GpioInstancePtr, 1);
//	XGpio_InterruptGlobalEnable(GpioInstancePtr);
//
//	// Enable GPIO and timer interrupts in the controller
//	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
////	XScuGic_SelfTest( &InterruptSystemSetup );
//	return XST_SUCCESS;
//}
//
//
//static void PUSHBUTTON_Init()
//{
//
//
//		int status;
//
//
//	   		//----------------------------------------------------
//	   		// INITIALIZE THE PERIPHERALS & SET DIRECTIONS OF GPIO
//	   		//----------------------------------------------------
//	   		// Initialise LEDs
//	   		status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
//	   		if (status != XST_SUCCESS)
//	   			return XST_FAILURE;
//
//	   		// Initialise Push Buttons
//	   		status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
//	   		if (status != XST_SUCCESS)
//	   			return XST_FAILURE;
//
//	   		// Set LEDs direction to outputs
//	   		XGpio_SetDataDirection(&LEDInst, 1, 0x00);
//
//	   		// Set all buttons direction to inputs
//	   		XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
//	   		int status;
//	   			   		status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
//	   			   		if (status != XST_SUCCESS)
//	   			   			return XST_FAILURE;
//
//}
//
////	 Initialize interrupt controller
////void Interrupt_Init(){
////
////	int status;
////		   		status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
////		   		if (status != XST_SUCCESS)
////		   			return XST_FAILURE;
////}
//
