/******************************************************************************
*
* Copyright (C) 2012 - 2014 Xilinx, Inc.  All rights reserved.
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
/****************************************************************************/
/**
*
* @file xaxipmon_intr_example.c
*
* This file contains a design example showing how to use the driver APIs of the
* AXI Performance Monitor driver in interrupt mode.
*
*
* @note
*
* Metric Counters are enabled. The Application/design for which Metrics need
* to be computed should be run and then the Metrics collected.
* Sampled Metric Counter is read after Sample Metric Counter Interrupt
* occurs.
*
*
* <pre>
*
* MODIFICATION HISTORY:
*
* Ver   Who    Date     Changes
* ----- -----  -------- -----------------------------------------------------
* 1.00a bss    02/29/12 First release
* 2.00a bss    06/23/12 Updated to support v2_00a version of IP.
* 3.00a bss    09/03/12 Deleted XAxiPmon_SetAgent API to support
*						v2_01a version of IP.
* 3.01a bss	   10/25/12 Deleted XAxiPmon_EnableCountersData API to support
*						new version of IP.
* 5.00a bss	10/25/12 Modified call to XAxiPmon_SetSampleInterval as per
*			 new driver API.
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xaxipmon.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xintc.h"
#include "xil_exception.h"
#include "stdio.h"

/************************** Constant Definitions ****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define AXIPMON_DEVICE_ID 			XPAR_AXIPMON_0_DEVICE_ID
#define INTC_DEVICE_ID				XPAR_INTC_0_DEVICE_ID
#define INTC_AXIPMON_INTERRUPT_ID		XPAR_INTC_0_AXIPMON_0_VEC_ID


/**************************** Type Definitions ******************************/


/***************** Macros (Inline Functions) Definitions ********************/

/************************** Function Prototypes *****************************/

int AxiPmonInterruptExample(u16 AxiPmonDeviceId, u32 *Metrics);

static void AxiPmonInterruptHandler(void *CallBackRef);

static int AxiPmonSetupIntrSystem(XIntc* IntcInstancePtr,
					XAxiPmon* InstancePtr, u16 IntrId);

/************************** Variable Definitions ****************************/

static XAxiPmon AxiPmonInst;	/* AXI Performance Monitor driver instance */
XIntc Intc;	/* The Instance of the Interrupt Controller Driver */

/*
 * Shared variables used to test the callbacks.
 */
volatile static int SampleCounterIntr = FALSE;  /*
						 * Sample Interval Counter
						 * Overflow interrupt
						 */

