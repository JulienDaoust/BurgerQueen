/***************************************************************************//**
* @file ad9680.c
* @brief Implementation of AD9680 Driver.
* @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
* Copyright 2014(c) Analog Devices, Inc.
*
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
* - Redistributions of source code must retain the above copyright
* notice, this list of conditions and the following disclaimer.
* - Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in
* the documentation and/or other materials provided with the
* distribution.
* - Neither the name of Analog Devices, Inc. nor the names of its
* contributors may be used to endorse or promote products derived
* from this software without specific prior written permission.
* - The use of this software may or may not infringe the patent rights
* of one or more patent holders. This license does not release you
* from the requirement that you obtain separate licenses from these
* patent holders to use this software.
* - Use of the software either in source or binary form, must be run
* on or directly connected to an Analog Devices Inc. component.
*
* THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <stdint.h>
#include <xil_printf.h>
#include "platform_drivers.h"
#include "ad9680.h"

/******************************************************************************/
/************************ Variables Definitions *******************************/
/******************************************************************************/
uint8_t ad9680_slave_select;

/***************************************************************************//**
* @brief ad9680_spi_read
*******************************************************************************/
int32_t ad9680_spi_read(uint16_t reg_addr, uint8_t *reg_data)
{
	uint8_t buf[3];
	int32_t ret;

	buf[0] = 0x80 | (reg_addr >> 8);
	buf[1] = reg_addr & 0xFF;
	buf[2] = 0x00;

	ret = spi_write_and_read(ad9680_slave_select, buf, 3);
	*reg_data = buf[2];

	return ret;
}

/***************************************************************************//**
* @brief ad9680_spi_write
*******************************************************************************/
int32_t ad9680_spi_write(uint16_t reg_addr, uint8_t reg_data)
{
	uint8_t buf[3];
	int32_t ret;

	buf[0] = reg_addr >> 8;
	buf[1] = reg_addr & 0xFF;
	buf[2] = reg_data;

	ret = spi_write_and_read(ad9680_slave_select, buf, 3);

	return ret;
}

/***************************************************************************//**
* @brief ad9680_setup
*******************************************************************************/
int32_t ad9680_setup(uint32_t spi_device_id, uint8_t slave_select)
{
	uint8_t chip_id;
	uint8_t pll_stat;

	ad9680_slave_select = slave_select;
	spi_init(spi_device_id, 1, 1);

	ad9680_spi_write(AD9680_REG_INTERFACE_CONF_A, 0x81);	// RESET
	mdelay(5);
	ad9680_spi_write(AD9680_REG_INTERFACE_CONF_B, 0x01);	// RESET
	mdelay(1);

	ad9680_spi_write(AD9680_REG_DEVICE_INDEX, 0x03);	// select both channels
	ad9680_spi_write(AD9680_REG_CHIP_DEC_RATIO, 0x00);	// full sample rate (decimation = 1)
	ad9680_spi_write(AD9680_REG_ADC_TEST_MODE, 0x00);	// test pattern
	ad9680_spi_write(AD9680_REG_OUTPUT_MODE, 0x01);	// twos complement
	ad9680_spi_write(AD9680_REG_JESD204B_QUICK_CONFIG, 0x88);	// m=2, l=4, f= 1
	ad9680_spi_write(AD9680_REG_JESD204B_CSN_CONFIG, 0x0d);	// 14-bit
	ad9680_spi_write(AD9680_REG_JESD204B_LANE_SERD_OUT0_ASSIGN, 0x00);	// serdes-0 = lane 0
	ad9680_spi_write(AD9680_REG_JESD204B_LANE_SERD_OUT1_ASSIGN, 0x11);	// serdes-1 = lane 1
	ad9680_spi_write(AD9680_REG_JESD204B_LANE_SERD_OUT2_ASSIGN, 0x22);	// serdes-2 = lane 2
	ad9680_spi_write(AD9680_REG_JESD204B_LANE_SERD_OUT3_ASSIGN, 0x33);	// serdes-3 = lane 3
	mdelay(20);

	ad9680_spi_read(AD9680_REG_CHIP_ID_LOW, &chip_id);
	if(chip_id != AD9680_CHIP_ID)
	{
		xil_printf("Error: Invalid CHIP ID (0x%x).\n", chip_id);
		return -1;
	}

	ad9680_spi_read(AD9680_REG_JESD204B_PLL_LOCK_STATUS, &pll_stat);
	xil_printf("AD9680 PLL is %s.\n", pll_stat & 0x80 ? "locked" : "unlocked");

	xil_printf("AD9680 successfully initialized.\n");

	return 0;
}
