//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Tue Sep 01 12:27:05 2015
//Host        : L3712-21 running 64-bit major release  (build 9200)
//Command     : generate_target essai1_wrapper.bd
//Design      : essai1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module essai1_wrapper
   (leds_8bits_tri_o,
    sws_8bits_tri_i,
    sys_clock);
  output [7:0]leds_8bits_tri_o;
  input [7:0]sws_8bits_tri_i;
  input sys_clock;

  wire [7:0]leds_8bits_tri_o;
  wire [7:0]sws_8bits_tri_i;
  wire sys_clock;

  essai1 essai1_i
       (.leds_8bits_tri_o(leds_8bits_tri_o),
        .sws_8bits_tri_i(sws_8bits_tri_i),
        .sys_clock(sys_clock));
endmodule