/****************************************************************************/
/**
*
* Main function that invokes the example in this file.
*
* @param	None.
*
* @return
*		- XST_SUCCESS if the example has completed successfully.
*		- XST_FAILURE if the example has failed.
*
* @note		None.
*
*****************************************************************************/
int main(void)
{

	int Status;
	u32 Metrics;

	/*
	 * Run the AxiPmon Interrupt example, specify the Device ID that is
	 * generated in xparameters.h .
	 */
	Status = AxiPmonInterruptExample(AXIPMON_DEVICE_ID, &Metrics);

	if (Status != XST_SUCCESS) {
		xil_printf("AXI Performance Monitor Interrupt example \
							failed\r\n");
		return XST_FAILURE;
	}
	xil_printf("AXI Performance Monitor Interrupt example passed\r\n");
	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* This function runs a test on the AXI Performance Monitor device using the
* driver APIs.
* This function does the following tasks:
*	- Initiate the AXI Performance Monitor device driver instance
*	- Run self-test on the device
*	- Setup Interrupt System
*	- Sets Agent Number
*	- Sets Metric Set 0 as Metrics for Metric Counter 0
*	- Sets Upper and Lower Ranges for Incrementer 0
*	- Sets and loads Sample Interval
*	- Enables Metric Counters
*	- Calls Application for which Metrics need to be computed
*	- Enables Sample Interval Counter Interrupt
*	- Wait for interrupt and disables Interrupts after Interrupt occurs
*	- Reads Sampled Metric Counter 0
*	- Disables Metric Counters
*
* @param	AxiPmonDeviceId is the XPAR_<AXIPMON_instance>_DEVICE_ID value
*		from xparameters.h.
* @param	Metrics is an user referece variable in which computed metrics
*			will be filled
*
* @return
*		- XST_SUCCESS if the example has completed successfully.
*		- XST_FAILURE if the example has failed.
*
* @note   	None
*
******************************************************************************/
int AxiPmonInterruptExample(u16 AxiPmonDeviceId, u32 *Metrics)
{
	int Status;
	XAxiPmon_Config *ConfigPtr;
	u8 SlotId = 0x1;
	u16 Range2 = 0x10;	/* Range 2 - 16 */
	u16 Range1 = 0x08;	/* Range 1 - 8 */
	XAxiPmon *AxiPmonInstPtr = &AxiPmonInst;
	u32 SampleInterval  = 0x3FFFF;

	/*
	 * Initialize the AxiPmon driver.
	 */
	ConfigPtr = XAxiPmon_LookupConfig(AxiPmonDeviceId);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}
	XAxiPmon_CfgInitialize(AxiPmonInstPtr, ConfigPtr,
				ConfigPtr->BaseAddress);

	/*
	 * Self Test the Axi Performance Monitor device
	 */
	Status = XAxiPmon_SelfTest(AxiPmonInstPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	Status = AxiPmonSetupIntrSystem(&Intc, AxiPmonInstPtr,
					INTC_AXIPMON_INTERRUPT_ID);


	/*
	 * Select Agent and required set of Metrics for a Counter.
	 * We can select another agent,Metrics for another counter by
	 * calling below function again.
	 */

	XAxiPmon_SetMetrics(AxiPmonInstPtr, SlotId, XAPM_METRIC_SET_0,
				XAPM_METRIC_COUNTER_0);

	/*
	 * Set Incrementer Ranges
	 */
	XAxiPmon_SetIncrementerRange(AxiPmonInstPtr, XAPM_INCREMENTER_0,
							Range2, Range1);


	XAxiPmon_SetSampleInterval(AxiPmonInstPtr, SampleInterval);

	XAxiPmon_LoadSampleIntervalCounter(AxiPmonInstPtr);

	/*
	 * Enable Metric Counters.
	 */
	XAxiPmon_EnableMetricsCounter(AxiPmonInstPtr);


	/*
	 * Enable Sample Interval Counter Overflow Interrupt
	 */
	XAxiPmon_IntrEnable(AxiPmonInstPtr, XAPM_IXR_SIC_OVERFLOW_MASK);

	/*
	 * Enable Global Interrupt
	 */
	XAxiPmon_IntrGlobalEnable(AxiPmonInstPtr);


	/*
	 * Application for which Metrics has to be computed should be
	 * called here
	 */

	/*
	 * Enable Sample Interval Counter and wait for interrupt to occur
	 */
	XAxiPmon_EnableSampleIntervalCounter(AxiPmonInstPtr);


	/** Wait until Sample Interval Overflow occurs */
	while(!(SampleCounterIntr));


	/** Disable Sample Interval Counter */
	XAxiPmon_DisableSampleIntervalCounter(AxiPmonInstPtr);

	/** Disable Sample Interval Counter Overflow Interrupt */
	XAxiPmon_IntrDisable(AxiPmonInstPtr, XAPM_IXR_SIC_OVERFLOW_MASK);

	/** Disable Global Interrupt */
	XAxiPmon_IntrGlobalDisable(AxiPmonInstPtr);

	/* Get Sampled Metric Counter 0 in Metrics */
	*Metrics = XAxiPmon_GetSampledMetricCounter(AxiPmonInstPtr,
					XAPM_METRIC_COUNTER_0);
	/*
	 * Disable Metric Counters.
	 */
	XAxiPmon_DisableMetricsCounter(AxiPmonInstPtr);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function is the Interrupt Service Routine for the AXI Performance
* Monitor device. It will be called by the processor whenever an interrupt is
* asserted by the device.
*
* There are 13 different interrupts supported
*	- Sample Interval Counter Overflow Interrupt
*	- Global Clock Counter Overflow Interrupt
*	- Event Log FIFO full Interrupt
*	- Metric Counter 0 overflow Interrupt
*	- Metric Counter 1 overflow Interrupt
*	- Metric Counter 2 overflow Interrupt
*	- Metric Counter 3 overflow Interrupt
*	- Metric Counter 4 overflow Interrupt
*	- Metric Counter 5 overflow Interrupt
*	- Metric Counter 6 overflow Interrupt
*	- Metric Counter 7 overflow Interrupt
*	- Metric Counter 8 overflow Interrupt
*	- Metric Counter 9 overflow Interrupt
* This function only handles Sample Interval Counter Overflow Interrupt.
* User of this code may need to modify the code to meet needs of the
* application.
*
* @param	CallBackRef is the callback reference passed from the Interrupt
*		controller driver, which in our case is a pointer to the
*		driver instance.
*
* @return	None.
*
* @note		This function is called within interrupt context.
*
******************************************************************************/
static void AxiPmonInterruptHandler(void *CallBackRef)
{
	u32 IntrStatus;

	XAxiPmon *AxiPmonPtr = (XAxiPmon *)CallBackRef;

	/*
	 * Get the interrupt status from the device and check the value.
	 */
	IntrStatus = XAxiPmon_IntrGetStatus(AxiPmonPtr);

	if (IntrStatus & XAPM_IXR_SIC_OVERFLOW_MASK) {
		/*
		 * Set Sample Interval Counter Overflow interrupt flag so
		 * the code in application context can be aware of this interrupt.
		 */
		SampleCounterIntr = TRUE;

	}

	/*
	 * Clear Interrupt Status Register.
	 */
	XAxiPmon_IntrClear(AxiPmonPtr, IntrStatus);

 }




/*****************************************************************************/
/**
*
* This function performs the AXI Performance Monitor set up for Interrupts
*
* @param	IntcInstancePtr is a reference to the Interrupt Controller
*			driver Instance
* @param	InstancePtr is a reference to the  XAxiPmon driver Instance
* @param	IntrId is XPAR_<INTC_instance>_<AXIPMON_instance>_INTERRUPT_INTR
*			value from xparameters.h
*
* @return
*		- XST_SUCCESS if the interrupt setup is successful.
*		- XST_FAILURE if interrupt setup is not successful.
*
* @note		None.
*
******************************************************************************/
static int AxiPmonSetupIntrSystem(XIntc* IntcInstancePtr, XAxiPmon* InstancePtr,
			 					u16 IntrId)
{
	int Status;

	/*
	 * Initialize the interrupt controller driver so that it's ready to
	 * use.
	 */
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the handler that will be called when an interrupt
	 * for the device occurs, the handler defined above performs the
	 * specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(IntcInstancePtr, IntrId,
		(XInterruptHandler) AxiPmonInterruptHandler, InstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller so interrupts are enabled for all
	 * devices that cause interrupts. Specify real mode so that the Axi
	 * Performance Monitor device can cause interrupts through the interrupt
	 * controller.
	 */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupt for the AXI Performance Monitor.
	 */
	XIntc_Enable(IntcInstancePtr, IntrId);

	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler) XIntc_InterruptHandler,
					IntcInstancePtr);
	/*
	 * Enable exceptions.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}
