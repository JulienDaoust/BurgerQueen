#include <xil_types.h>
#include <xgpio.h>
#include <xparameters.h>

#define SWS  XPAR_AXI_GPIO_0_DEVICE_ID
#define LEDS XPAR_AXI_GPIO_1_DEVICE_ID

static XGpio SWSInstance;
static XGpio LEDSInstance;


void gpioUtilInit ()
{
  XGpio_Initialize (&SWSInstance, SWS);
  XGpio_Initialize (&LEDSInstance, LEDS);

  XGpio_SetDataDirection (&LEDSInstance, 1 /* channel 1 only */ , 0 /* direction 0: out */ );
  XGpio_SetDataDirection (&SWSInstance,  1 /* channel 1 only */ , 0xFFFFFFFF /* direction 1 for all 32 bits: out */ );
}

int main()
{
  uint8_t value;

  gpioUtilInit();

  while (1) {
	 /* read the switches and turn on the corresponding leds ... */
	 value = XGpio_DiscreteRead (&SWSInstance, 1);
     XGpio_DiscreteWrite (&LEDSInstance, 1, value);
  }
  /*for (i=0; i < 5000000; i++)
     ;

  XGpio_DiscreteSet (&XGpioInstance, 1, Xuint32 Mask);
  XGpio_DiscreteClear (&XGpioInstance, 1, Xuint32 Mask);*/
}

