-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Sat Oct 17 14:15:36 2015
-- Host        : Najib-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Najib/Desktop/Projet_INF3995/tp2Code/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_core_0/system_axi_hdmi_core_0_stub.vhdl
-- Design      : system_axi_hdmi_core_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_axi_hdmi_core_0 is
  Port ( 
    hdmi_clk : in STD_LOGIC;
    hdmi_out_clk : out STD_LOGIC;
    hdmi_16_hsync : out STD_LOGIC;
    hdmi_16_vsync : out STD_LOGIC;
    hdmi_16_data_e : out STD_LOGIC;
    hdmi_16_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_16_es_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_24_hsync : out STD_LOGIC;
    hdmi_24_vsync : out STD_LOGIC;
    hdmi_24_data_e : out STD_LOGIC;
    hdmi_24_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hdmi_36_hsync : out STD_LOGIC;
    hdmi_36_vsync : out STD_LOGIC;
    hdmi_36_data_e : out STD_LOGIC;
    hdmi_36_data : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axis_mm2s_clk : in STD_LOGIC;
    m_axis_mm2s_fsync : out STD_LOGIC;
    m_axis_mm2s_fsync_ret : in STD_LOGIC;
    m_axis_mm2s_tvalid : in STD_LOGIC;
    m_axis_mm2s_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_mm2s_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_tlast : in STD_LOGIC;
    m_axis_mm2s_tready : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC
  );

end system_axi_hdmi_core_0;

architecture stub of system_axi_hdmi_core_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hdmi_clk,hdmi_out_clk,hdmi_16_hsync,hdmi_16_vsync,hdmi_16_data_e,hdmi_16_data[15:0],hdmi_16_es_data[15:0],hdmi_24_hsync,hdmi_24_vsync,hdmi_24_data_e,hdmi_24_data[23:0],hdmi_36_hsync,hdmi_36_vsync,hdmi_36_data_e,hdmi_36_data[35:0],m_axis_mm2s_clk,m_axis_mm2s_fsync,m_axis_mm2s_fsync_ret,m_axis_mm2s_tvalid,m_axis_mm2s_tdata[63:0],m_axis_mm2s_tkeep[7:0],m_axis_mm2s_tlast,m_axis_mm2s_tready,s_axi_aclk,s_axi_aresetn,s_axi_awvalid,s_axi_awaddr[31:0],s_axi_awready,s_axi_wvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_bvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_arvalid,s_axi_araddr[31:0],s_axi_arready,s_axi_rvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_hdmi_tx,Vivado 2015.2.1";
begin
end;
