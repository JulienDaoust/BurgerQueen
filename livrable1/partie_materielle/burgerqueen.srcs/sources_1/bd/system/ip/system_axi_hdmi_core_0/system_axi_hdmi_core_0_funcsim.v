// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Sat Oct 17 14:15:36 2015
// Host        : Najib-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Najib/Desktop/Projet_INF3995/tp2Code/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_core_0/system_axi_hdmi_core_0_funcsim.v
// Design      : system_axi_hdmi_core_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_hdmi_core_0,axi_hdmi_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_hdmi_tx,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module system_axi_hdmi_core_0
   (hdmi_clk,
    hdmi_out_clk,
    hdmi_16_hsync,
    hdmi_16_vsync,
    hdmi_16_data_e,
    hdmi_16_data,
    hdmi_16_es_data,
    hdmi_24_hsync,
    hdmi_24_vsync,
    hdmi_24_data_e,
    hdmi_24_data,
    hdmi_36_hsync,
    hdmi_36_vsync,
    hdmi_36_data_e,
    hdmi_36_data,
    m_axis_mm2s_clk,
    m_axis_mm2s_fsync,
    m_axis_mm2s_fsync_ret,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tlast,
    m_axis_mm2s_tready,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_rvalid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_clk CLK" *) input hdmi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_out_clk CLK" *) output hdmi_out_clk;
  output hdmi_16_hsync;
  output hdmi_16_vsync;
  output hdmi_16_data_e;
  output [15:0]hdmi_16_data;
  output [15:0]hdmi_16_es_data;
  output hdmi_24_hsync;
  output hdmi_24_vsync;
  output hdmi_24_data_e;
  output [23:0]hdmi_24_data;
  output hdmi_36_hsync;
  output hdmi_36_vsync;
  output hdmi_36_data_e;
  output [35:0]hdmi_36_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_mm2s_clk CLK" *) input m_axis_mm2s_clk;
  output m_axis_mm2s_fsync;
  input m_axis_mm2s_fsync_ret;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TVALID" *) input m_axis_mm2s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TDATA" *) input [63:0]m_axis_mm2s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TKEEP" *) input [7:0]m_axis_mm2s_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TLAST" *) input m_axis_mm2s_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TREADY" *) output m_axis_mm2s_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;

  wire \<const0> ;
  wire [15:0]hdmi_16_data;
  wire hdmi_16_data_e;
  wire [15:0]hdmi_16_es_data;
  wire hdmi_16_hsync;
  wire hdmi_16_vsync;
  wire [31:0]\^hdmi_36_data ;
  wire hdmi_36_data_e;
  wire hdmi_36_hsync;
  wire hdmi_36_vsync;
  wire hdmi_clk;
  wire hdmi_out_clk;
  wire m_axis_mm2s_clk;
  wire m_axis_mm2s_fsync;
  wire m_axis_mm2s_fsync_ret;
  wire [63:0]m_axis_mm2s_tdata;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign hdmi_24_data[23:20] = \^hdmi_36_data [27:24];
  assign hdmi_24_data[19:16] = \^hdmi_36_data [31:28];
  assign hdmi_24_data[15:12] = \^hdmi_36_data [15:12];
  assign hdmi_24_data[11:8] = \^hdmi_36_data [19:16];
  assign hdmi_24_data[7:4] = \^hdmi_36_data [3:0];
  assign hdmi_24_data[3:0] = \^hdmi_36_data [7:4];
  assign hdmi_24_data_e = hdmi_36_data_e;
  assign hdmi_24_hsync = hdmi_36_hsync;
  assign hdmi_24_vsync = hdmi_36_vsync;
  assign hdmi_36_data[35:32] = \^hdmi_36_data [27:24];
  assign hdmi_36_data[31:24] = \^hdmi_36_data [31:24];
  assign hdmi_36_data[23:20] = \^hdmi_36_data [15:12];
  assign hdmi_36_data[19:12] = \^hdmi_36_data [19:12];
  assign hdmi_36_data[11:8] = \^hdmi_36_data [3:0];
  assign hdmi_36_data[7:0] = \^hdmi_36_data [7:0];
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_axi_hdmi_core_0_axi_hdmi_tx inst
       (.hdmi_16_data(hdmi_16_data),
        .hdmi_16_data_e(hdmi_16_data_e),
        .hdmi_16_es_data(hdmi_16_es_data),
        .hdmi_16_hsync(hdmi_16_hsync),
        .hdmi_16_vsync(hdmi_16_vsync),
        .hdmi_36_data({\^hdmi_36_data [27:24],\^hdmi_36_data [31:28],\^hdmi_36_data [15:12],\^hdmi_36_data [19:16],\^hdmi_36_data [3:0],\^hdmi_36_data [7:4]}),
        .hdmi_36_data_e(hdmi_36_data_e),
        .hdmi_36_hsync(hdmi_36_hsync),
        .hdmi_36_vsync(hdmi_36_vsync),
        .hdmi_clk(hdmi_clk),
        .hdmi_out_clk(hdmi_out_clk),
        .m_axis_mm2s_clk(m_axis_mm2s_clk),
        .m_axis_mm2s_fsync(m_axis_mm2s_fsync),
        .m_axis_mm2s_fsync_ret(m_axis_mm2s_fsync_ret),
        .m_axis_mm2s_tdata({m_axis_mm2s_tdata[55:32],m_axis_mm2s_tdata[23:0]}),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[15:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[15:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_13
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_14
   (\p1_data_2_reg[23] ,
    Q,
    hdmi_clk);
  output [23:0]\p1_data_2_reg[23] ;
  input [7:0]Q;
  input hdmi_clk;

  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire [23:0]\p1_data_2_reg[23] ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,\p1_data_2_reg[23] ,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_15
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_3
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_4
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_7
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_8
   (O72,
    Q,
    hdmi_clk,
    sign_p,
    S);
  output [24:0]O72;
  input [7:0]Q;
  input hdmi_clk;
  input sign_p;
  input [0:0]S;

  wire [24:0]O72;
  wire [7:0]Q;
  wire [0:0]S;
  wire [23:0]data_2_m_s;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \p1_data_2[11]_i_2_n_0 ;
  wire \p1_data_2[11]_i_3_n_0 ;
  wire \p1_data_2[11]_i_4_n_0 ;
  wire \p1_data_2[11]_i_5_n_0 ;
  wire \p1_data_2[15]_i_2_n_0 ;
  wire \p1_data_2[15]_i_3_n_0 ;
  wire \p1_data_2[15]_i_4_n_0 ;
  wire \p1_data_2[15]_i_5_n_0 ;
  wire \p1_data_2[19]_i_2_n_0 ;
  wire \p1_data_2[19]_i_3_n_0 ;
  wire \p1_data_2[19]_i_4_n_0 ;
  wire \p1_data_2[19]_i_5_n_0 ;
  wire \p1_data_2[23]_i_2_n_0 ;
  wire \p1_data_2[23]_i_3_n_0 ;
  wire \p1_data_2[23]_i_4_n_0 ;
  wire \p1_data_2[23]_i_5_n_0 ;
  wire \p1_data_2[3]_i_2_n_0 ;
  wire \p1_data_2[3]_i_3_n_0 ;
  wire \p1_data_2[3]_i_4_n_0 ;
  wire \p1_data_2[3]_i_5_n_0 ;
  wire \p1_data_2[7]_i_2_n_0 ;
  wire \p1_data_2[7]_i_3_n_0 ;
  wire \p1_data_2[7]_i_4_n_0 ;
  wire \p1_data_2[7]_i_5_n_0 ;
  wire \p1_data_2_reg[11]_i_1_n_0 ;
  wire \p1_data_2_reg[11]_i_1_n_1 ;
  wire \p1_data_2_reg[11]_i_1_n_2 ;
  wire \p1_data_2_reg[11]_i_1_n_3 ;
  wire \p1_data_2_reg[15]_i_1_n_0 ;
  wire \p1_data_2_reg[15]_i_1_n_1 ;
  wire \p1_data_2_reg[15]_i_1_n_2 ;
  wire \p1_data_2_reg[15]_i_1_n_3 ;
  wire \p1_data_2_reg[19]_i_1_n_0 ;
  wire \p1_data_2_reg[19]_i_1_n_1 ;
  wire \p1_data_2_reg[19]_i_1_n_2 ;
  wire \p1_data_2_reg[19]_i_1_n_3 ;
  wire \p1_data_2_reg[23]_i_1_n_0 ;
  wire \p1_data_2_reg[23]_i_1_n_1 ;
  wire \p1_data_2_reg[23]_i_1_n_2 ;
  wire \p1_data_2_reg[23]_i_1_n_3 ;
  wire \p1_data_2_reg[3]_i_1_n_0 ;
  wire \p1_data_2_reg[3]_i_1_n_1 ;
  wire \p1_data_2_reg[3]_i_1_n_2 ;
  wire \p1_data_2_reg[3]_i_1_n_3 ;
  wire \p1_data_2_reg[7]_i_1_n_0 ;
  wire \p1_data_2_reg[7]_i_1_n_1 ;
  wire \p1_data_2_reg[7]_i_1_n_2 ;
  wire \p1_data_2_reg[7]_i_1_n_3 ;
  wire sign_p;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;
  wire [3:0]\NLW_p1_data_2_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p1_data_2_reg[24]_i_1_O_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,data_2_m_s,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_2 
       (.I0(sign_p),
        .I1(data_2_m_s[11]),
        .O(\p1_data_2[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_3 
       (.I0(sign_p),
        .I1(data_2_m_s[10]),
        .O(\p1_data_2[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_4 
       (.I0(sign_p),
        .I1(data_2_m_s[9]),
        .O(\p1_data_2[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_5 
       (.I0(sign_p),
        .I1(data_2_m_s[8]),
        .O(\p1_data_2[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_2 
       (.I0(sign_p),
        .I1(data_2_m_s[15]),
        .O(\p1_data_2[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_3 
       (.I0(sign_p),
        .I1(data_2_m_s[14]),
        .O(\p1_data_2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_4 
       (.I0(sign_p),
        .I1(data_2_m_s[13]),
        .O(\p1_data_2[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_5 
       (.I0(sign_p),
        .I1(data_2_m_s[12]),
        .O(\p1_data_2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_2 
       (.I0(sign_p),
        .I1(data_2_m_s[19]),
        .O(\p1_data_2[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_3 
       (.I0(sign_p),
        .I1(data_2_m_s[18]),
        .O(\p1_data_2[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_4 
       (.I0(sign_p),
        .I1(data_2_m_s[17]),
        .O(\p1_data_2[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_5 
       (.I0(sign_p),
        .I1(data_2_m_s[16]),
        .O(\p1_data_2[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_2 
       (.I0(sign_p),
        .I1(data_2_m_s[23]),
        .O(\p1_data_2[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_3 
       (.I0(sign_p),
        .I1(data_2_m_s[22]),
        .O(\p1_data_2[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_4 
       (.I0(sign_p),
        .I1(data_2_m_s[21]),
        .O(\p1_data_2[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_5 
       (.I0(sign_p),
        .I1(data_2_m_s[20]),
        .O(\p1_data_2[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_2 
       (.I0(sign_p),
        .I1(data_2_m_s[3]),
        .O(\p1_data_2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_3 
       (.I0(sign_p),
        .I1(data_2_m_s[2]),
        .O(\p1_data_2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_4 
       (.I0(sign_p),
        .I1(data_2_m_s[1]),
        .O(\p1_data_2[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_5 
       (.I0(sign_p),
        .I1(data_2_m_s[0]),
        .O(\p1_data_2[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_2 
       (.I0(sign_p),
        .I1(data_2_m_s[7]),
        .O(\p1_data_2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_3 
       (.I0(sign_p),
        .I1(data_2_m_s[6]),
        .O(\p1_data_2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_4 
       (.I0(sign_p),
        .I1(data_2_m_s[5]),
        .O(\p1_data_2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_5 
       (.I0(sign_p),
        .I1(data_2_m_s[4]),
        .O(\p1_data_2[7]_i_5_n_0 ));
  CARRY4 \p1_data_2_reg[11]_i_1 
       (.CI(\p1_data_2_reg[7]_i_1_n_0 ),
        .CO({\p1_data_2_reg[11]_i_1_n_0 ,\p1_data_2_reg[11]_i_1_n_1 ,\p1_data_2_reg[11]_i_1_n_2 ,\p1_data_2_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O72[11:8]),
        .S({\p1_data_2[11]_i_2_n_0 ,\p1_data_2[11]_i_3_n_0 ,\p1_data_2[11]_i_4_n_0 ,\p1_data_2[11]_i_5_n_0 }));
  CARRY4 \p1_data_2_reg[15]_i_1 
       (.CI(\p1_data_2_reg[11]_i_1_n_0 ),
        .CO({\p1_data_2_reg[15]_i_1_n_0 ,\p1_data_2_reg[15]_i_1_n_1 ,\p1_data_2_reg[15]_i_1_n_2 ,\p1_data_2_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O72[15:12]),
        .S({\p1_data_2[15]_i_2_n_0 ,\p1_data_2[15]_i_3_n_0 ,\p1_data_2[15]_i_4_n_0 ,\p1_data_2[15]_i_5_n_0 }));
  CARRY4 \p1_data_2_reg[19]_i_1 
       (.CI(\p1_data_2_reg[15]_i_1_n_0 ),
        .CO({\p1_data_2_reg[19]_i_1_n_0 ,\p1_data_2_reg[19]_i_1_n_1 ,\p1_data_2_reg[19]_i_1_n_2 ,\p1_data_2_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O72[19:16]),
        .S({\p1_data_2[19]_i_2_n_0 ,\p1_data_2[19]_i_3_n_0 ,\p1_data_2[19]_i_4_n_0 ,\p1_data_2[19]_i_5_n_0 }));
  CARRY4 \p1_data_2_reg[23]_i_1 
       (.CI(\p1_data_2_reg[19]_i_1_n_0 ),
        .CO({\p1_data_2_reg[23]_i_1_n_0 ,\p1_data_2_reg[23]_i_1_n_1 ,\p1_data_2_reg[23]_i_1_n_2 ,\p1_data_2_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O72[23:20]),
        .S({\p1_data_2[23]_i_2_n_0 ,\p1_data_2[23]_i_3_n_0 ,\p1_data_2[23]_i_4_n_0 ,\p1_data_2[23]_i_5_n_0 }));
  CARRY4 \p1_data_2_reg[24]_i_1 
       (.CI(\p1_data_2_reg[23]_i_1_n_0 ),
        .CO(\NLW_p1_data_2_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p1_data_2_reg[24]_i_1_O_UNCONNECTED [3:1],O72[24]}),
        .S({1'b0,1'b0,1'b0,S}));
  CARRY4 \p1_data_2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p1_data_2_reg[3]_i_1_n_0 ,\p1_data_2_reg[3]_i_1_n_1 ,\p1_data_2_reg[3]_i_1_n_2 ,\p1_data_2_reg[3]_i_1_n_3 }),
        .CYINIT(sign_p),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O72[3:0]),
        .S({\p1_data_2[3]_i_2_n_0 ,\p1_data_2[3]_i_3_n_0 ,\p1_data_2[3]_i_4_n_0 ,\p1_data_2[3]_i_5_n_0 }));
  CARRY4 \p1_data_2_reg[7]_i_1 
       (.CI(\p1_data_2_reg[3]_i_1_n_0 ),
        .CO({\p1_data_2_reg[7]_i_1_n_0 ,\p1_data_2_reg[7]_i_1_n_1 ,\p1_data_2_reg[7]_i_1_n_2 ,\p1_data_2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O72[7:4]),
        .S({\p1_data_2[7]_i_2_n_0 ,\p1_data_2[7]_i_3_n_0 ,\p1_data_2[7]_i_4_n_0 ,\p1_data_2[7]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "MULT_MACRO" *) 
module system_axi_hdmi_core_0_MULT_MACRO_9
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire \dsp_v5_1.DSP48_V5_1_n_60 ;
  wire \dsp_v5_1.DSP48_V5_1_n_61 ;
  wire hdmi_clk;
  wire \NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED ;
  wire [47:0]\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "DSP48E" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \dsp_v5_1.DSP48_V5_1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_dsp_v5_1.DSP48_V5_1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_dsp_v5_1.DSP48_V5_1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_dsp_v5_1.DSP48_V5_1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b1),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b1),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(hdmi_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_dsp_v5_1.DSP48_V5_1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [47:43],\dsp_v5_1.DSP48_V5_1_n_60 ,\dsp_v5_1.DSP48_V5_1_n_61 ,P,\NLW_dsp_v5_1.DSP48_V5_1_P_UNCONNECTED [16:0]}),
        .PATTERNBDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_dsp_v5_1.DSP48_V5_1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_dsp_v5_1.DSP48_V5_1_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_dsp_v5_1.DSP48_V5_1_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "ad_csc_1" *) 
module system_axi_hdmi_core_0_ad_csc_1
   (p1_data_4,
    hdmi_24_hsync_reg,
    hdmi_24_vsync_reg,
    hdmi_24_data_e_reg,
    hdmi_es_vs_de_reg,
    hdmi_es_hs_de_reg,
    \hdmi_24_data_reg[23] ,
    O73,
    O74,
    hdmi_clk,
    hdmi_hsync,
    hdmi_vsync,
    hdmi_hsync_data_e,
    hdmi_vsync_data_e,
    hdmi_data_e,
    Q,
    \bbstub_P[40] ,
    P,
    \d_data_cntrl_reg[186] );
  output [0:0]p1_data_4;
  output hdmi_24_hsync_reg;
  output hdmi_24_vsync_reg;
  output hdmi_24_data_e_reg;
  output hdmi_es_vs_de_reg;
  output hdmi_es_hs_de_reg;
  output [7:0]\hdmi_24_data_reg[23] ;
  output [24:0]O73;
  output [24:0]O74;
  input hdmi_clk;
  input hdmi_hsync;
  input hdmi_vsync;
  input hdmi_hsync_data_e;
  input hdmi_vsync_data_e;
  input hdmi_data_e;
  input [23:0]Q;
  input [23:0]\bbstub_P[40] ;
  input [23:0]P;
  input [0:0]\d_data_cntrl_reg[186] ;

  wire [24:0]O73;
  wire [24:0]O74;
  wire [23:0]P;
  wire [23:0]Q;
  wire [23:0]\bbstub_P[40] ;
  wire [0:0]\d_data_cntrl_reg[186] ;
  wire [23:0]data_1_m_s;
  wire [23:0]data_3_m_s;
  wire hdmi_24_data_e_reg;
  wire [7:0]\hdmi_24_data_reg[23] ;
  wire hdmi_24_hsync_reg;
  wire hdmi_24_vsync_reg;
  wire hdmi_clk;
  wire hdmi_data_e;
  wire hdmi_es_hs_de_reg;
  wire hdmi_es_vs_de_reg;
  wire hdmi_hsync;
  wire hdmi_hsync_data_e;
  wire hdmi_vsync;
  wire hdmi_vsync_data_e;
  wire i_mul_c2_n_0;
  wire i_mul_c2_n_1;
  wire i_mul_c2_n_10;
  wire i_mul_c2_n_11;
  wire i_mul_c2_n_12;
  wire i_mul_c2_n_13;
  wire i_mul_c2_n_14;
  wire i_mul_c2_n_15;
  wire i_mul_c2_n_16;
  wire i_mul_c2_n_17;
  wire i_mul_c2_n_18;
  wire i_mul_c2_n_19;
  wire i_mul_c2_n_2;
  wire i_mul_c2_n_20;
  wire i_mul_c2_n_21;
  wire i_mul_c2_n_22;
  wire i_mul_c2_n_23;
  wire i_mul_c2_n_24;
  wire i_mul_c2_n_25;
  wire i_mul_c2_n_26;
  wire i_mul_c2_n_27;
  wire i_mul_c2_n_28;
  wire i_mul_c2_n_29;
  wire i_mul_c2_n_3;
  wire i_mul_c2_n_30;
  wire i_mul_c2_n_31;
  wire i_mul_c2_n_32;
  wire i_mul_c2_n_33;
  wire i_mul_c2_n_34;
  wire i_mul_c2_n_35;
  wire i_mul_c2_n_36;
  wire i_mul_c2_n_37;
  wire i_mul_c2_n_38;
  wire i_mul_c2_n_39;
  wire i_mul_c2_n_4;
  wire i_mul_c2_n_40;
  wire i_mul_c2_n_41;
  wire i_mul_c2_n_42;
  wire i_mul_c2_n_43;
  wire i_mul_c2_n_44;
  wire i_mul_c2_n_45;
  wire i_mul_c2_n_46;
  wire i_mul_c2_n_47;
  wire i_mul_c2_n_48;
  wire i_mul_c2_n_49;
  wire i_mul_c2_n_5;
  wire i_mul_c2_n_6;
  wire i_mul_c2_n_7;
  wire i_mul_c2_n_8;
  wire i_mul_c2_n_9;
  wire [0:0]p1_data_4;

  system_axi_hdmi_core_0_ad_csc_1_add i_add_c4
       (.D({i_mul_c2_n_0,i_mul_c2_n_1,i_mul_c2_n_2,i_mul_c2_n_3,i_mul_c2_n_4,i_mul_c2_n_5,i_mul_c2_n_6,i_mul_c2_n_7,i_mul_c2_n_8,i_mul_c2_n_9,i_mul_c2_n_10,i_mul_c2_n_11,i_mul_c2_n_12,i_mul_c2_n_13,i_mul_c2_n_14,i_mul_c2_n_15,i_mul_c2_n_16,i_mul_c2_n_17,i_mul_c2_n_18,i_mul_c2_n_19,i_mul_c2_n_20,i_mul_c2_n_21,i_mul_c2_n_22,i_mul_c2_n_23,i_mul_c2_n_24}),
        .O72({i_mul_c2_n_25,i_mul_c2_n_26,i_mul_c2_n_27,i_mul_c2_n_28,i_mul_c2_n_29,i_mul_c2_n_30,i_mul_c2_n_31,i_mul_c2_n_32,i_mul_c2_n_33,i_mul_c2_n_34,i_mul_c2_n_35,i_mul_c2_n_36,i_mul_c2_n_37,i_mul_c2_n_38,i_mul_c2_n_39,i_mul_c2_n_40,i_mul_c2_n_41,i_mul_c2_n_42,i_mul_c2_n_43,i_mul_c2_n_44,i_mul_c2_n_45,i_mul_c2_n_46,i_mul_c2_n_47,i_mul_c2_n_48,i_mul_c2_n_49}),
        .\bbstub_P[40] (data_1_m_s),
        .\d_data_cntrl_reg[186] (\d_data_cntrl_reg[186] ),
        .hdmi_24_data_e_reg(hdmi_24_data_e_reg),
        .\hdmi_24_data_reg[23] (\hdmi_24_data_reg[23] ),
        .hdmi_24_hsync_reg(hdmi_24_hsync_reg),
        .hdmi_24_vsync_reg(hdmi_24_vsync_reg),
        .hdmi_clk(hdmi_clk),
        .hdmi_data_e(hdmi_data_e),
        .hdmi_es_hs_de_reg(hdmi_es_hs_de_reg),
        .hdmi_es_vs_de_reg(hdmi_es_vs_de_reg),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_hsync_data_e(hdmi_hsync_data_e),
        .hdmi_vsync(hdmi_vsync),
        .hdmi_vsync_data_e(hdmi_vsync_data_e),
        .p1_data_4(p1_data_4));
  system_axi_hdmi_core_0_ad_csc_1_mul_5 i_mul_c1
       (.P(data_1_m_s),
        .Q(Q[23:16]),
        .hdmi_clk(hdmi_clk));
  system_axi_hdmi_core_0_ad_csc_1_mul_6 i_mul_c2
       (.D({i_mul_c2_n_0,i_mul_c2_n_1,i_mul_c2_n_2,i_mul_c2_n_3,i_mul_c2_n_4,i_mul_c2_n_5,i_mul_c2_n_6,i_mul_c2_n_7,i_mul_c2_n_8,i_mul_c2_n_9,i_mul_c2_n_10,i_mul_c2_n_11,i_mul_c2_n_12,i_mul_c2_n_13,i_mul_c2_n_14,i_mul_c2_n_15,i_mul_c2_n_16,i_mul_c2_n_17,i_mul_c2_n_18,i_mul_c2_n_19,i_mul_c2_n_20,i_mul_c2_n_21,i_mul_c2_n_22,i_mul_c2_n_23,i_mul_c2_n_24}),
        .O72({i_mul_c2_n_25,i_mul_c2_n_26,i_mul_c2_n_27,i_mul_c2_n_28,i_mul_c2_n_29,i_mul_c2_n_30,i_mul_c2_n_31,i_mul_c2_n_32,i_mul_c2_n_33,i_mul_c2_n_34,i_mul_c2_n_35,i_mul_c2_n_36,i_mul_c2_n_37,i_mul_c2_n_38,i_mul_c2_n_39,i_mul_c2_n_40,i_mul_c2_n_41,i_mul_c2_n_42,i_mul_c2_n_43,i_mul_c2_n_44,i_mul_c2_n_45,i_mul_c2_n_46,i_mul_c2_n_47,i_mul_c2_n_48,i_mul_c2_n_49}),
        .O73(O73),
        .O74(O74),
        .P(data_3_m_s),
        .Q(Q[15:8]),
        .\bbstub_P[40] (\bbstub_P[40] ),
        .\bbstub_P[40]_0 (P),
        .hdmi_clk(hdmi_clk));
  system_axi_hdmi_core_0_ad_csc_1_mul__parameterized0 i_mul_c3
       (.P(data_3_m_s),
        .Q(Q[7:0]),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1" *) 
module system_axi_hdmi_core_0_ad_csc_1__parameterized0
   (\hdmi_24_data_reg[15] ,
    Q,
    hdmi_clk);
  output [7:0]\hdmi_24_data_reg[15] ;
  input [23:0]Q;
  input hdmi_clk;

  wire [23:0]Q;
  wire [23:0]data_1_m_s;
  wire [23:0]data_2_m_s;
  wire [23:0]data_3_m_s;
  wire [7:0]\hdmi_24_data_reg[15] ;
  wire hdmi_clk;

  system_axi_hdmi_core_0_ad_csc_1_add__parameterized0 i_add_c4
       (.D(data_3_m_s),
        .\bbstub_P[40] (data_2_m_s),
        .\bbstub_P[40]_0 (data_1_m_s),
        .\hdmi_24_data_reg[15] (\hdmi_24_data_reg[15] ),
        .hdmi_clk(hdmi_clk));
  system_axi_hdmi_core_0_ad_csc_1_mul i_mul_c1
       (.P(data_1_m_s),
        .Q(Q[23:16]),
        .hdmi_clk(hdmi_clk));
  system_axi_hdmi_core_0_ad_csc_1_mul_1 i_mul_c2
       (.P(data_2_m_s),
        .Q(Q[15:8]),
        .hdmi_clk(hdmi_clk));
  system_axi_hdmi_core_0_ad_csc_1_mul_2 i_mul_c3
       (.P(data_3_m_s),
        .Q(Q[7:0]),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1" *) 
module system_axi_hdmi_core_0_ad_csc_1__parameterized1
   (P,
    \p1_data_2_reg[23] ,
    \hdmi_24_data_reg[7] ,
    Q,
    hdmi_clk,
    O73,
    O74,
    p1_data_4);
  output [23:0]P;
  output [23:0]\p1_data_2_reg[23] ;
  output [7:0]\hdmi_24_data_reg[7] ;
  input [23:0]Q;
  input hdmi_clk;
  input [24:0]O73;
  input [24:0]O74;
  input [0:0]p1_data_4;

  wire [24:0]O73;
  wire [24:0]O74;
  wire [23:0]P;
  wire [23:0]Q;
  wire [23:0]data_3_m_s;
  wire [7:0]\hdmi_24_data_reg[7] ;
  wire hdmi_clk;
  wire [23:0]\p1_data_2_reg[23] ;
  wire [0:0]p1_data_4;

  system_axi_hdmi_core_0_ad_csc_1_add__parameterized1 i_add_c4
       (.D(data_3_m_s),
        .O73(O73),
        .O74(O74),
        .\hdmi_24_data_reg[7] (\hdmi_24_data_reg[7] ),
        .hdmi_clk(hdmi_clk),
        .p1_data_4(p1_data_4));
  system_axi_hdmi_core_0_ad_csc_1_mul_10 i_mul_c1
       (.P(P),
        .Q(Q[23:16]),
        .hdmi_clk(hdmi_clk));
  system_axi_hdmi_core_0_ad_csc_1_mul_11 i_mul_c2
       (.Q(Q[15:8]),
        .hdmi_clk(hdmi_clk),
        .\p1_data_2_reg[23] (\p1_data_2_reg[23] ));
  system_axi_hdmi_core_0_ad_csc_1_mul_12 i_mul_c3
       (.P(data_3_m_s),
        .Q(Q[7:0]),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_add" *) 
module system_axi_hdmi_core_0_ad_csc_1_add
   (p1_data_4,
    hdmi_24_hsync_reg,
    hdmi_24_vsync_reg,
    hdmi_24_data_e_reg,
    hdmi_es_vs_de_reg,
    hdmi_es_hs_de_reg,
    \hdmi_24_data_reg[23] ,
    hdmi_hsync,
    hdmi_clk,
    hdmi_vsync,
    hdmi_hsync_data_e,
    hdmi_vsync_data_e,
    hdmi_data_e,
    \d_data_cntrl_reg[186] ,
    D,
    O72,
    \bbstub_P[40] );
  output [0:0]p1_data_4;
  output hdmi_24_hsync_reg;
  output hdmi_24_vsync_reg;
  output hdmi_24_data_e_reg;
  output hdmi_es_vs_de_reg;
  output hdmi_es_hs_de_reg;
  output [7:0]\hdmi_24_data_reg[23] ;
  input hdmi_hsync;
  input hdmi_clk;
  input hdmi_vsync;
  input hdmi_hsync_data_e;
  input hdmi_vsync_data_e;
  input hdmi_data_e;
  input [0:0]\d_data_cntrl_reg[186] ;
  input [24:0]D;
  input [24:0]O72;
  input [23:0]\bbstub_P[40] ;

  wire [24:0]D;
  wire [24:0]O72;
  wire [23:0]\bbstub_P[40] ;
  wire [0:0]\d_data_cntrl_reg[186] ;
  wire \data_p[0]_i_1_n_0 ;
  wire \data_p[1]_i_1_n_0 ;
  wire \data_p[2]_i_1_n_0 ;
  wire \data_p[3]_i_1_n_0 ;
  wire \data_p[4]_i_1_n_0 ;
  wire \data_p[5]_i_1_n_0 ;
  wire \data_p[6]_i_1_n_0 ;
  wire \data_p[7]_i_1_n_0 ;
  wire \ddata_out_reg_n_0_[0] ;
  wire hdmi_24_data_e_reg;
  wire [7:0]\hdmi_24_data_reg[23] ;
  wire hdmi_24_hsync_reg;
  wire hdmi_24_vsync_reg;
  wire hdmi_clk;
  wire hdmi_csc_hsync_data_e_s;
  wire hdmi_csc_hsync_s;
  wire hdmi_csc_vsync_data_e_s;
  wire hdmi_csc_vsync_s;
  wire hdmi_data_e;
  wire hdmi_es_hs_de_reg;
  wire hdmi_es_vs_de_reg;
  wire hdmi_hsync;
  wire hdmi_hsync_data_e;
  wire hdmi_vsync;
  wire hdmi_vsync_data_e;
  wire [23:0]p1_data_1;
  wire [24:0]p1_data_2;
  wire [24:0]p1_data_3;
  wire [0:0]p1_data_4;
  wire [24:0]p2_data_0;
  wire [24:0]p2_data_00;
  wire \p2_data_0[11]_i_2_n_0 ;
  wire \p2_data_0[11]_i_3_n_0 ;
  wire \p2_data_0[11]_i_4_n_0 ;
  wire \p2_data_0[11]_i_5_n_0 ;
  wire \p2_data_0[15]_i_2_n_0 ;
  wire \p2_data_0[15]_i_3_n_0 ;
  wire \p2_data_0[15]_i_4_n_0 ;
  wire \p2_data_0[15]_i_5_n_0 ;
  wire \p2_data_0[19]_i_2_n_0 ;
  wire \p2_data_0[19]_i_3_n_0 ;
  wire \p2_data_0[19]_i_4_n_0 ;
  wire \p2_data_0[19]_i_5_n_0 ;
  wire \p2_data_0[23]_i_2_n_0 ;
  wire \p2_data_0[23]_i_3_n_0 ;
  wire \p2_data_0[23]_i_4_n_0 ;
  wire \p2_data_0[23]_i_5_n_0 ;
  wire \p2_data_0[24]_i_2_n_0 ;
  wire \p2_data_0[3]_i_2_n_0 ;
  wire \p2_data_0[3]_i_3_n_0 ;
  wire \p2_data_0[3]_i_4_n_0 ;
  wire \p2_data_0[3]_i_5_n_0 ;
  wire \p2_data_0[7]_i_2_n_0 ;
  wire \p2_data_0[7]_i_3_n_0 ;
  wire \p2_data_0[7]_i_4_n_0 ;
  wire \p2_data_0[7]_i_5_n_0 ;
  wire \p2_data_0_reg[11]_i_1_n_0 ;
  wire \p2_data_0_reg[11]_i_1_n_1 ;
  wire \p2_data_0_reg[11]_i_1_n_2 ;
  wire \p2_data_0_reg[11]_i_1_n_3 ;
  wire \p2_data_0_reg[15]_i_1_n_0 ;
  wire \p2_data_0_reg[15]_i_1_n_1 ;
  wire \p2_data_0_reg[15]_i_1_n_2 ;
  wire \p2_data_0_reg[15]_i_1_n_3 ;
  wire \p2_data_0_reg[19]_i_1_n_0 ;
  wire \p2_data_0_reg[19]_i_1_n_1 ;
  wire \p2_data_0_reg[19]_i_1_n_2 ;
  wire \p2_data_0_reg[19]_i_1_n_3 ;
  wire \p2_data_0_reg[23]_i_1_n_0 ;
  wire \p2_data_0_reg[23]_i_1_n_1 ;
  wire \p2_data_0_reg[23]_i_1_n_2 ;
  wire \p2_data_0_reg[23]_i_1_n_3 ;
  wire \p2_data_0_reg[3]_i_1_n_0 ;
  wire \p2_data_0_reg[3]_i_1_n_1 ;
  wire \p2_data_0_reg[3]_i_1_n_2 ;
  wire \p2_data_0_reg[3]_i_1_n_3 ;
  wire \p2_data_0_reg[7]_i_1_n_0 ;
  wire \p2_data_0_reg[7]_i_1_n_1 ;
  wire \p2_data_0_reg[7]_i_1_n_2 ;
  wire \p2_data_0_reg[7]_i_1_n_3 ;
  wire [24:0]p2_data_1;
  wire [24:19]p2_data_10;
  wire \p2_data_1[22]_i_2_n_0 ;
  wire \p2_data_1[22]_i_3_n_0 ;
  wire \p2_data_1[22]_i_4_n_0 ;
  wire \p2_data_1[22]_i_5_n_0 ;
  wire \p2_data_1[24]_i_2_n_0 ;
  wire \p2_data_1[24]_i_3_n_0 ;
  wire \p2_data_1_reg[22]_i_1_n_0 ;
  wire \p2_data_1_reg[22]_i_1_n_1 ;
  wire \p2_data_1_reg[22]_i_1_n_2 ;
  wire \p2_data_1_reg[22]_i_1_n_3 ;
  wire \p2_data_1_reg[24]_i_1_n_3 ;
  wire [24:12]p3_data0;
  wire \p3_data[15]_i_10_n_0 ;
  wire \p3_data[15]_i_11_n_0 ;
  wire \p3_data[15]_i_13_n_0 ;
  wire \p3_data[15]_i_14_n_0 ;
  wire \p3_data[15]_i_15_n_0 ;
  wire \p3_data[15]_i_16_n_0 ;
  wire \p3_data[15]_i_17_n_0 ;
  wire \p3_data[15]_i_18_n_0 ;
  wire \p3_data[15]_i_19_n_0 ;
  wire \p3_data[15]_i_20_n_0 ;
  wire \p3_data[15]_i_3_n_0 ;
  wire \p3_data[15]_i_4_n_0 ;
  wire \p3_data[15]_i_5_n_0 ;
  wire \p3_data[15]_i_6_n_0 ;
  wire \p3_data[15]_i_8_n_0 ;
  wire \p3_data[15]_i_9_n_0 ;
  wire \p3_data[19]_i_2_n_0 ;
  wire \p3_data[19]_i_3_n_0 ;
  wire \p3_data[19]_i_4_n_0 ;
  wire \p3_data[19]_i_5_n_0 ;
  wire \p3_data[23]_i_2_n_0 ;
  wire \p3_data[23]_i_3_n_0 ;
  wire \p3_data[23]_i_4_n_0 ;
  wire \p3_data[23]_i_5_n_0 ;
  wire \p3_data[24]_i_2_n_0 ;
  wire \p3_data_reg[15]_i_12_n_0 ;
  wire \p3_data_reg[15]_i_12_n_1 ;
  wire \p3_data_reg[15]_i_12_n_2 ;
  wire \p3_data_reg[15]_i_12_n_3 ;
  wire \p3_data_reg[15]_i_1_n_0 ;
  wire \p3_data_reg[15]_i_1_n_1 ;
  wire \p3_data_reg[15]_i_1_n_2 ;
  wire \p3_data_reg[15]_i_1_n_3 ;
  wire \p3_data_reg[15]_i_2_n_0 ;
  wire \p3_data_reg[15]_i_2_n_1 ;
  wire \p3_data_reg[15]_i_2_n_2 ;
  wire \p3_data_reg[15]_i_2_n_3 ;
  wire \p3_data_reg[15]_i_7_n_0 ;
  wire \p3_data_reg[15]_i_7_n_1 ;
  wire \p3_data_reg[15]_i_7_n_2 ;
  wire \p3_data_reg[15]_i_7_n_3 ;
  wire \p3_data_reg[19]_i_1_n_0 ;
  wire \p3_data_reg[19]_i_1_n_1 ;
  wire \p3_data_reg[19]_i_1_n_2 ;
  wire \p3_data_reg[19]_i_1_n_3 ;
  wire \p3_data_reg[23]_i_1_n_0 ;
  wire \p3_data_reg[23]_i_1_n_1 ;
  wire \p3_data_reg[23]_i_1_n_2 ;
  wire \p3_data_reg[23]_i_1_n_3 ;
  wire \p3_data_reg_n_0_[20] ;
  wire \p3_data_reg_n_0_[21] ;
  wire \p3_data_reg_n_0_[22] ;
  wire \p3_data_reg_n_0_[23] ;
  wire \p3_ddata_reg[0]_srl6_n_0 ;
  wire \p3_ddata_reg[1]_srl6_n_0 ;
  wire \p3_ddata_reg[2]_srl6_n_0 ;
  wire \p3_ddata_reg[3]_srl6_n_0 ;
  wire \p3_ddata_reg[4]_srl6_n_0 ;
  wire p_1_in__0;
  wire [7:0]p_2_in__0;
  wire [3:0]\NLW_p2_data_0_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p2_data_0_reg[24]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_p2_data_1_reg[22]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_p2_data_1_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p3_data_reg[24]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[0]_i_1 
       (.I0(p_2_in__0[0]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[1]_i_1 
       (.I0(p_2_in__0[1]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[2]_i_1 
       (.I0(p_2_in__0[2]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[3]_i_1 
       (.I0(p_2_in__0[3]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[4]_i_1 
       (.I0(p_2_in__0[4]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[5]_i_1 
       (.I0(p_2_in__0[5]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[6]_i_1 
       (.I0(p_2_in__0[6]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[7]_i_1 
       (.I0(p_2_in__0[7]),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[0]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [0]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[1]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [1]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[2]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [2]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[3]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [3]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[4]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [4]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[5]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [5]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[6]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [6]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[7]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[23] [7]),
        .R(p_1_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \ddata_out_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_ddata_reg[0]_srl6_n_0 ),
        .Q(\ddata_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ddata_out_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_ddata_reg[1]_srl6_n_0 ),
        .Q(hdmi_csc_vsync_data_e_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ddata_out_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_ddata_reg[2]_srl6_n_0 ),
        .Q(hdmi_csc_hsync_data_e_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ddata_out_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_ddata_reg[3]_srl6_n_0 ),
        .Q(hdmi_csc_vsync_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ddata_out_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_ddata_reg[4]_srl6_n_0 ),
        .Q(hdmi_csc_hsync_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    hdmi_24_data_e_i_1
       (.I0(hdmi_data_e),
        .I1(\d_data_cntrl_reg[186] ),
        .I2(\ddata_out_reg_n_0_[0] ),
        .O(hdmi_24_data_e_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    hdmi_24_hsync_i_1
       (.I0(hdmi_hsync),
        .I1(\d_data_cntrl_reg[186] ),
        .I2(hdmi_csc_hsync_s),
        .O(hdmi_24_hsync_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    hdmi_24_vsync_i_1
       (.I0(hdmi_vsync),
        .I1(\d_data_cntrl_reg[186] ),
        .I2(hdmi_csc_vsync_s),
        .O(hdmi_24_vsync_reg));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [0]),
        .Q(p1_data_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [10]),
        .Q(p1_data_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [11]),
        .Q(p1_data_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [12]),
        .Q(p1_data_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [13]),
        .Q(p1_data_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [14]),
        .Q(p1_data_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [15]),
        .Q(p1_data_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [16]),
        .Q(p1_data_1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [17]),
        .Q(p1_data_1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [18]),
        .Q(p1_data_1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [19]),
        .Q(p1_data_1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [1]),
        .Q(p1_data_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [20]),
        .Q(p1_data_1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [21]),
        .Q(p1_data_1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [22]),
        .Q(p1_data_1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [23]),
        .Q(p1_data_1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [2]),
        .Q(p1_data_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [3]),
        .Q(p1_data_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [4]),
        .Q(p1_data_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [5]),
        .Q(p1_data_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [6]),
        .Q(p1_data_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [7]),
        .Q(p1_data_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [8]),
        .Q(p1_data_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [9]),
        .Q(p1_data_1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[0]),
        .Q(p1_data_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[10]),
        .Q(p1_data_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[11]),
        .Q(p1_data_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[12]),
        .Q(p1_data_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[13]),
        .Q(p1_data_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[14]),
        .Q(p1_data_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[15]),
        .Q(p1_data_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[16]),
        .Q(p1_data_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[17]),
        .Q(p1_data_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[18]),
        .Q(p1_data_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[19]),
        .Q(p1_data_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[1]),
        .Q(p1_data_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[20]),
        .Q(p1_data_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[21]),
        .Q(p1_data_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[22]),
        .Q(p1_data_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[23]),
        .Q(p1_data_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[24]),
        .Q(p1_data_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[2]),
        .Q(p1_data_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[3]),
        .Q(p1_data_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[4]),
        .Q(p1_data_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[5]),
        .Q(p1_data_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[6]),
        .Q(p1_data_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[7]),
        .Q(p1_data_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[8]),
        .Q(p1_data_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O72[9]),
        .Q(p1_data_2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(p1_data_3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(p1_data_3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(p1_data_3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(p1_data_3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(p1_data_3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(p1_data_3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(p1_data_3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(p1_data_3[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(p1_data_3[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(p1_data_3[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(p1_data_3[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p1_data_3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(p1_data_3[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(p1_data_3[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(p1_data_3[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(p1_data_3[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[24]),
        .Q(p1_data_3[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(p1_data_3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(p1_data_3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(p1_data_3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(p1_data_3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(p1_data_3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(p1_data_3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(p1_data_3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(p1_data_3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_4_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p1_data_4),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_2 
       (.I0(p1_data_1[11]),
        .I1(p1_data_2[11]),
        .O(\p2_data_0[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_3 
       (.I0(p1_data_1[10]),
        .I1(p1_data_2[10]),
        .O(\p2_data_0[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_4 
       (.I0(p1_data_1[9]),
        .I1(p1_data_2[9]),
        .O(\p2_data_0[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_5 
       (.I0(p1_data_1[8]),
        .I1(p1_data_2[8]),
        .O(\p2_data_0[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_2 
       (.I0(p1_data_1[15]),
        .I1(p1_data_2[15]),
        .O(\p2_data_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_3 
       (.I0(p1_data_1[14]),
        .I1(p1_data_2[14]),
        .O(\p2_data_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_4 
       (.I0(p1_data_1[13]),
        .I1(p1_data_2[13]),
        .O(\p2_data_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_5 
       (.I0(p1_data_1[12]),
        .I1(p1_data_2[12]),
        .O(\p2_data_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_2 
       (.I0(p1_data_1[19]),
        .I1(p1_data_2[19]),
        .O(\p2_data_0[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_3 
       (.I0(p1_data_1[18]),
        .I1(p1_data_2[18]),
        .O(\p2_data_0[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_4 
       (.I0(p1_data_1[17]),
        .I1(p1_data_2[17]),
        .O(\p2_data_0[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_5 
       (.I0(p1_data_1[16]),
        .I1(p1_data_2[16]),
        .O(\p2_data_0[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_2 
       (.I0(p1_data_1[23]),
        .I1(p1_data_2[23]),
        .O(\p2_data_0[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_3 
       (.I0(p1_data_1[22]),
        .I1(p1_data_2[22]),
        .O(\p2_data_0[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_4 
       (.I0(p1_data_1[21]),
        .I1(p1_data_2[21]),
        .O(\p2_data_0[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_5 
       (.I0(p1_data_1[20]),
        .I1(p1_data_2[20]),
        .O(\p2_data_0[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_0[24]_i_2 
       (.I0(p1_data_2[24]),
        .O(\p2_data_0[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_2 
       (.I0(p1_data_1[3]),
        .I1(p1_data_2[3]),
        .O(\p2_data_0[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_3 
       (.I0(p1_data_1[2]),
        .I1(p1_data_2[2]),
        .O(\p2_data_0[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_4 
       (.I0(p1_data_1[1]),
        .I1(p1_data_2[1]),
        .O(\p2_data_0[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_5 
       (.I0(p1_data_1[0]),
        .I1(p1_data_2[0]),
        .O(\p2_data_0[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_2 
       (.I0(p1_data_1[7]),
        .I1(p1_data_2[7]),
        .O(\p2_data_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_3 
       (.I0(p1_data_1[6]),
        .I1(p1_data_2[6]),
        .O(\p2_data_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_4 
       (.I0(p1_data_1[5]),
        .I1(p1_data_2[5]),
        .O(\p2_data_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_5 
       (.I0(p1_data_1[4]),
        .I1(p1_data_2[4]),
        .O(\p2_data_0[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[0]),
        .Q(p2_data_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[10]),
        .Q(p2_data_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[11]),
        .Q(p2_data_0[11]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[11]_i_1 
       (.CI(\p2_data_0_reg[7]_i_1_n_0 ),
        .CO({\p2_data_0_reg[11]_i_1_n_0 ,\p2_data_0_reg[11]_i_1_n_1 ,\p2_data_0_reg[11]_i_1_n_2 ,\p2_data_0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_1[11:8]),
        .O(p2_data_00[11:8]),
        .S({\p2_data_0[11]_i_2_n_0 ,\p2_data_0[11]_i_3_n_0 ,\p2_data_0[11]_i_4_n_0 ,\p2_data_0[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[12]),
        .Q(p2_data_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[13]),
        .Q(p2_data_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[14]),
        .Q(p2_data_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[15]),
        .Q(p2_data_0[15]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[15]_i_1 
       (.CI(\p2_data_0_reg[11]_i_1_n_0 ),
        .CO({\p2_data_0_reg[15]_i_1_n_0 ,\p2_data_0_reg[15]_i_1_n_1 ,\p2_data_0_reg[15]_i_1_n_2 ,\p2_data_0_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_1[15:12]),
        .O(p2_data_00[15:12]),
        .S({\p2_data_0[15]_i_2_n_0 ,\p2_data_0[15]_i_3_n_0 ,\p2_data_0[15]_i_4_n_0 ,\p2_data_0[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[16]),
        .Q(p2_data_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[17]),
        .Q(p2_data_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[18]),
        .Q(p2_data_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[19]),
        .Q(p2_data_0[19]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[19]_i_1 
       (.CI(\p2_data_0_reg[15]_i_1_n_0 ),
        .CO({\p2_data_0_reg[19]_i_1_n_0 ,\p2_data_0_reg[19]_i_1_n_1 ,\p2_data_0_reg[19]_i_1_n_2 ,\p2_data_0_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_1[19:16]),
        .O(p2_data_00[19:16]),
        .S({\p2_data_0[19]_i_2_n_0 ,\p2_data_0[19]_i_3_n_0 ,\p2_data_0[19]_i_4_n_0 ,\p2_data_0[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[1]),
        .Q(p2_data_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[20]),
        .Q(p2_data_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[21]),
        .Q(p2_data_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[22]),
        .Q(p2_data_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[23]),
        .Q(p2_data_0[23]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[23]_i_1 
       (.CI(\p2_data_0_reg[19]_i_1_n_0 ),
        .CO({\p2_data_0_reg[23]_i_1_n_0 ,\p2_data_0_reg[23]_i_1_n_1 ,\p2_data_0_reg[23]_i_1_n_2 ,\p2_data_0_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_1[23:20]),
        .O(p2_data_00[23:20]),
        .S({\p2_data_0[23]_i_2_n_0 ,\p2_data_0[23]_i_3_n_0 ,\p2_data_0[23]_i_4_n_0 ,\p2_data_0[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[24]),
        .Q(p2_data_0[24]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[24]_i_1 
       (.CI(\p2_data_0_reg[23]_i_1_n_0 ),
        .CO(\NLW_p2_data_0_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p2_data_0_reg[24]_i_1_O_UNCONNECTED [3:1],p2_data_00[24]}),
        .S({1'b0,1'b0,1'b0,\p2_data_0[24]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[2]),
        .Q(p2_data_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[3]),
        .Q(p2_data_0[3]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p2_data_0_reg[3]_i_1_n_0 ,\p2_data_0_reg[3]_i_1_n_1 ,\p2_data_0_reg[3]_i_1_n_2 ,\p2_data_0_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_1[3:0]),
        .O(p2_data_00[3:0]),
        .S({\p2_data_0[3]_i_2_n_0 ,\p2_data_0[3]_i_3_n_0 ,\p2_data_0[3]_i_4_n_0 ,\p2_data_0[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[4]),
        .Q(p2_data_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[5]),
        .Q(p2_data_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[6]),
        .Q(p2_data_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[7]),
        .Q(p2_data_0[7]),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[7]_i_1 
       (.CI(\p2_data_0_reg[3]_i_1_n_0 ),
        .CO({\p2_data_0_reg[7]_i_1_n_0 ,\p2_data_0_reg[7]_i_1_n_1 ,\p2_data_0_reg[7]_i_1_n_2 ,\p2_data_0_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_1[7:4]),
        .O(p2_data_00[7:4]),
        .S({\p2_data_0[7]_i_2_n_0 ,\p2_data_0[7]_i_3_n_0 ,\p2_data_0[7]_i_4_n_0 ,\p2_data_0[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[8]),
        .Q(p2_data_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_00[9]),
        .Q(p2_data_0[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_1[19]_i_1 
       (.I0(p1_data_3[19]),
        .I1(p1_data_4),
        .O(p2_data_10[19]));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[22]_i_2 
       (.I0(p1_data_3[22]),
        .O(\p2_data_1[22]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[22]_i_3 
       (.I0(p1_data_3[21]),
        .O(\p2_data_1[22]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[22]_i_4 
       (.I0(p1_data_3[20]),
        .O(\p2_data_1[22]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_1[22]_i_5 
       (.I0(p1_data_3[19]),
        .I1(p1_data_4),
        .O(\p2_data_1[22]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[24]_i_2 
       (.I0(p1_data_3[24]),
        .O(\p2_data_1[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[24]_i_3 
       (.I0(p1_data_3[23]),
        .O(\p2_data_1[24]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[0]),
        .Q(p2_data_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[10]),
        .Q(p2_data_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[11]),
        .Q(p2_data_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[12]),
        .Q(p2_data_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[13]),
        .Q(p2_data_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[14]),
        .Q(p2_data_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[15]),
        .Q(p2_data_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[16]),
        .Q(p2_data_1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[17]),
        .Q(p2_data_1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[18]),
        .Q(p2_data_1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_10[19]),
        .Q(p2_data_1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[1]),
        .Q(p2_data_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_10[20]),
        .Q(p2_data_1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_10[21]),
        .Q(p2_data_1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_10[22]),
        .Q(p2_data_1[22]),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[22]_i_1 
       (.CI(1'b0),
        .CO({\p2_data_1_reg[22]_i_1_n_0 ,\p2_data_1_reg[22]_i_1_n_1 ,\p2_data_1_reg[22]_i_1_n_2 ,\p2_data_1_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p1_data_3[22:19]),
        .O({p2_data_10[22:20],\NLW_p2_data_1_reg[22]_i_1_O_UNCONNECTED [0]}),
        .S({\p2_data_1[22]_i_2_n_0 ,\p2_data_1[22]_i_3_n_0 ,\p2_data_1[22]_i_4_n_0 ,\p2_data_1[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_10[23]),
        .Q(p2_data_1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_data_10[24]),
        .Q(p2_data_1[24]),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[24]_i_1 
       (.CI(\p2_data_1_reg[22]_i_1_n_0 ),
        .CO({\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED [3:1],\p2_data_1_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p1_data_3[23]}),
        .O({\NLW_p2_data_1_reg[24]_i_1_O_UNCONNECTED [3:2],p2_data_10[24:23]}),
        .S({1'b0,1'b0,\p2_data_1[24]_i_2_n_0 ,\p2_data_1[24]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[2]),
        .Q(p2_data_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[3]),
        .Q(p2_data_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[4]),
        .Q(p2_data_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[5]),
        .Q(p2_data_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[6]),
        .Q(p2_data_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[7]),
        .Q(p2_data_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[8]),
        .Q(p2_data_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p1_data_3[9]),
        .Q(p2_data_1[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_10 
       (.I0(p2_data_0[9]),
        .I1(p2_data_1[9]),
        .O(\p3_data[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_11 
       (.I0(p2_data_0[8]),
        .I1(p2_data_1[8]),
        .O(\p3_data[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_13 
       (.I0(p2_data_0[7]),
        .I1(p2_data_1[7]),
        .O(\p3_data[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_14 
       (.I0(p2_data_0[6]),
        .I1(p2_data_1[6]),
        .O(\p3_data[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_15 
       (.I0(p2_data_0[5]),
        .I1(p2_data_1[5]),
        .O(\p3_data[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_16 
       (.I0(p2_data_0[4]),
        .I1(p2_data_1[4]),
        .O(\p3_data[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_17 
       (.I0(p2_data_0[3]),
        .I1(p2_data_1[3]),
        .O(\p3_data[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_18 
       (.I0(p2_data_0[2]),
        .I1(p2_data_1[2]),
        .O(\p3_data[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_19 
       (.I0(p2_data_0[1]),
        .I1(p2_data_1[1]),
        .O(\p3_data[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_20 
       (.I0(p2_data_0[0]),
        .I1(p2_data_1[0]),
        .O(\p3_data[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_3 
       (.I0(p2_data_0[15]),
        .I1(p2_data_1[15]),
        .O(\p3_data[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_4 
       (.I0(p2_data_0[14]),
        .I1(p2_data_1[14]),
        .O(\p3_data[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_5 
       (.I0(p2_data_0[13]),
        .I1(p2_data_1[13]),
        .O(\p3_data[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_6 
       (.I0(p2_data_0[12]),
        .I1(p2_data_1[12]),
        .O(\p3_data[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_8 
       (.I0(p2_data_0[11]),
        .I1(p2_data_1[11]),
        .O(\p3_data[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_9 
       (.I0(p2_data_0[10]),
        .I1(p2_data_1[10]),
        .O(\p3_data[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_2 
       (.I0(p2_data_0[19]),
        .I1(p2_data_1[19]),
        .O(\p3_data[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_3 
       (.I0(p2_data_0[18]),
        .I1(p2_data_1[18]),
        .O(\p3_data[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_4 
       (.I0(p2_data_0[17]),
        .I1(p2_data_1[17]),
        .O(\p3_data[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_5 
       (.I0(p2_data_0[16]),
        .I1(p2_data_1[16]),
        .O(\p3_data[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_2 
       (.I0(p2_data_0[23]),
        .I1(p2_data_1[23]),
        .O(\p3_data[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_3 
       (.I0(p2_data_0[22]),
        .I1(p2_data_1[22]),
        .O(\p3_data[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_4 
       (.I0(p2_data_0[21]),
        .I1(p2_data_1[21]),
        .O(\p3_data[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_5 
       (.I0(p2_data_0[20]),
        .I1(p2_data_1[20]),
        .O(\p3_data[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[24]_i_2 
       (.I0(p2_data_0[24]),
        .I1(p2_data_1[24]),
        .O(\p3_data[24]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[12]),
        .Q(p_2_in__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[13]),
        .Q(p_2_in__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[14]),
        .Q(p_2_in__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[15]),
        .Q(p_2_in__0[3]),
        .R(1'b0));
  CARRY4 \p3_data_reg[15]_i_1 
       (.CI(\p3_data_reg[15]_i_2_n_0 ),
        .CO({\p3_data_reg[15]_i_1_n_0 ,\p3_data_reg[15]_i_1_n_1 ,\p3_data_reg[15]_i_1_n_2 ,\p3_data_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p2_data_0[15:12]),
        .O(p3_data0[15:12]),
        .S({\p3_data[15]_i_3_n_0 ,\p3_data[15]_i_4_n_0 ,\p3_data[15]_i_5_n_0 ,\p3_data[15]_i_6_n_0 }));
  CARRY4 \p3_data_reg[15]_i_12 
       (.CI(1'b0),
        .CO({\p3_data_reg[15]_i_12_n_0 ,\p3_data_reg[15]_i_12_n_1 ,\p3_data_reg[15]_i_12_n_2 ,\p3_data_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(p2_data_0[3:0]),
        .O(\NLW_p3_data_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_17_n_0 ,\p3_data[15]_i_18_n_0 ,\p3_data[15]_i_19_n_0 ,\p3_data[15]_i_20_n_0 }));
  CARRY4 \p3_data_reg[15]_i_2 
       (.CI(\p3_data_reg[15]_i_7_n_0 ),
        .CO({\p3_data_reg[15]_i_2_n_0 ,\p3_data_reg[15]_i_2_n_1 ,\p3_data_reg[15]_i_2_n_2 ,\p3_data_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p2_data_0[11:8]),
        .O(\NLW_p3_data_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_8_n_0 ,\p3_data[15]_i_9_n_0 ,\p3_data[15]_i_10_n_0 ,\p3_data[15]_i_11_n_0 }));
  CARRY4 \p3_data_reg[15]_i_7 
       (.CI(\p3_data_reg[15]_i_12_n_0 ),
        .CO({\p3_data_reg[15]_i_7_n_0 ,\p3_data_reg[15]_i_7_n_1 ,\p3_data_reg[15]_i_7_n_2 ,\p3_data_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(p2_data_0[7:4]),
        .O(\NLW_p3_data_reg[15]_i_7_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_13_n_0 ,\p3_data[15]_i_14_n_0 ,\p3_data[15]_i_15_n_0 ,\p3_data[15]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[16]),
        .Q(p_2_in__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[17]),
        .Q(p_2_in__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[18]),
        .Q(p_2_in__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[19]),
        .Q(p_2_in__0[7]),
        .R(1'b0));
  CARRY4 \p3_data_reg[19]_i_1 
       (.CI(\p3_data_reg[15]_i_1_n_0 ),
        .CO({\p3_data_reg[19]_i_1_n_0 ,\p3_data_reg[19]_i_1_n_1 ,\p3_data_reg[19]_i_1_n_2 ,\p3_data_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p2_data_0[19:16]),
        .O(p3_data0[19:16]),
        .S({\p3_data[19]_i_2_n_0 ,\p3_data[19]_i_3_n_0 ,\p3_data[19]_i_4_n_0 ,\p3_data[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[20]),
        .Q(\p3_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[21]),
        .Q(\p3_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[22]),
        .Q(\p3_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[23]),
        .Q(\p3_data_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[23]_i_1 
       (.CI(\p3_data_reg[19]_i_1_n_0 ),
        .CO({\p3_data_reg[23]_i_1_n_0 ,\p3_data_reg[23]_i_1_n_1 ,\p3_data_reg[23]_i_1_n_2 ,\p3_data_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p2_data_0[23:20]),
        .O(p3_data0[23:20]),
        .S({\p3_data[23]_i_2_n_0 ,\p3_data[23]_i_3_n_0 ,\p3_data[23]_i_4_n_0 ,\p3_data[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p3_data0[24]),
        .Q(p_1_in__0),
        .R(1'b0));
  CARRY4 \p3_data_reg[24]_i_1 
       (.CI(\p3_data_reg[23]_i_1_n_0 ),
        .CO(\NLW_p3_data_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p3_data_reg[24]_i_1_O_UNCONNECTED [3:1],p3_data0[24]}),
        .S({1'b0,1'b0,1'b0,\p3_data[24]_i_2_n_0 }));
  (* srl_bus_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg[0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p3_ddata_reg[0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_data_e),
        .Q(\p3_ddata_reg[0]_srl6_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg[1]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p3_ddata_reg[1]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_vsync_data_e),
        .Q(\p3_ddata_reg[1]_srl6_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg[2]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p3_ddata_reg[2]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_hsync_data_e),
        .Q(\p3_ddata_reg[2]_srl6_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg[3]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p3_ddata_reg[3]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_vsync),
        .Q(\p3_ddata_reg[3]_srl6_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_add_c4/p3_ddata_reg[4]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p3_ddata_reg[4]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_hsync),
        .Q(\p3_ddata_reg[4]_srl6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s422_sync_reg[1]_srl5_i_1 
       (.I0(hdmi_vsync_data_e),
        .I1(\d_data_cntrl_reg[186] ),
        .I2(hdmi_csc_vsync_data_e_s),
        .O(hdmi_es_vs_de_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \s422_sync_reg[2]_srl5_i_1 
       (.I0(hdmi_hsync_data_e),
        .I1(\d_data_cntrl_reg[186] ),
        .I2(hdmi_csc_hsync_data_e_s),
        .O(hdmi_es_hs_de_reg));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_add" *) 
module system_axi_hdmi_core_0_ad_csc_1_add__parameterized0
   (\hdmi_24_data_reg[15] ,
    hdmi_clk,
    D,
    \bbstub_P[40] ,
    \bbstub_P[40]_0 );
  output [7:0]\hdmi_24_data_reg[15] ;
  input hdmi_clk;
  input [23:0]D;
  input [23:0]\bbstub_P[40] ;
  input [23:0]\bbstub_P[40]_0 ;

  wire [23:0]D;
  wire [23:0]\bbstub_P[40] ;
  wire [23:0]\bbstub_P[40]_0 ;
  wire \data_p[0]_i_1_n_0 ;
  wire \data_p[1]_i_1_n_0 ;
  wire \data_p[2]_i_1_n_0 ;
  wire \data_p[3]_i_1_n_0 ;
  wire \data_p[4]_i_1_n_0 ;
  wire \data_p[5]_i_1_n_0 ;
  wire \data_p[6]_i_1_n_0 ;
  wire \data_p[7]_i_1_n_0 ;
  wire [7:0]\hdmi_24_data_reg[15] ;
  wire hdmi_clk;
  wire \p1_data_1_reg_n_0_[0] ;
  wire \p1_data_1_reg_n_0_[10] ;
  wire \p1_data_1_reg_n_0_[11] ;
  wire \p1_data_1_reg_n_0_[12] ;
  wire \p1_data_1_reg_n_0_[13] ;
  wire \p1_data_1_reg_n_0_[14] ;
  wire \p1_data_1_reg_n_0_[15] ;
  wire \p1_data_1_reg_n_0_[16] ;
  wire \p1_data_1_reg_n_0_[17] ;
  wire \p1_data_1_reg_n_0_[18] ;
  wire \p1_data_1_reg_n_0_[19] ;
  wire \p1_data_1_reg_n_0_[1] ;
  wire \p1_data_1_reg_n_0_[20] ;
  wire \p1_data_1_reg_n_0_[21] ;
  wire \p1_data_1_reg_n_0_[22] ;
  wire \p1_data_1_reg_n_0_[23] ;
  wire \p1_data_1_reg_n_0_[2] ;
  wire \p1_data_1_reg_n_0_[3] ;
  wire \p1_data_1_reg_n_0_[4] ;
  wire \p1_data_1_reg_n_0_[5] ;
  wire \p1_data_1_reg_n_0_[6] ;
  wire \p1_data_1_reg_n_0_[7] ;
  wire \p1_data_1_reg_n_0_[8] ;
  wire \p1_data_1_reg_n_0_[9] ;
  wire \p1_data_2_reg_n_0_[0] ;
  wire \p1_data_2_reg_n_0_[10] ;
  wire \p1_data_2_reg_n_0_[11] ;
  wire \p1_data_2_reg_n_0_[12] ;
  wire \p1_data_2_reg_n_0_[13] ;
  wire \p1_data_2_reg_n_0_[14] ;
  wire \p1_data_2_reg_n_0_[15] ;
  wire \p1_data_2_reg_n_0_[16] ;
  wire \p1_data_2_reg_n_0_[17] ;
  wire \p1_data_2_reg_n_0_[18] ;
  wire \p1_data_2_reg_n_0_[19] ;
  wire \p1_data_2_reg_n_0_[1] ;
  wire \p1_data_2_reg_n_0_[20] ;
  wire \p1_data_2_reg_n_0_[21] ;
  wire \p1_data_2_reg_n_0_[22] ;
  wire \p1_data_2_reg_n_0_[23] ;
  wire \p1_data_2_reg_n_0_[2] ;
  wire \p1_data_2_reg_n_0_[3] ;
  wire \p1_data_2_reg_n_0_[4] ;
  wire \p1_data_2_reg_n_0_[5] ;
  wire \p1_data_2_reg_n_0_[6] ;
  wire \p1_data_2_reg_n_0_[7] ;
  wire \p1_data_2_reg_n_0_[8] ;
  wire \p1_data_2_reg_n_0_[9] ;
  wire \p1_data_3_reg_n_0_[0] ;
  wire \p1_data_3_reg_n_0_[10] ;
  wire \p1_data_3_reg_n_0_[11] ;
  wire \p1_data_3_reg_n_0_[12] ;
  wire \p1_data_3_reg_n_0_[13] ;
  wire \p1_data_3_reg_n_0_[14] ;
  wire \p1_data_3_reg_n_0_[15] ;
  wire \p1_data_3_reg_n_0_[16] ;
  wire \p1_data_3_reg_n_0_[17] ;
  wire \p1_data_3_reg_n_0_[18] ;
  wire \p1_data_3_reg_n_0_[19] ;
  wire \p1_data_3_reg_n_0_[1] ;
  wire \p1_data_3_reg_n_0_[20] ;
  wire \p1_data_3_reg_n_0_[21] ;
  wire \p1_data_3_reg_n_0_[22] ;
  wire \p1_data_3_reg_n_0_[23] ;
  wire \p1_data_3_reg_n_0_[2] ;
  wire \p1_data_3_reg_n_0_[3] ;
  wire \p1_data_3_reg_n_0_[4] ;
  wire \p1_data_3_reg_n_0_[5] ;
  wire \p1_data_3_reg_n_0_[6] ;
  wire \p1_data_3_reg_n_0_[7] ;
  wire \p1_data_3_reg_n_0_[8] ;
  wire \p1_data_3_reg_n_0_[9] ;
  wire \p1_data_4_reg_n_0_[16] ;
  wire \p2_data_0[11]_i_2_n_0 ;
  wire \p2_data_0[11]_i_3_n_0 ;
  wire \p2_data_0[11]_i_4_n_0 ;
  wire \p2_data_0[11]_i_5_n_0 ;
  wire \p2_data_0[15]_i_2_n_0 ;
  wire \p2_data_0[15]_i_3_n_0 ;
  wire \p2_data_0[15]_i_4_n_0 ;
  wire \p2_data_0[15]_i_5_n_0 ;
  wire \p2_data_0[19]_i_2_n_0 ;
  wire \p2_data_0[19]_i_3_n_0 ;
  wire \p2_data_0[19]_i_4_n_0 ;
  wire \p2_data_0[19]_i_5_n_0 ;
  wire \p2_data_0[23]_i_2_n_0 ;
  wire \p2_data_0[23]_i_3_n_0 ;
  wire \p2_data_0[23]_i_4_n_0 ;
  wire \p2_data_0[23]_i_5_n_0 ;
  wire \p2_data_0[3]_i_2_n_0 ;
  wire \p2_data_0[3]_i_3_n_0 ;
  wire \p2_data_0[3]_i_4_n_0 ;
  wire \p2_data_0[3]_i_5_n_0 ;
  wire \p2_data_0[7]_i_2_n_0 ;
  wire \p2_data_0[7]_i_3_n_0 ;
  wire \p2_data_0[7]_i_4_n_0 ;
  wire \p2_data_0[7]_i_5_n_0 ;
  wire \p2_data_0_reg[11]_i_1_n_0 ;
  wire \p2_data_0_reg[11]_i_1_n_1 ;
  wire \p2_data_0_reg[11]_i_1_n_2 ;
  wire \p2_data_0_reg[11]_i_1_n_3 ;
  wire \p2_data_0_reg[11]_i_1_n_4 ;
  wire \p2_data_0_reg[11]_i_1_n_5 ;
  wire \p2_data_0_reg[11]_i_1_n_6 ;
  wire \p2_data_0_reg[11]_i_1_n_7 ;
  wire \p2_data_0_reg[15]_i_1_n_0 ;
  wire \p2_data_0_reg[15]_i_1_n_1 ;
  wire \p2_data_0_reg[15]_i_1_n_2 ;
  wire \p2_data_0_reg[15]_i_1_n_3 ;
  wire \p2_data_0_reg[15]_i_1_n_4 ;
  wire \p2_data_0_reg[15]_i_1_n_5 ;
  wire \p2_data_0_reg[15]_i_1_n_6 ;
  wire \p2_data_0_reg[15]_i_1_n_7 ;
  wire \p2_data_0_reg[19]_i_1_n_0 ;
  wire \p2_data_0_reg[19]_i_1_n_1 ;
  wire \p2_data_0_reg[19]_i_1_n_2 ;
  wire \p2_data_0_reg[19]_i_1_n_3 ;
  wire \p2_data_0_reg[19]_i_1_n_4 ;
  wire \p2_data_0_reg[19]_i_1_n_5 ;
  wire \p2_data_0_reg[19]_i_1_n_6 ;
  wire \p2_data_0_reg[19]_i_1_n_7 ;
  wire \p2_data_0_reg[23]_i_1_n_0 ;
  wire \p2_data_0_reg[23]_i_1_n_1 ;
  wire \p2_data_0_reg[23]_i_1_n_2 ;
  wire \p2_data_0_reg[23]_i_1_n_3 ;
  wire \p2_data_0_reg[23]_i_1_n_4 ;
  wire \p2_data_0_reg[23]_i_1_n_5 ;
  wire \p2_data_0_reg[23]_i_1_n_6 ;
  wire \p2_data_0_reg[23]_i_1_n_7 ;
  wire \p2_data_0_reg[24]_i_1_n_3 ;
  wire \p2_data_0_reg[3]_i_1_n_0 ;
  wire \p2_data_0_reg[3]_i_1_n_1 ;
  wire \p2_data_0_reg[3]_i_1_n_2 ;
  wire \p2_data_0_reg[3]_i_1_n_3 ;
  wire \p2_data_0_reg[3]_i_1_n_4 ;
  wire \p2_data_0_reg[3]_i_1_n_5 ;
  wire \p2_data_0_reg[3]_i_1_n_6 ;
  wire \p2_data_0_reg[3]_i_1_n_7 ;
  wire \p2_data_0_reg[7]_i_1_n_0 ;
  wire \p2_data_0_reg[7]_i_1_n_1 ;
  wire \p2_data_0_reg[7]_i_1_n_2 ;
  wire \p2_data_0_reg[7]_i_1_n_3 ;
  wire \p2_data_0_reg[7]_i_1_n_4 ;
  wire \p2_data_0_reg[7]_i_1_n_5 ;
  wire \p2_data_0_reg[7]_i_1_n_6 ;
  wire \p2_data_0_reg[7]_i_1_n_7 ;
  wire \p2_data_0_reg_n_0_[0] ;
  wire \p2_data_0_reg_n_0_[10] ;
  wire \p2_data_0_reg_n_0_[11] ;
  wire \p2_data_0_reg_n_0_[12] ;
  wire \p2_data_0_reg_n_0_[13] ;
  wire \p2_data_0_reg_n_0_[14] ;
  wire \p2_data_0_reg_n_0_[15] ;
  wire \p2_data_0_reg_n_0_[16] ;
  wire \p2_data_0_reg_n_0_[17] ;
  wire \p2_data_0_reg_n_0_[18] ;
  wire \p2_data_0_reg_n_0_[19] ;
  wire \p2_data_0_reg_n_0_[1] ;
  wire \p2_data_0_reg_n_0_[20] ;
  wire \p2_data_0_reg_n_0_[21] ;
  wire \p2_data_0_reg_n_0_[22] ;
  wire \p2_data_0_reg_n_0_[23] ;
  wire \p2_data_0_reg_n_0_[24] ;
  wire \p2_data_0_reg_n_0_[2] ;
  wire \p2_data_0_reg_n_0_[3] ;
  wire \p2_data_0_reg_n_0_[4] ;
  wire \p2_data_0_reg_n_0_[5] ;
  wire \p2_data_0_reg_n_0_[6] ;
  wire \p2_data_0_reg_n_0_[7] ;
  wire \p2_data_0_reg_n_0_[8] ;
  wire \p2_data_0_reg_n_0_[9] ;
  wire \p2_data_1[16]_i_1_n_0 ;
  wire \p2_data_1[19]_i_2_n_0 ;
  wire \p2_data_1[19]_i_3_n_0 ;
  wire \p2_data_1[19]_i_4_n_0 ;
  wire \p2_data_1[19]_i_5_n_0 ;
  wire \p2_data_1[23]_i_2_n_0 ;
  wire \p2_data_1[23]_i_3_n_0 ;
  wire \p2_data_1[23]_i_4_n_0 ;
  wire \p2_data_1[23]_i_5_n_0 ;
  wire \p2_data_1_reg[19]_i_1_n_0 ;
  wire \p2_data_1_reg[19]_i_1_n_1 ;
  wire \p2_data_1_reg[19]_i_1_n_2 ;
  wire \p2_data_1_reg[19]_i_1_n_3 ;
  wire \p2_data_1_reg[19]_i_1_n_4 ;
  wire \p2_data_1_reg[19]_i_1_n_5 ;
  wire \p2_data_1_reg[19]_i_1_n_6 ;
  wire \p2_data_1_reg[23]_i_1_n_0 ;
  wire \p2_data_1_reg[23]_i_1_n_1 ;
  wire \p2_data_1_reg[23]_i_1_n_2 ;
  wire \p2_data_1_reg[23]_i_1_n_3 ;
  wire \p2_data_1_reg[23]_i_1_n_4 ;
  wire \p2_data_1_reg[23]_i_1_n_5 ;
  wire \p2_data_1_reg[23]_i_1_n_6 ;
  wire \p2_data_1_reg[23]_i_1_n_7 ;
  wire \p2_data_1_reg[24]_i_1_n_3 ;
  wire \p2_data_1_reg_n_0_[0] ;
  wire \p2_data_1_reg_n_0_[10] ;
  wire \p2_data_1_reg_n_0_[11] ;
  wire \p2_data_1_reg_n_0_[12] ;
  wire \p2_data_1_reg_n_0_[13] ;
  wire \p2_data_1_reg_n_0_[14] ;
  wire \p2_data_1_reg_n_0_[15] ;
  wire \p2_data_1_reg_n_0_[16] ;
  wire \p2_data_1_reg_n_0_[17] ;
  wire \p2_data_1_reg_n_0_[18] ;
  wire \p2_data_1_reg_n_0_[19] ;
  wire \p2_data_1_reg_n_0_[1] ;
  wire \p2_data_1_reg_n_0_[20] ;
  wire \p2_data_1_reg_n_0_[21] ;
  wire \p2_data_1_reg_n_0_[22] ;
  wire \p2_data_1_reg_n_0_[23] ;
  wire \p2_data_1_reg_n_0_[24] ;
  wire \p2_data_1_reg_n_0_[2] ;
  wire \p2_data_1_reg_n_0_[3] ;
  wire \p2_data_1_reg_n_0_[4] ;
  wire \p2_data_1_reg_n_0_[5] ;
  wire \p2_data_1_reg_n_0_[6] ;
  wire \p2_data_1_reg_n_0_[7] ;
  wire \p2_data_1_reg_n_0_[8] ;
  wire \p2_data_1_reg_n_0_[9] ;
  wire \p3_data[15]_i_10_n_0 ;
  wire \p3_data[15]_i_11_n_0 ;
  wire \p3_data[15]_i_13_n_0 ;
  wire \p3_data[15]_i_14_n_0 ;
  wire \p3_data[15]_i_15_n_0 ;
  wire \p3_data[15]_i_16_n_0 ;
  wire \p3_data[15]_i_17_n_0 ;
  wire \p3_data[15]_i_18_n_0 ;
  wire \p3_data[15]_i_19_n_0 ;
  wire \p3_data[15]_i_20_n_0 ;
  wire \p3_data[15]_i_3_n_0 ;
  wire \p3_data[15]_i_4_n_0 ;
  wire \p3_data[15]_i_5_n_0 ;
  wire \p3_data[15]_i_6_n_0 ;
  wire \p3_data[15]_i_8_n_0 ;
  wire \p3_data[15]_i_9_n_0 ;
  wire \p3_data[19]_i_2_n_0 ;
  wire \p3_data[19]_i_3_n_0 ;
  wire \p3_data[19]_i_4_n_0 ;
  wire \p3_data[19]_i_5_n_0 ;
  wire \p3_data[23]_i_2_n_0 ;
  wire \p3_data[23]_i_3_n_0 ;
  wire \p3_data[23]_i_4_n_0 ;
  wire \p3_data[23]_i_5_n_0 ;
  wire \p3_data[24]_i_2_n_0 ;
  wire \p3_data_reg[15]_i_12_n_0 ;
  wire \p3_data_reg[15]_i_12_n_1 ;
  wire \p3_data_reg[15]_i_12_n_2 ;
  wire \p3_data_reg[15]_i_12_n_3 ;
  wire \p3_data_reg[15]_i_1_n_0 ;
  wire \p3_data_reg[15]_i_1_n_1 ;
  wire \p3_data_reg[15]_i_1_n_2 ;
  wire \p3_data_reg[15]_i_1_n_3 ;
  wire \p3_data_reg[15]_i_1_n_4 ;
  wire \p3_data_reg[15]_i_1_n_5 ;
  wire \p3_data_reg[15]_i_1_n_6 ;
  wire \p3_data_reg[15]_i_1_n_7 ;
  wire \p3_data_reg[15]_i_2_n_0 ;
  wire \p3_data_reg[15]_i_2_n_1 ;
  wire \p3_data_reg[15]_i_2_n_2 ;
  wire \p3_data_reg[15]_i_2_n_3 ;
  wire \p3_data_reg[15]_i_7_n_0 ;
  wire \p3_data_reg[15]_i_7_n_1 ;
  wire \p3_data_reg[15]_i_7_n_2 ;
  wire \p3_data_reg[15]_i_7_n_3 ;
  wire \p3_data_reg[19]_i_1_n_0 ;
  wire \p3_data_reg[19]_i_1_n_1 ;
  wire \p3_data_reg[19]_i_1_n_2 ;
  wire \p3_data_reg[19]_i_1_n_3 ;
  wire \p3_data_reg[19]_i_1_n_4 ;
  wire \p3_data_reg[19]_i_1_n_5 ;
  wire \p3_data_reg[19]_i_1_n_6 ;
  wire \p3_data_reg[19]_i_1_n_7 ;
  wire \p3_data_reg[23]_i_1_n_0 ;
  wire \p3_data_reg[23]_i_1_n_1 ;
  wire \p3_data_reg[23]_i_1_n_2 ;
  wire \p3_data_reg[23]_i_1_n_3 ;
  wire \p3_data_reg[23]_i_1_n_4 ;
  wire \p3_data_reg[23]_i_1_n_5 ;
  wire \p3_data_reg[23]_i_1_n_6 ;
  wire \p3_data_reg[23]_i_1_n_7 ;
  wire \p3_data_reg[24]_i_1_n_7 ;
  wire \p3_data_reg_n_0_[12] ;
  wire \p3_data_reg_n_0_[13] ;
  wire \p3_data_reg_n_0_[14] ;
  wire \p3_data_reg_n_0_[15] ;
  wire \p3_data_reg_n_0_[16] ;
  wire \p3_data_reg_n_0_[17] ;
  wire \p3_data_reg_n_0_[18] ;
  wire \p3_data_reg_n_0_[19] ;
  wire \p3_data_reg_n_0_[20] ;
  wire \p3_data_reg_n_0_[21] ;
  wire \p3_data_reg_n_0_[22] ;
  wire \p3_data_reg_n_0_[23] ;
  wire \p3_data_reg_n_0_[24] ;
  wire [3:1]\NLW_p2_data_0_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_p2_data_0_reg[24]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_p2_data_1_reg[19]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_p2_data_1_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p3_data_reg[24]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[0]_i_1 
       (.I0(\p3_data_reg_n_0_[12] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[1]_i_1 
       (.I0(\p3_data_reg_n_0_[13] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[2]_i_1 
       (.I0(\p3_data_reg_n_0_[14] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[3]_i_1 
       (.I0(\p3_data_reg_n_0_[15] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[4]_i_1 
       (.I0(\p3_data_reg_n_0_[16] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[5]_i_1 
       (.I0(\p3_data_reg_n_0_[17] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[6]_i_1 
       (.I0(\p3_data_reg_n_0_[18] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[7]_i_1 
       (.I0(\p3_data_reg_n_0_[19] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[0]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [0]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[1]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [1]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[2]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [2]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[3]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [3]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[4]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [4]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[5]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [5]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[6]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [6]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[7]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[15] [7]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [0]),
        .Q(\p1_data_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [10]),
        .Q(\p1_data_1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [11]),
        .Q(\p1_data_1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [12]),
        .Q(\p1_data_1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [13]),
        .Q(\p1_data_1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [14]),
        .Q(\p1_data_1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [15]),
        .Q(\p1_data_1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [16]),
        .Q(\p1_data_1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [17]),
        .Q(\p1_data_1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [18]),
        .Q(\p1_data_1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [19]),
        .Q(\p1_data_1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [1]),
        .Q(\p1_data_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [20]),
        .Q(\p1_data_1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [21]),
        .Q(\p1_data_1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [22]),
        .Q(\p1_data_1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [23]),
        .Q(\p1_data_1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [2]),
        .Q(\p1_data_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [3]),
        .Q(\p1_data_1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [4]),
        .Q(\p1_data_1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [5]),
        .Q(\p1_data_1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [6]),
        .Q(\p1_data_1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [7]),
        .Q(\p1_data_1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [8]),
        .Q(\p1_data_1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40]_0 [9]),
        .Q(\p1_data_1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [0]),
        .Q(\p1_data_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [10]),
        .Q(\p1_data_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [11]),
        .Q(\p1_data_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [12]),
        .Q(\p1_data_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [13]),
        .Q(\p1_data_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [14]),
        .Q(\p1_data_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [15]),
        .Q(\p1_data_2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [16]),
        .Q(\p1_data_2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [17]),
        .Q(\p1_data_2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [18]),
        .Q(\p1_data_2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [19]),
        .Q(\p1_data_2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [1]),
        .Q(\p1_data_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [20]),
        .Q(\p1_data_2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [21]),
        .Q(\p1_data_2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [22]),
        .Q(\p1_data_2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [23]),
        .Q(\p1_data_2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [2]),
        .Q(\p1_data_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [3]),
        .Q(\p1_data_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [4]),
        .Q(\p1_data_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [5]),
        .Q(\p1_data_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [6]),
        .Q(\p1_data_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [7]),
        .Q(\p1_data_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [8]),
        .Q(\p1_data_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\bbstub_P[40] [9]),
        .Q(\p1_data_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\p1_data_3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\p1_data_3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\p1_data_3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\p1_data_3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\p1_data_3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\p1_data_3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\p1_data_3_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\p1_data_3_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\p1_data_3_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\p1_data_3_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\p1_data_3_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\p1_data_3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\p1_data_3_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\p1_data_3_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\p1_data_3_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\p1_data_3_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\p1_data_3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\p1_data_3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\p1_data_3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\p1_data_3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\p1_data_3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\p1_data_3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\p1_data_3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\p1_data_3_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_4_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\p1_data_4_reg_n_0_[16] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_2 
       (.I0(\p1_data_1_reg_n_0_[11] ),
        .I1(\p1_data_2_reg_n_0_[11] ),
        .O(\p2_data_0[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_3 
       (.I0(\p1_data_1_reg_n_0_[10] ),
        .I1(\p1_data_2_reg_n_0_[10] ),
        .O(\p2_data_0[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_4 
       (.I0(\p1_data_1_reg_n_0_[9] ),
        .I1(\p1_data_2_reg_n_0_[9] ),
        .O(\p2_data_0[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_5 
       (.I0(\p1_data_1_reg_n_0_[8] ),
        .I1(\p1_data_2_reg_n_0_[8] ),
        .O(\p2_data_0[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_2 
       (.I0(\p1_data_1_reg_n_0_[15] ),
        .I1(\p1_data_2_reg_n_0_[15] ),
        .O(\p2_data_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_3 
       (.I0(\p1_data_1_reg_n_0_[14] ),
        .I1(\p1_data_2_reg_n_0_[14] ),
        .O(\p2_data_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_4 
       (.I0(\p1_data_1_reg_n_0_[13] ),
        .I1(\p1_data_2_reg_n_0_[13] ),
        .O(\p2_data_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_5 
       (.I0(\p1_data_1_reg_n_0_[12] ),
        .I1(\p1_data_2_reg_n_0_[12] ),
        .O(\p2_data_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_2 
       (.I0(\p1_data_1_reg_n_0_[19] ),
        .I1(\p1_data_2_reg_n_0_[19] ),
        .O(\p2_data_0[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_3 
       (.I0(\p1_data_1_reg_n_0_[18] ),
        .I1(\p1_data_2_reg_n_0_[18] ),
        .O(\p2_data_0[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_4 
       (.I0(\p1_data_1_reg_n_0_[17] ),
        .I1(\p1_data_2_reg_n_0_[17] ),
        .O(\p2_data_0[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_5 
       (.I0(\p1_data_1_reg_n_0_[16] ),
        .I1(\p1_data_2_reg_n_0_[16] ),
        .O(\p2_data_0[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_2 
       (.I0(\p1_data_1_reg_n_0_[23] ),
        .I1(\p1_data_2_reg_n_0_[23] ),
        .O(\p2_data_0[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_3 
       (.I0(\p1_data_1_reg_n_0_[22] ),
        .I1(\p1_data_2_reg_n_0_[22] ),
        .O(\p2_data_0[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_4 
       (.I0(\p1_data_1_reg_n_0_[21] ),
        .I1(\p1_data_2_reg_n_0_[21] ),
        .O(\p2_data_0[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_5 
       (.I0(\p1_data_1_reg_n_0_[20] ),
        .I1(\p1_data_2_reg_n_0_[20] ),
        .O(\p2_data_0[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_2 
       (.I0(\p1_data_1_reg_n_0_[3] ),
        .I1(\p1_data_2_reg_n_0_[3] ),
        .O(\p2_data_0[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_3 
       (.I0(\p1_data_1_reg_n_0_[2] ),
        .I1(\p1_data_2_reg_n_0_[2] ),
        .O(\p2_data_0[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_4 
       (.I0(\p1_data_1_reg_n_0_[1] ),
        .I1(\p1_data_2_reg_n_0_[1] ),
        .O(\p2_data_0[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_5 
       (.I0(\p1_data_1_reg_n_0_[0] ),
        .I1(\p1_data_2_reg_n_0_[0] ),
        .O(\p2_data_0[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_2 
       (.I0(\p1_data_1_reg_n_0_[7] ),
        .I1(\p1_data_2_reg_n_0_[7] ),
        .O(\p2_data_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_3 
       (.I0(\p1_data_1_reg_n_0_[6] ),
        .I1(\p1_data_2_reg_n_0_[6] ),
        .O(\p2_data_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_4 
       (.I0(\p1_data_1_reg_n_0_[5] ),
        .I1(\p1_data_2_reg_n_0_[5] ),
        .O(\p2_data_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_5 
       (.I0(\p1_data_1_reg_n_0_[4] ),
        .I1(\p1_data_2_reg_n_0_[4] ),
        .O(\p2_data_0[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[11]_i_1 
       (.CI(\p2_data_0_reg[7]_i_1_n_0 ),
        .CO({\p2_data_0_reg[11]_i_1_n_0 ,\p2_data_0_reg[11]_i_1_n_1 ,\p2_data_0_reg[11]_i_1_n_2 ,\p2_data_0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[11] ,\p1_data_1_reg_n_0_[10] ,\p1_data_1_reg_n_0_[9] ,\p1_data_1_reg_n_0_[8] }),
        .O({\p2_data_0_reg[11]_i_1_n_4 ,\p2_data_0_reg[11]_i_1_n_5 ,\p2_data_0_reg[11]_i_1_n_6 ,\p2_data_0_reg[11]_i_1_n_7 }),
        .S({\p2_data_0[11]_i_2_n_0 ,\p2_data_0[11]_i_3_n_0 ,\p2_data_0[11]_i_4_n_0 ,\p2_data_0[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[15]_i_1 
       (.CI(\p2_data_0_reg[11]_i_1_n_0 ),
        .CO({\p2_data_0_reg[15]_i_1_n_0 ,\p2_data_0_reg[15]_i_1_n_1 ,\p2_data_0_reg[15]_i_1_n_2 ,\p2_data_0_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[15] ,\p1_data_1_reg_n_0_[14] ,\p1_data_1_reg_n_0_[13] ,\p1_data_1_reg_n_0_[12] }),
        .O({\p2_data_0_reg[15]_i_1_n_4 ,\p2_data_0_reg[15]_i_1_n_5 ,\p2_data_0_reg[15]_i_1_n_6 ,\p2_data_0_reg[15]_i_1_n_7 }),
        .S({\p2_data_0[15]_i_2_n_0 ,\p2_data_0[15]_i_3_n_0 ,\p2_data_0[15]_i_4_n_0 ,\p2_data_0[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[19] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[19]_i_1 
       (.CI(\p2_data_0_reg[15]_i_1_n_0 ),
        .CO({\p2_data_0_reg[19]_i_1_n_0 ,\p2_data_0_reg[19]_i_1_n_1 ,\p2_data_0_reg[19]_i_1_n_2 ,\p2_data_0_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[19] ,\p1_data_1_reg_n_0_[18] ,\p1_data_1_reg_n_0_[17] ,\p1_data_1_reg_n_0_[16] }),
        .O({\p2_data_0_reg[19]_i_1_n_4 ,\p2_data_0_reg[19]_i_1_n_5 ,\p2_data_0_reg[19]_i_1_n_6 ,\p2_data_0_reg[19]_i_1_n_7 }),
        .S({\p2_data_0[19]_i_2_n_0 ,\p2_data_0[19]_i_3_n_0 ,\p2_data_0[19]_i_4_n_0 ,\p2_data_0[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[23]_i_1 
       (.CI(\p2_data_0_reg[19]_i_1_n_0 ),
        .CO({\p2_data_0_reg[23]_i_1_n_0 ,\p2_data_0_reg[23]_i_1_n_1 ,\p2_data_0_reg[23]_i_1_n_2 ,\p2_data_0_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[23] ,\p1_data_1_reg_n_0_[22] ,\p1_data_1_reg_n_0_[21] ,\p1_data_1_reg_n_0_[20] }),
        .O({\p2_data_0_reg[23]_i_1_n_4 ,\p2_data_0_reg[23]_i_1_n_5 ,\p2_data_0_reg[23]_i_1_n_6 ,\p2_data_0_reg[23]_i_1_n_7 }),
        .S({\p2_data_0[23]_i_2_n_0 ,\p2_data_0[23]_i_3_n_0 ,\p2_data_0[23]_i_4_n_0 ,\p2_data_0[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[24]_i_1_n_3 ),
        .Q(\p2_data_0_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[24]_i_1 
       (.CI(\p2_data_0_reg[23]_i_1_n_0 ),
        .CO({\NLW_p2_data_0_reg[24]_i_1_CO_UNCONNECTED [3:1],\p2_data_0_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_p2_data_0_reg[24]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p2_data_0_reg[3]_i_1_n_0 ,\p2_data_0_reg[3]_i_1_n_1 ,\p2_data_0_reg[3]_i_1_n_2 ,\p2_data_0_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[3] ,\p1_data_1_reg_n_0_[2] ,\p1_data_1_reg_n_0_[1] ,\p1_data_1_reg_n_0_[0] }),
        .O({\p2_data_0_reg[3]_i_1_n_4 ,\p2_data_0_reg[3]_i_1_n_5 ,\p2_data_0_reg[3]_i_1_n_6 ,\p2_data_0_reg[3]_i_1_n_7 }),
        .S({\p2_data_0[3]_i_2_n_0 ,\p2_data_0[3]_i_3_n_0 ,\p2_data_0[3]_i_4_n_0 ,\p2_data_0[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[7]_i_1 
       (.CI(\p2_data_0_reg[3]_i_1_n_0 ),
        .CO({\p2_data_0_reg[7]_i_1_n_0 ,\p2_data_0_reg[7]_i_1_n_1 ,\p2_data_0_reg[7]_i_1_n_2 ,\p2_data_0_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[7] ,\p1_data_1_reg_n_0_[6] ,\p1_data_1_reg_n_0_[5] ,\p1_data_1_reg_n_0_[4] }),
        .O({\p2_data_0_reg[7]_i_1_n_4 ,\p2_data_0_reg[7]_i_1_n_5 ,\p2_data_0_reg[7]_i_1_n_6 ,\p2_data_0_reg[7]_i_1_n_7 }),
        .S({\p2_data_0[7]_i_2_n_0 ,\p2_data_0[7]_i_3_n_0 ,\p2_data_0[7]_i_4_n_0 ,\p2_data_0[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_1[16]_i_1 
       (.I0(\p1_data_3_reg_n_0_[16] ),
        .I1(\p1_data_4_reg_n_0_[16] ),
        .O(\p2_data_1[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[19]_i_2 
       (.I0(\p1_data_3_reg_n_0_[19] ),
        .O(\p2_data_1[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[19]_i_3 
       (.I0(\p1_data_3_reg_n_0_[18] ),
        .O(\p2_data_1[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[19]_i_4 
       (.I0(\p1_data_3_reg_n_0_[17] ),
        .O(\p2_data_1[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_1[19]_i_5 
       (.I0(\p1_data_3_reg_n_0_[16] ),
        .I1(\p1_data_4_reg_n_0_[16] ),
        .O(\p2_data_1[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[23]_i_2 
       (.I0(\p1_data_3_reg_n_0_[23] ),
        .O(\p2_data_1[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[23]_i_3 
       (.I0(\p1_data_3_reg_n_0_[22] ),
        .O(\p2_data_1[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[23]_i_4 
       (.I0(\p1_data_3_reg_n_0_[21] ),
        .O(\p2_data_1[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[23]_i_5 
       (.I0(\p1_data_3_reg_n_0_[20] ),
        .O(\p2_data_1[23]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[0] ),
        .Q(\p2_data_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[10] ),
        .Q(\p2_data_1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[11] ),
        .Q(\p2_data_1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[12] ),
        .Q(\p2_data_1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[13] ),
        .Q(\p2_data_1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[14] ),
        .Q(\p2_data_1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[15] ),
        .Q(\p2_data_1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1[16]_i_1_n_0 ),
        .Q(\p2_data_1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[19]_i_1_n_6 ),
        .Q(\p2_data_1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[19]_i_1_n_5 ),
        .Q(\p2_data_1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[19]_i_1_n_4 ),
        .Q(\p2_data_1_reg_n_0_[19] ),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\p2_data_1_reg[19]_i_1_n_0 ,\p2_data_1_reg[19]_i_1_n_1 ,\p2_data_1_reg[19]_i_1_n_2 ,\p2_data_1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_3_reg_n_0_[19] ,\p1_data_3_reg_n_0_[18] ,\p1_data_3_reg_n_0_[17] ,\p1_data_3_reg_n_0_[16] }),
        .O({\p2_data_1_reg[19]_i_1_n_4 ,\p2_data_1_reg[19]_i_1_n_5 ,\p2_data_1_reg[19]_i_1_n_6 ,\NLW_p2_data_1_reg[19]_i_1_O_UNCONNECTED [0]}),
        .S({\p2_data_1[19]_i_2_n_0 ,\p2_data_1[19]_i_3_n_0 ,\p2_data_1[19]_i_4_n_0 ,\p2_data_1[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[1] ),
        .Q(\p2_data_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[23]_i_1_n_7 ),
        .Q(\p2_data_1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[23]_i_1_n_6 ),
        .Q(\p2_data_1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[23]_i_1_n_5 ),
        .Q(\p2_data_1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[23]_i_1_n_4 ),
        .Q(\p2_data_1_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[23]_i_1 
       (.CI(\p2_data_1_reg[19]_i_1_n_0 ),
        .CO({\p2_data_1_reg[23]_i_1_n_0 ,\p2_data_1_reg[23]_i_1_n_1 ,\p2_data_1_reg[23]_i_1_n_2 ,\p2_data_1_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_3_reg_n_0_[23] ,\p1_data_3_reg_n_0_[22] ,\p1_data_3_reg_n_0_[21] ,\p1_data_3_reg_n_0_[20] }),
        .O({\p2_data_1_reg[23]_i_1_n_4 ,\p2_data_1_reg[23]_i_1_n_5 ,\p2_data_1_reg[23]_i_1_n_6 ,\p2_data_1_reg[23]_i_1_n_7 }),
        .S({\p2_data_1[23]_i_2_n_0 ,\p2_data_1[23]_i_3_n_0 ,\p2_data_1[23]_i_4_n_0 ,\p2_data_1[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[24]_i_1_n_3 ),
        .Q(\p2_data_1_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[24]_i_1 
       (.CI(\p2_data_1_reg[23]_i_1_n_0 ),
        .CO({\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED [3:1],\p2_data_1_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_p2_data_1_reg[24]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[2] ),
        .Q(\p2_data_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[3] ),
        .Q(\p2_data_1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[4] ),
        .Q(\p2_data_1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[5] ),
        .Q(\p2_data_1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[6] ),
        .Q(\p2_data_1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[7] ),
        .Q(\p2_data_1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[8] ),
        .Q(\p2_data_1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[9] ),
        .Q(\p2_data_1_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_10 
       (.I0(\p2_data_0_reg_n_0_[9] ),
        .I1(\p2_data_1_reg_n_0_[9] ),
        .O(\p3_data[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_11 
       (.I0(\p2_data_0_reg_n_0_[8] ),
        .I1(\p2_data_1_reg_n_0_[8] ),
        .O(\p3_data[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_13 
       (.I0(\p2_data_0_reg_n_0_[7] ),
        .I1(\p2_data_1_reg_n_0_[7] ),
        .O(\p3_data[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_14 
       (.I0(\p2_data_0_reg_n_0_[6] ),
        .I1(\p2_data_1_reg_n_0_[6] ),
        .O(\p3_data[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_15 
       (.I0(\p2_data_0_reg_n_0_[5] ),
        .I1(\p2_data_1_reg_n_0_[5] ),
        .O(\p3_data[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_16 
       (.I0(\p2_data_0_reg_n_0_[4] ),
        .I1(\p2_data_1_reg_n_0_[4] ),
        .O(\p3_data[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_17 
       (.I0(\p2_data_0_reg_n_0_[3] ),
        .I1(\p2_data_1_reg_n_0_[3] ),
        .O(\p3_data[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_18 
       (.I0(\p2_data_0_reg_n_0_[2] ),
        .I1(\p2_data_1_reg_n_0_[2] ),
        .O(\p3_data[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_19 
       (.I0(\p2_data_0_reg_n_0_[1] ),
        .I1(\p2_data_1_reg_n_0_[1] ),
        .O(\p3_data[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_20 
       (.I0(\p2_data_0_reg_n_0_[0] ),
        .I1(\p2_data_1_reg_n_0_[0] ),
        .O(\p3_data[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_3 
       (.I0(\p2_data_0_reg_n_0_[15] ),
        .I1(\p2_data_1_reg_n_0_[15] ),
        .O(\p3_data[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_4 
       (.I0(\p2_data_0_reg_n_0_[14] ),
        .I1(\p2_data_1_reg_n_0_[14] ),
        .O(\p3_data[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_5 
       (.I0(\p2_data_0_reg_n_0_[13] ),
        .I1(\p2_data_1_reg_n_0_[13] ),
        .O(\p3_data[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_6 
       (.I0(\p2_data_0_reg_n_0_[12] ),
        .I1(\p2_data_1_reg_n_0_[12] ),
        .O(\p3_data[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_8 
       (.I0(\p2_data_0_reg_n_0_[11] ),
        .I1(\p2_data_1_reg_n_0_[11] ),
        .O(\p3_data[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_9 
       (.I0(\p2_data_0_reg_n_0_[10] ),
        .I1(\p2_data_1_reg_n_0_[10] ),
        .O(\p3_data[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_2 
       (.I0(\p2_data_0_reg_n_0_[19] ),
        .I1(\p2_data_1_reg_n_0_[19] ),
        .O(\p3_data[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_3 
       (.I0(\p2_data_0_reg_n_0_[18] ),
        .I1(\p2_data_1_reg_n_0_[18] ),
        .O(\p3_data[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_4 
       (.I0(\p2_data_0_reg_n_0_[17] ),
        .I1(\p2_data_1_reg_n_0_[17] ),
        .O(\p3_data[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_5 
       (.I0(\p2_data_0_reg_n_0_[16] ),
        .I1(\p2_data_1_reg_n_0_[16] ),
        .O(\p3_data[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_2 
       (.I0(\p2_data_0_reg_n_0_[23] ),
        .I1(\p2_data_1_reg_n_0_[23] ),
        .O(\p3_data[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_3 
       (.I0(\p2_data_0_reg_n_0_[22] ),
        .I1(\p2_data_1_reg_n_0_[22] ),
        .O(\p3_data[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_4 
       (.I0(\p2_data_0_reg_n_0_[21] ),
        .I1(\p2_data_1_reg_n_0_[21] ),
        .O(\p3_data[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_5 
       (.I0(\p2_data_0_reg_n_0_[20] ),
        .I1(\p2_data_1_reg_n_0_[20] ),
        .O(\p3_data[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[24]_i_2 
       (.I0(\p2_data_0_reg_n_0_[24] ),
        .I1(\p2_data_1_reg_n_0_[24] ),
        .O(\p3_data[24]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_6 ),
        .Q(\p3_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_5 ),
        .Q(\p3_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_4 ),
        .Q(\p3_data_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[15]_i_1 
       (.CI(\p3_data_reg[15]_i_2_n_0 ),
        .CO({\p3_data_reg[15]_i_1_n_0 ,\p3_data_reg[15]_i_1_n_1 ,\p3_data_reg[15]_i_1_n_2 ,\p3_data_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[15] ,\p2_data_0_reg_n_0_[14] ,\p2_data_0_reg_n_0_[13] ,\p2_data_0_reg_n_0_[12] }),
        .O({\p3_data_reg[15]_i_1_n_4 ,\p3_data_reg[15]_i_1_n_5 ,\p3_data_reg[15]_i_1_n_6 ,\p3_data_reg[15]_i_1_n_7 }),
        .S({\p3_data[15]_i_3_n_0 ,\p3_data[15]_i_4_n_0 ,\p3_data[15]_i_5_n_0 ,\p3_data[15]_i_6_n_0 }));
  CARRY4 \p3_data_reg[15]_i_12 
       (.CI(1'b0),
        .CO({\p3_data_reg[15]_i_12_n_0 ,\p3_data_reg[15]_i_12_n_1 ,\p3_data_reg[15]_i_12_n_2 ,\p3_data_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[3] ,\p2_data_0_reg_n_0_[2] ,\p2_data_0_reg_n_0_[1] ,\p2_data_0_reg_n_0_[0] }),
        .O(\NLW_p3_data_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_17_n_0 ,\p3_data[15]_i_18_n_0 ,\p3_data[15]_i_19_n_0 ,\p3_data[15]_i_20_n_0 }));
  CARRY4 \p3_data_reg[15]_i_2 
       (.CI(\p3_data_reg[15]_i_7_n_0 ),
        .CO({\p3_data_reg[15]_i_2_n_0 ,\p3_data_reg[15]_i_2_n_1 ,\p3_data_reg[15]_i_2_n_2 ,\p3_data_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[11] ,\p2_data_0_reg_n_0_[10] ,\p2_data_0_reg_n_0_[9] ,\p2_data_0_reg_n_0_[8] }),
        .O(\NLW_p3_data_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_8_n_0 ,\p3_data[15]_i_9_n_0 ,\p3_data[15]_i_10_n_0 ,\p3_data[15]_i_11_n_0 }));
  CARRY4 \p3_data_reg[15]_i_7 
       (.CI(\p3_data_reg[15]_i_12_n_0 ),
        .CO({\p3_data_reg[15]_i_7_n_0 ,\p3_data_reg[15]_i_7_n_1 ,\p3_data_reg[15]_i_7_n_2 ,\p3_data_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[7] ,\p2_data_0_reg_n_0_[6] ,\p2_data_0_reg_n_0_[5] ,\p2_data_0_reg_n_0_[4] }),
        .O(\NLW_p3_data_reg[15]_i_7_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_13_n_0 ,\p3_data[15]_i_14_n_0 ,\p3_data[15]_i_15_n_0 ,\p3_data[15]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_6 ),
        .Q(\p3_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_5 ),
        .Q(\p3_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_4 ),
        .Q(\p3_data_reg_n_0_[19] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[19]_i_1 
       (.CI(\p3_data_reg[15]_i_1_n_0 ),
        .CO({\p3_data_reg[19]_i_1_n_0 ,\p3_data_reg[19]_i_1_n_1 ,\p3_data_reg[19]_i_1_n_2 ,\p3_data_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[19] ,\p2_data_0_reg_n_0_[18] ,\p2_data_0_reg_n_0_[17] ,\p2_data_0_reg_n_0_[16] }),
        .O({\p3_data_reg[19]_i_1_n_4 ,\p3_data_reg[19]_i_1_n_5 ,\p3_data_reg[19]_i_1_n_6 ,\p3_data_reg[19]_i_1_n_7 }),
        .S({\p3_data[19]_i_2_n_0 ,\p3_data[19]_i_3_n_0 ,\p3_data[19]_i_4_n_0 ,\p3_data[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_6 ),
        .Q(\p3_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_5 ),
        .Q(\p3_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_4 ),
        .Q(\p3_data_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[23]_i_1 
       (.CI(\p3_data_reg[19]_i_1_n_0 ),
        .CO({\p3_data_reg[23]_i_1_n_0 ,\p3_data_reg[23]_i_1_n_1 ,\p3_data_reg[23]_i_1_n_2 ,\p3_data_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[23] ,\p2_data_0_reg_n_0_[22] ,\p2_data_0_reg_n_0_[21] ,\p2_data_0_reg_n_0_[20] }),
        .O({\p3_data_reg[23]_i_1_n_4 ,\p3_data_reg[23]_i_1_n_5 ,\p3_data_reg[23]_i_1_n_6 ,\p3_data_reg[23]_i_1_n_7 }),
        .S({\p3_data[23]_i_2_n_0 ,\p3_data[23]_i_3_n_0 ,\p3_data[23]_i_4_n_0 ,\p3_data[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[24]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[24]_i_1 
       (.CI(\p3_data_reg[23]_i_1_n_0 ),
        .CO(\NLW_p3_data_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p3_data_reg[24]_i_1_O_UNCONNECTED [3:1],\p3_data_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\p3_data[24]_i_2_n_0 }));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_add" *) 
module system_axi_hdmi_core_0_ad_csc_1_add__parameterized1
   (\hdmi_24_data_reg[7] ,
    D,
    hdmi_clk,
    O73,
    O74,
    p1_data_4);
  output [7:0]\hdmi_24_data_reg[7] ;
  input [23:0]D;
  input hdmi_clk;
  input [24:0]O73;
  input [24:0]O74;
  input [0:0]p1_data_4;

  wire [23:0]D;
  wire [24:0]O73;
  wire [24:0]O74;
  wire \data_p[0]_i_1_n_0 ;
  wire \data_p[1]_i_1_n_0 ;
  wire \data_p[2]_i_1_n_0 ;
  wire \data_p[3]_i_1_n_0 ;
  wire \data_p[4]_i_1_n_0 ;
  wire \data_p[5]_i_1_n_0 ;
  wire \data_p[6]_i_1_n_0 ;
  wire \data_p[7]_i_1_n_0 ;
  wire [7:0]\hdmi_24_data_reg[7] ;
  wire hdmi_clk;
  wire \p1_data_1_reg_n_0_[0] ;
  wire \p1_data_1_reg_n_0_[10] ;
  wire \p1_data_1_reg_n_0_[11] ;
  wire \p1_data_1_reg_n_0_[12] ;
  wire \p1_data_1_reg_n_0_[13] ;
  wire \p1_data_1_reg_n_0_[14] ;
  wire \p1_data_1_reg_n_0_[15] ;
  wire \p1_data_1_reg_n_0_[16] ;
  wire \p1_data_1_reg_n_0_[17] ;
  wire \p1_data_1_reg_n_0_[18] ;
  wire \p1_data_1_reg_n_0_[19] ;
  wire \p1_data_1_reg_n_0_[1] ;
  wire \p1_data_1_reg_n_0_[20] ;
  wire \p1_data_1_reg_n_0_[21] ;
  wire \p1_data_1_reg_n_0_[22] ;
  wire \p1_data_1_reg_n_0_[23] ;
  wire \p1_data_1_reg_n_0_[24] ;
  wire \p1_data_1_reg_n_0_[2] ;
  wire \p1_data_1_reg_n_0_[3] ;
  wire \p1_data_1_reg_n_0_[4] ;
  wire \p1_data_1_reg_n_0_[5] ;
  wire \p1_data_1_reg_n_0_[6] ;
  wire \p1_data_1_reg_n_0_[7] ;
  wire \p1_data_1_reg_n_0_[8] ;
  wire \p1_data_1_reg_n_0_[9] ;
  wire \p1_data_2_reg_n_0_[0] ;
  wire \p1_data_2_reg_n_0_[10] ;
  wire \p1_data_2_reg_n_0_[11] ;
  wire \p1_data_2_reg_n_0_[12] ;
  wire \p1_data_2_reg_n_0_[13] ;
  wire \p1_data_2_reg_n_0_[14] ;
  wire \p1_data_2_reg_n_0_[15] ;
  wire \p1_data_2_reg_n_0_[16] ;
  wire \p1_data_2_reg_n_0_[17] ;
  wire \p1_data_2_reg_n_0_[18] ;
  wire \p1_data_2_reg_n_0_[19] ;
  wire \p1_data_2_reg_n_0_[1] ;
  wire \p1_data_2_reg_n_0_[20] ;
  wire \p1_data_2_reg_n_0_[21] ;
  wire \p1_data_2_reg_n_0_[22] ;
  wire \p1_data_2_reg_n_0_[23] ;
  wire \p1_data_2_reg_n_0_[24] ;
  wire \p1_data_2_reg_n_0_[2] ;
  wire \p1_data_2_reg_n_0_[3] ;
  wire \p1_data_2_reg_n_0_[4] ;
  wire \p1_data_2_reg_n_0_[5] ;
  wire \p1_data_2_reg_n_0_[6] ;
  wire \p1_data_2_reg_n_0_[7] ;
  wire \p1_data_2_reg_n_0_[8] ;
  wire \p1_data_2_reg_n_0_[9] ;
  wire \p1_data_3_reg_n_0_[0] ;
  wire \p1_data_3_reg_n_0_[10] ;
  wire \p1_data_3_reg_n_0_[11] ;
  wire \p1_data_3_reg_n_0_[12] ;
  wire \p1_data_3_reg_n_0_[13] ;
  wire \p1_data_3_reg_n_0_[14] ;
  wire \p1_data_3_reg_n_0_[15] ;
  wire \p1_data_3_reg_n_0_[16] ;
  wire \p1_data_3_reg_n_0_[17] ;
  wire \p1_data_3_reg_n_0_[18] ;
  wire \p1_data_3_reg_n_0_[19] ;
  wire \p1_data_3_reg_n_0_[1] ;
  wire \p1_data_3_reg_n_0_[20] ;
  wire \p1_data_3_reg_n_0_[21] ;
  wire \p1_data_3_reg_n_0_[22] ;
  wire \p1_data_3_reg_n_0_[23] ;
  wire \p1_data_3_reg_n_0_[2] ;
  wire \p1_data_3_reg_n_0_[3] ;
  wire \p1_data_3_reg_n_0_[4] ;
  wire \p1_data_3_reg_n_0_[5] ;
  wire \p1_data_3_reg_n_0_[6] ;
  wire \p1_data_3_reg_n_0_[7] ;
  wire \p1_data_3_reg_n_0_[8] ;
  wire \p1_data_3_reg_n_0_[9] ;
  wire [0:0]p1_data_4;
  wire \p2_data_0[11]_i_2_n_0 ;
  wire \p2_data_0[11]_i_3_n_0 ;
  wire \p2_data_0[11]_i_4_n_0 ;
  wire \p2_data_0[11]_i_5_n_0 ;
  wire \p2_data_0[15]_i_2_n_0 ;
  wire \p2_data_0[15]_i_3_n_0 ;
  wire \p2_data_0[15]_i_4_n_0 ;
  wire \p2_data_0[15]_i_5_n_0 ;
  wire \p2_data_0[19]_i_2_n_0 ;
  wire \p2_data_0[19]_i_3_n_0 ;
  wire \p2_data_0[19]_i_4_n_0 ;
  wire \p2_data_0[19]_i_5_n_0 ;
  wire \p2_data_0[23]_i_2_n_0 ;
  wire \p2_data_0[23]_i_3_n_0 ;
  wire \p2_data_0[23]_i_4_n_0 ;
  wire \p2_data_0[23]_i_5_n_0 ;
  wire \p2_data_0[24]_i_2_n_0 ;
  wire \p2_data_0[3]_i_2_n_0 ;
  wire \p2_data_0[3]_i_3_n_0 ;
  wire \p2_data_0[3]_i_4_n_0 ;
  wire \p2_data_0[3]_i_5_n_0 ;
  wire \p2_data_0[7]_i_2_n_0 ;
  wire \p2_data_0[7]_i_3_n_0 ;
  wire \p2_data_0[7]_i_4_n_0 ;
  wire \p2_data_0[7]_i_5_n_0 ;
  wire \p2_data_0_reg[11]_i_1_n_0 ;
  wire \p2_data_0_reg[11]_i_1_n_1 ;
  wire \p2_data_0_reg[11]_i_1_n_2 ;
  wire \p2_data_0_reg[11]_i_1_n_3 ;
  wire \p2_data_0_reg[11]_i_1_n_4 ;
  wire \p2_data_0_reg[11]_i_1_n_5 ;
  wire \p2_data_0_reg[11]_i_1_n_6 ;
  wire \p2_data_0_reg[11]_i_1_n_7 ;
  wire \p2_data_0_reg[15]_i_1_n_0 ;
  wire \p2_data_0_reg[15]_i_1_n_1 ;
  wire \p2_data_0_reg[15]_i_1_n_2 ;
  wire \p2_data_0_reg[15]_i_1_n_3 ;
  wire \p2_data_0_reg[15]_i_1_n_4 ;
  wire \p2_data_0_reg[15]_i_1_n_5 ;
  wire \p2_data_0_reg[15]_i_1_n_6 ;
  wire \p2_data_0_reg[15]_i_1_n_7 ;
  wire \p2_data_0_reg[19]_i_1_n_0 ;
  wire \p2_data_0_reg[19]_i_1_n_1 ;
  wire \p2_data_0_reg[19]_i_1_n_2 ;
  wire \p2_data_0_reg[19]_i_1_n_3 ;
  wire \p2_data_0_reg[19]_i_1_n_4 ;
  wire \p2_data_0_reg[19]_i_1_n_5 ;
  wire \p2_data_0_reg[19]_i_1_n_6 ;
  wire \p2_data_0_reg[19]_i_1_n_7 ;
  wire \p2_data_0_reg[23]_i_1_n_0 ;
  wire \p2_data_0_reg[23]_i_1_n_1 ;
  wire \p2_data_0_reg[23]_i_1_n_2 ;
  wire \p2_data_0_reg[23]_i_1_n_3 ;
  wire \p2_data_0_reg[23]_i_1_n_4 ;
  wire \p2_data_0_reg[23]_i_1_n_5 ;
  wire \p2_data_0_reg[23]_i_1_n_6 ;
  wire \p2_data_0_reg[23]_i_1_n_7 ;
  wire \p2_data_0_reg[24]_i_1_n_7 ;
  wire \p2_data_0_reg[3]_i_1_n_0 ;
  wire \p2_data_0_reg[3]_i_1_n_1 ;
  wire \p2_data_0_reg[3]_i_1_n_2 ;
  wire \p2_data_0_reg[3]_i_1_n_3 ;
  wire \p2_data_0_reg[3]_i_1_n_4 ;
  wire \p2_data_0_reg[3]_i_1_n_5 ;
  wire \p2_data_0_reg[3]_i_1_n_6 ;
  wire \p2_data_0_reg[3]_i_1_n_7 ;
  wire \p2_data_0_reg[7]_i_1_n_0 ;
  wire \p2_data_0_reg[7]_i_1_n_1 ;
  wire \p2_data_0_reg[7]_i_1_n_2 ;
  wire \p2_data_0_reg[7]_i_1_n_3 ;
  wire \p2_data_0_reg[7]_i_1_n_4 ;
  wire \p2_data_0_reg[7]_i_1_n_5 ;
  wire \p2_data_0_reg[7]_i_1_n_6 ;
  wire \p2_data_0_reg[7]_i_1_n_7 ;
  wire \p2_data_0_reg_n_0_[0] ;
  wire \p2_data_0_reg_n_0_[10] ;
  wire \p2_data_0_reg_n_0_[11] ;
  wire \p2_data_0_reg_n_0_[12] ;
  wire \p2_data_0_reg_n_0_[13] ;
  wire \p2_data_0_reg_n_0_[14] ;
  wire \p2_data_0_reg_n_0_[15] ;
  wire \p2_data_0_reg_n_0_[16] ;
  wire \p2_data_0_reg_n_0_[17] ;
  wire \p2_data_0_reg_n_0_[18] ;
  wire \p2_data_0_reg_n_0_[19] ;
  wire \p2_data_0_reg_n_0_[1] ;
  wire \p2_data_0_reg_n_0_[20] ;
  wire \p2_data_0_reg_n_0_[21] ;
  wire \p2_data_0_reg_n_0_[22] ;
  wire \p2_data_0_reg_n_0_[23] ;
  wire \p2_data_0_reg_n_0_[24] ;
  wire \p2_data_0_reg_n_0_[2] ;
  wire \p2_data_0_reg_n_0_[3] ;
  wire \p2_data_0_reg_n_0_[4] ;
  wire \p2_data_0_reg_n_0_[5] ;
  wire \p2_data_0_reg_n_0_[6] ;
  wire \p2_data_0_reg_n_0_[7] ;
  wire \p2_data_0_reg_n_0_[8] ;
  wire \p2_data_0_reg_n_0_[9] ;
  wire \p2_data_1[19]_i_1_n_0 ;
  wire \p2_data_1[22]_i_2__0_n_0 ;
  wire \p2_data_1[22]_i_3__0_n_0 ;
  wire \p2_data_1[22]_i_4__0_n_0 ;
  wire \p2_data_1[22]_i_5_n_0 ;
  wire \p2_data_1[24]_i_2__0_n_0 ;
  wire \p2_data_1_reg[22]_i_1_n_0 ;
  wire \p2_data_1_reg[22]_i_1_n_1 ;
  wire \p2_data_1_reg[22]_i_1_n_2 ;
  wire \p2_data_1_reg[22]_i_1_n_3 ;
  wire \p2_data_1_reg[22]_i_1_n_4 ;
  wire \p2_data_1_reg[22]_i_1_n_5 ;
  wire \p2_data_1_reg[22]_i_1_n_6 ;
  wire \p2_data_1_reg[24]_i_1_n_2 ;
  wire \p2_data_1_reg[24]_i_1_n_7 ;
  wire \p2_data_1_reg_n_0_[0] ;
  wire \p2_data_1_reg_n_0_[10] ;
  wire \p2_data_1_reg_n_0_[11] ;
  wire \p2_data_1_reg_n_0_[12] ;
  wire \p2_data_1_reg_n_0_[13] ;
  wire \p2_data_1_reg_n_0_[14] ;
  wire \p2_data_1_reg_n_0_[15] ;
  wire \p2_data_1_reg_n_0_[16] ;
  wire \p2_data_1_reg_n_0_[17] ;
  wire \p2_data_1_reg_n_0_[18] ;
  wire \p2_data_1_reg_n_0_[19] ;
  wire \p2_data_1_reg_n_0_[1] ;
  wire \p2_data_1_reg_n_0_[20] ;
  wire \p2_data_1_reg_n_0_[21] ;
  wire \p2_data_1_reg_n_0_[22] ;
  wire \p2_data_1_reg_n_0_[23] ;
  wire \p2_data_1_reg_n_0_[24] ;
  wire \p2_data_1_reg_n_0_[2] ;
  wire \p2_data_1_reg_n_0_[3] ;
  wire \p2_data_1_reg_n_0_[4] ;
  wire \p2_data_1_reg_n_0_[5] ;
  wire \p2_data_1_reg_n_0_[6] ;
  wire \p2_data_1_reg_n_0_[7] ;
  wire \p2_data_1_reg_n_0_[8] ;
  wire \p2_data_1_reg_n_0_[9] ;
  wire \p3_data[15]_i_10_n_0 ;
  wire \p3_data[15]_i_11_n_0 ;
  wire \p3_data[15]_i_13_n_0 ;
  wire \p3_data[15]_i_14_n_0 ;
  wire \p3_data[15]_i_15_n_0 ;
  wire \p3_data[15]_i_16_n_0 ;
  wire \p3_data[15]_i_17_n_0 ;
  wire \p3_data[15]_i_18_n_0 ;
  wire \p3_data[15]_i_19_n_0 ;
  wire \p3_data[15]_i_20_n_0 ;
  wire \p3_data[15]_i_3_n_0 ;
  wire \p3_data[15]_i_4_n_0 ;
  wire \p3_data[15]_i_5_n_0 ;
  wire \p3_data[15]_i_6_n_0 ;
  wire \p3_data[15]_i_8_n_0 ;
  wire \p3_data[15]_i_9_n_0 ;
  wire \p3_data[19]_i_2_n_0 ;
  wire \p3_data[19]_i_3_n_0 ;
  wire \p3_data[19]_i_4_n_0 ;
  wire \p3_data[19]_i_5_n_0 ;
  wire \p3_data[23]_i_2_n_0 ;
  wire \p3_data[23]_i_3_n_0 ;
  wire \p3_data[23]_i_4_n_0 ;
  wire \p3_data[23]_i_5_n_0 ;
  wire \p3_data[24]_i_2_n_0 ;
  wire \p3_data_reg[15]_i_12_n_0 ;
  wire \p3_data_reg[15]_i_12_n_1 ;
  wire \p3_data_reg[15]_i_12_n_2 ;
  wire \p3_data_reg[15]_i_12_n_3 ;
  wire \p3_data_reg[15]_i_1_n_0 ;
  wire \p3_data_reg[15]_i_1_n_1 ;
  wire \p3_data_reg[15]_i_1_n_2 ;
  wire \p3_data_reg[15]_i_1_n_3 ;
  wire \p3_data_reg[15]_i_1_n_4 ;
  wire \p3_data_reg[15]_i_1_n_5 ;
  wire \p3_data_reg[15]_i_1_n_6 ;
  wire \p3_data_reg[15]_i_1_n_7 ;
  wire \p3_data_reg[15]_i_2_n_0 ;
  wire \p3_data_reg[15]_i_2_n_1 ;
  wire \p3_data_reg[15]_i_2_n_2 ;
  wire \p3_data_reg[15]_i_2_n_3 ;
  wire \p3_data_reg[15]_i_7_n_0 ;
  wire \p3_data_reg[15]_i_7_n_1 ;
  wire \p3_data_reg[15]_i_7_n_2 ;
  wire \p3_data_reg[15]_i_7_n_3 ;
  wire \p3_data_reg[19]_i_1_n_0 ;
  wire \p3_data_reg[19]_i_1_n_1 ;
  wire \p3_data_reg[19]_i_1_n_2 ;
  wire \p3_data_reg[19]_i_1_n_3 ;
  wire \p3_data_reg[19]_i_1_n_4 ;
  wire \p3_data_reg[19]_i_1_n_5 ;
  wire \p3_data_reg[19]_i_1_n_6 ;
  wire \p3_data_reg[19]_i_1_n_7 ;
  wire \p3_data_reg[23]_i_1_n_0 ;
  wire \p3_data_reg[23]_i_1_n_1 ;
  wire \p3_data_reg[23]_i_1_n_2 ;
  wire \p3_data_reg[23]_i_1_n_3 ;
  wire \p3_data_reg[23]_i_1_n_4 ;
  wire \p3_data_reg[23]_i_1_n_5 ;
  wire \p3_data_reg[23]_i_1_n_6 ;
  wire \p3_data_reg[23]_i_1_n_7 ;
  wire \p3_data_reg[24]_i_1_n_7 ;
  wire \p3_data_reg_n_0_[12] ;
  wire \p3_data_reg_n_0_[13] ;
  wire \p3_data_reg_n_0_[14] ;
  wire \p3_data_reg_n_0_[15] ;
  wire \p3_data_reg_n_0_[16] ;
  wire \p3_data_reg_n_0_[17] ;
  wire \p3_data_reg_n_0_[18] ;
  wire \p3_data_reg_n_0_[19] ;
  wire \p3_data_reg_n_0_[20] ;
  wire \p3_data_reg_n_0_[21] ;
  wire \p3_data_reg_n_0_[22] ;
  wire \p3_data_reg_n_0_[23] ;
  wire \p3_data_reg_n_0_[24] ;
  wire [3:0]\NLW_p2_data_0_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p2_data_0_reg[24]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_p2_data_1_reg[22]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p2_data_1_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[15]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_p3_data_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p3_data_reg[24]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[0]_i_1 
       (.I0(\p3_data_reg_n_0_[12] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[1]_i_1 
       (.I0(\p3_data_reg_n_0_[13] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[2]_i_1 
       (.I0(\p3_data_reg_n_0_[14] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[3]_i_1 
       (.I0(\p3_data_reg_n_0_[15] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[4]_i_1 
       (.I0(\p3_data_reg_n_0_[16] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[5]_i_1 
       (.I0(\p3_data_reg_n_0_[17] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[6]_i_1 
       (.I0(\p3_data_reg_n_0_[18] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p[7]_i_1 
       (.I0(\p3_data_reg_n_0_[19] ),
        .I1(\p3_data_reg_n_0_[21] ),
        .I2(\p3_data_reg_n_0_[20] ),
        .I3(\p3_data_reg_n_0_[22] ),
        .I4(\p3_data_reg_n_0_[23] ),
        .O(\data_p[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[0]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [0]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[1]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [1]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[2]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [2]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[3]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [3]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[4]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [4]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[5]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [5]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[6]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [6]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\data_p[7]_i_1_n_0 ),
        .Q(\hdmi_24_data_reg[7] [7]),
        .R(\p3_data_reg_n_0_[24] ));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[0]),
        .Q(\p1_data_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[10]),
        .Q(\p1_data_1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[11]),
        .Q(\p1_data_1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[12]),
        .Q(\p1_data_1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[13]),
        .Q(\p1_data_1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[14]),
        .Q(\p1_data_1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[15]),
        .Q(\p1_data_1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[16]),
        .Q(\p1_data_1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[17]),
        .Q(\p1_data_1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[18]),
        .Q(\p1_data_1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[19]),
        .Q(\p1_data_1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[1]),
        .Q(\p1_data_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[20]),
        .Q(\p1_data_1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[21]),
        .Q(\p1_data_1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[22]),
        .Q(\p1_data_1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[23]),
        .Q(\p1_data_1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[24]),
        .Q(\p1_data_1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[2]),
        .Q(\p1_data_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[3]),
        .Q(\p1_data_1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[4]),
        .Q(\p1_data_1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[5]),
        .Q(\p1_data_1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[6]),
        .Q(\p1_data_1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[7]),
        .Q(\p1_data_1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[8]),
        .Q(\p1_data_1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_1_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O74[9]),
        .Q(\p1_data_1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[0]),
        .Q(\p1_data_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[10]),
        .Q(\p1_data_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[11]),
        .Q(\p1_data_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[12]),
        .Q(\p1_data_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[13]),
        .Q(\p1_data_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[14]),
        .Q(\p1_data_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[15]),
        .Q(\p1_data_2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[16]),
        .Q(\p1_data_2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[17]),
        .Q(\p1_data_2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[18]),
        .Q(\p1_data_2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[19]),
        .Q(\p1_data_2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[1]),
        .Q(\p1_data_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[20]),
        .Q(\p1_data_2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[21]),
        .Q(\p1_data_2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[22]),
        .Q(\p1_data_2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[23]),
        .Q(\p1_data_2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[24]),
        .Q(\p1_data_2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[2]),
        .Q(\p1_data_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[3]),
        .Q(\p1_data_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[4]),
        .Q(\p1_data_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[5]),
        .Q(\p1_data_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[6]),
        .Q(\p1_data_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[7]),
        .Q(\p1_data_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[8]),
        .Q(\p1_data_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_2_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(O73[9]),
        .Q(\p1_data_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\p1_data_3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\p1_data_3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\p1_data_3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\p1_data_3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\p1_data_3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\p1_data_3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\p1_data_3_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\p1_data_3_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\p1_data_3_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\p1_data_3_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\p1_data_3_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\p1_data_3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\p1_data_3_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\p1_data_3_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\p1_data_3_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\p1_data_3_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\p1_data_3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\p1_data_3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\p1_data_3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\p1_data_3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\p1_data_3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\p1_data_3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\p1_data_3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_data_3_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\p1_data_3_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_2 
       (.I0(\p1_data_1_reg_n_0_[11] ),
        .I1(\p1_data_2_reg_n_0_[11] ),
        .O(\p2_data_0[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_3 
       (.I0(\p1_data_1_reg_n_0_[10] ),
        .I1(\p1_data_2_reg_n_0_[10] ),
        .O(\p2_data_0[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_4 
       (.I0(\p1_data_1_reg_n_0_[9] ),
        .I1(\p1_data_2_reg_n_0_[9] ),
        .O(\p2_data_0[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[11]_i_5 
       (.I0(\p1_data_1_reg_n_0_[8] ),
        .I1(\p1_data_2_reg_n_0_[8] ),
        .O(\p2_data_0[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_2 
       (.I0(\p1_data_1_reg_n_0_[15] ),
        .I1(\p1_data_2_reg_n_0_[15] ),
        .O(\p2_data_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_3 
       (.I0(\p1_data_1_reg_n_0_[14] ),
        .I1(\p1_data_2_reg_n_0_[14] ),
        .O(\p2_data_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_4 
       (.I0(\p1_data_1_reg_n_0_[13] ),
        .I1(\p1_data_2_reg_n_0_[13] ),
        .O(\p2_data_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[15]_i_5 
       (.I0(\p1_data_1_reg_n_0_[12] ),
        .I1(\p1_data_2_reg_n_0_[12] ),
        .O(\p2_data_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_2 
       (.I0(\p1_data_1_reg_n_0_[19] ),
        .I1(\p1_data_2_reg_n_0_[19] ),
        .O(\p2_data_0[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_3 
       (.I0(\p1_data_1_reg_n_0_[18] ),
        .I1(\p1_data_2_reg_n_0_[18] ),
        .O(\p2_data_0[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_4 
       (.I0(\p1_data_1_reg_n_0_[17] ),
        .I1(\p1_data_2_reg_n_0_[17] ),
        .O(\p2_data_0[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[19]_i_5 
       (.I0(\p1_data_1_reg_n_0_[16] ),
        .I1(\p1_data_2_reg_n_0_[16] ),
        .O(\p2_data_0[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_2 
       (.I0(\p1_data_1_reg_n_0_[23] ),
        .I1(\p1_data_2_reg_n_0_[23] ),
        .O(\p2_data_0[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_3 
       (.I0(\p1_data_1_reg_n_0_[22] ),
        .I1(\p1_data_2_reg_n_0_[22] ),
        .O(\p2_data_0[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_4 
       (.I0(\p1_data_1_reg_n_0_[21] ),
        .I1(\p1_data_2_reg_n_0_[21] ),
        .O(\p2_data_0[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[23]_i_5 
       (.I0(\p1_data_1_reg_n_0_[20] ),
        .I1(\p1_data_2_reg_n_0_[20] ),
        .O(\p2_data_0[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[24]_i_2 
       (.I0(\p1_data_1_reg_n_0_[24] ),
        .I1(\p1_data_2_reg_n_0_[24] ),
        .O(\p2_data_0[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_2 
       (.I0(\p1_data_1_reg_n_0_[3] ),
        .I1(\p1_data_2_reg_n_0_[3] ),
        .O(\p2_data_0[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_3 
       (.I0(\p1_data_1_reg_n_0_[2] ),
        .I1(\p1_data_2_reg_n_0_[2] ),
        .O(\p2_data_0[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_4 
       (.I0(\p1_data_1_reg_n_0_[1] ),
        .I1(\p1_data_2_reg_n_0_[1] ),
        .O(\p2_data_0[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[3]_i_5 
       (.I0(\p1_data_1_reg_n_0_[0] ),
        .I1(\p1_data_2_reg_n_0_[0] ),
        .O(\p2_data_0[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_2 
       (.I0(\p1_data_1_reg_n_0_[7] ),
        .I1(\p1_data_2_reg_n_0_[7] ),
        .O(\p2_data_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_3 
       (.I0(\p1_data_1_reg_n_0_[6] ),
        .I1(\p1_data_2_reg_n_0_[6] ),
        .O(\p2_data_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_4 
       (.I0(\p1_data_1_reg_n_0_[5] ),
        .I1(\p1_data_2_reg_n_0_[5] ),
        .O(\p2_data_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_0[7]_i_5 
       (.I0(\p1_data_1_reg_n_0_[4] ),
        .I1(\p1_data_2_reg_n_0_[4] ),
        .O(\p2_data_0[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[11]_i_1 
       (.CI(\p2_data_0_reg[7]_i_1_n_0 ),
        .CO({\p2_data_0_reg[11]_i_1_n_0 ,\p2_data_0_reg[11]_i_1_n_1 ,\p2_data_0_reg[11]_i_1_n_2 ,\p2_data_0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[11] ,\p1_data_1_reg_n_0_[10] ,\p1_data_1_reg_n_0_[9] ,\p1_data_1_reg_n_0_[8] }),
        .O({\p2_data_0_reg[11]_i_1_n_4 ,\p2_data_0_reg[11]_i_1_n_5 ,\p2_data_0_reg[11]_i_1_n_6 ,\p2_data_0_reg[11]_i_1_n_7 }),
        .S({\p2_data_0[11]_i_2_n_0 ,\p2_data_0[11]_i_3_n_0 ,\p2_data_0[11]_i_4_n_0 ,\p2_data_0[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[15]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[15]_i_1 
       (.CI(\p2_data_0_reg[11]_i_1_n_0 ),
        .CO({\p2_data_0_reg[15]_i_1_n_0 ,\p2_data_0_reg[15]_i_1_n_1 ,\p2_data_0_reg[15]_i_1_n_2 ,\p2_data_0_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[15] ,\p1_data_1_reg_n_0_[14] ,\p1_data_1_reg_n_0_[13] ,\p1_data_1_reg_n_0_[12] }),
        .O({\p2_data_0_reg[15]_i_1_n_4 ,\p2_data_0_reg[15]_i_1_n_5 ,\p2_data_0_reg[15]_i_1_n_6 ,\p2_data_0_reg[15]_i_1_n_7 }),
        .S({\p2_data_0[15]_i_2_n_0 ,\p2_data_0[15]_i_3_n_0 ,\p2_data_0[15]_i_4_n_0 ,\p2_data_0[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[19]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[19] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[19]_i_1 
       (.CI(\p2_data_0_reg[15]_i_1_n_0 ),
        .CO({\p2_data_0_reg[19]_i_1_n_0 ,\p2_data_0_reg[19]_i_1_n_1 ,\p2_data_0_reg[19]_i_1_n_2 ,\p2_data_0_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[19] ,\p1_data_1_reg_n_0_[18] ,\p1_data_1_reg_n_0_[17] ,\p1_data_1_reg_n_0_[16] }),
        .O({\p2_data_0_reg[19]_i_1_n_4 ,\p2_data_0_reg[19]_i_1_n_5 ,\p2_data_0_reg[19]_i_1_n_6 ,\p2_data_0_reg[19]_i_1_n_7 }),
        .S({\p2_data_0[19]_i_2_n_0 ,\p2_data_0[19]_i_3_n_0 ,\p2_data_0[19]_i_4_n_0 ,\p2_data_0[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[23]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[23]_i_1 
       (.CI(\p2_data_0_reg[19]_i_1_n_0 ),
        .CO({\p2_data_0_reg[23]_i_1_n_0 ,\p2_data_0_reg[23]_i_1_n_1 ,\p2_data_0_reg[23]_i_1_n_2 ,\p2_data_0_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[23] ,\p1_data_1_reg_n_0_[22] ,\p1_data_1_reg_n_0_[21] ,\p1_data_1_reg_n_0_[20] }),
        .O({\p2_data_0_reg[23]_i_1_n_4 ,\p2_data_0_reg[23]_i_1_n_5 ,\p2_data_0_reg[23]_i_1_n_6 ,\p2_data_0_reg[23]_i_1_n_7 }),
        .S({\p2_data_0[23]_i_2_n_0 ,\p2_data_0[23]_i_3_n_0 ,\p2_data_0[23]_i_4_n_0 ,\p2_data_0[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[24]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[24]_i_1 
       (.CI(\p2_data_0_reg[23]_i_1_n_0 ),
        .CO(\NLW_p2_data_0_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p2_data_0_reg[24]_i_1_O_UNCONNECTED [3:1],\p2_data_0_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\p2_data_0[24]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[3]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p2_data_0_reg[3]_i_1_n_0 ,\p2_data_0_reg[3]_i_1_n_1 ,\p2_data_0_reg[3]_i_1_n_2 ,\p2_data_0_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[3] ,\p1_data_1_reg_n_0_[2] ,\p1_data_1_reg_n_0_[1] ,\p1_data_1_reg_n_0_[0] }),
        .O({\p2_data_0_reg[3]_i_1_n_4 ,\p2_data_0_reg[3]_i_1_n_5 ,\p2_data_0_reg[3]_i_1_n_6 ,\p2_data_0_reg[3]_i_1_n_7 }),
        .S({\p2_data_0[3]_i_2_n_0 ,\p2_data_0[3]_i_3_n_0 ,\p2_data_0[3]_i_4_n_0 ,\p2_data_0[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_5 ),
        .Q(\p2_data_0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[7]_i_1_n_4 ),
        .Q(\p2_data_0_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \p2_data_0_reg[7]_i_1 
       (.CI(\p2_data_0_reg[3]_i_1_n_0 ),
        .CO({\p2_data_0_reg[7]_i_1_n_0 ,\p2_data_0_reg[7]_i_1_n_1 ,\p2_data_0_reg[7]_i_1_n_2 ,\p2_data_0_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_1_reg_n_0_[7] ,\p1_data_1_reg_n_0_[6] ,\p1_data_1_reg_n_0_[5] ,\p1_data_1_reg_n_0_[4] }),
        .O({\p2_data_0_reg[7]_i_1_n_4 ,\p2_data_0_reg[7]_i_1_n_5 ,\p2_data_0_reg[7]_i_1_n_6 ,\p2_data_0_reg[7]_i_1_n_7 }),
        .S({\p2_data_0[7]_i_2_n_0 ,\p2_data_0[7]_i_3_n_0 ,\p2_data_0[7]_i_4_n_0 ,\p2_data_0[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_7 ),
        .Q(\p2_data_0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_0_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_0_reg[11]_i_1_n_6 ),
        .Q(\p2_data_0_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_1[19]_i_1 
       (.I0(\p1_data_3_reg_n_0_[19] ),
        .I1(p1_data_4),
        .O(\p2_data_1[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[22]_i_2__0 
       (.I0(\p1_data_3_reg_n_0_[22] ),
        .O(\p2_data_1[22]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[22]_i_3__0 
       (.I0(\p1_data_3_reg_n_0_[21] ),
        .O(\p2_data_1[22]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[22]_i_4__0 
       (.I0(\p1_data_3_reg_n_0_[20] ),
        .O(\p2_data_1[22]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_data_1[22]_i_5 
       (.I0(\p1_data_3_reg_n_0_[19] ),
        .I1(p1_data_4),
        .O(\p2_data_1[22]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p2_data_1[24]_i_2__0 
       (.I0(\p1_data_3_reg_n_0_[23] ),
        .O(\p2_data_1[24]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[0] ),
        .Q(\p2_data_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[10] ),
        .Q(\p2_data_1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[11] ),
        .Q(\p2_data_1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[12] ),
        .Q(\p2_data_1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[13] ),
        .Q(\p2_data_1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[14] ),
        .Q(\p2_data_1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[15] ),
        .Q(\p2_data_1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[16] ),
        .Q(\p2_data_1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[17] ),
        .Q(\p2_data_1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[18] ),
        .Q(\p2_data_1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1[19]_i_1_n_0 ),
        .Q(\p2_data_1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[1] ),
        .Q(\p2_data_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[22]_i_1_n_6 ),
        .Q(\p2_data_1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[22]_i_1_n_5 ),
        .Q(\p2_data_1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[22]_i_1_n_4 ),
        .Q(\p2_data_1_reg_n_0_[22] ),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[22]_i_1 
       (.CI(1'b0),
        .CO({\p2_data_1_reg[22]_i_1_n_0 ,\p2_data_1_reg[22]_i_1_n_1 ,\p2_data_1_reg[22]_i_1_n_2 ,\p2_data_1_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p1_data_3_reg_n_0_[22] ,\p1_data_3_reg_n_0_[21] ,\p1_data_3_reg_n_0_[20] ,\p1_data_3_reg_n_0_[19] }),
        .O({\p2_data_1_reg[22]_i_1_n_4 ,\p2_data_1_reg[22]_i_1_n_5 ,\p2_data_1_reg[22]_i_1_n_6 ,\NLW_p2_data_1_reg[22]_i_1_O_UNCONNECTED [0]}),
        .S({\p2_data_1[22]_i_2__0_n_0 ,\p2_data_1[22]_i_3__0_n_0 ,\p2_data_1[22]_i_4__0_n_0 ,\p2_data_1[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[24]_i_1_n_7 ),
        .Q(\p2_data_1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p2_data_1_reg[24]_i_1_n_2 ),
        .Q(\p2_data_1_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \p2_data_1_reg[24]_i_1 
       (.CI(\p2_data_1_reg[22]_i_1_n_0 ),
        .CO({\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED [3:2],\p2_data_1_reg[24]_i_1_n_2 ,\NLW_p2_data_1_reg[24]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\p1_data_3_reg_n_0_[23] }),
        .O({\NLW_p2_data_1_reg[24]_i_1_O_UNCONNECTED [3:1],\p2_data_1_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\p2_data_1[24]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[2] ),
        .Q(\p2_data_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[3] ),
        .Q(\p2_data_1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[4] ),
        .Q(\p2_data_1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[5] ),
        .Q(\p2_data_1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[6] ),
        .Q(\p2_data_1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[7] ),
        .Q(\p2_data_1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[8] ),
        .Q(\p2_data_1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p2_data_1_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p1_data_3_reg_n_0_[9] ),
        .Q(\p2_data_1_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_10 
       (.I0(\p2_data_0_reg_n_0_[9] ),
        .I1(\p2_data_1_reg_n_0_[9] ),
        .O(\p3_data[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_11 
       (.I0(\p2_data_0_reg_n_0_[8] ),
        .I1(\p2_data_1_reg_n_0_[8] ),
        .O(\p3_data[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_13 
       (.I0(\p2_data_0_reg_n_0_[7] ),
        .I1(\p2_data_1_reg_n_0_[7] ),
        .O(\p3_data[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_14 
       (.I0(\p2_data_0_reg_n_0_[6] ),
        .I1(\p2_data_1_reg_n_0_[6] ),
        .O(\p3_data[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_15 
       (.I0(\p2_data_0_reg_n_0_[5] ),
        .I1(\p2_data_1_reg_n_0_[5] ),
        .O(\p3_data[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_16 
       (.I0(\p2_data_0_reg_n_0_[4] ),
        .I1(\p2_data_1_reg_n_0_[4] ),
        .O(\p3_data[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_17 
       (.I0(\p2_data_0_reg_n_0_[3] ),
        .I1(\p2_data_1_reg_n_0_[3] ),
        .O(\p3_data[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_18 
       (.I0(\p2_data_0_reg_n_0_[2] ),
        .I1(\p2_data_1_reg_n_0_[2] ),
        .O(\p3_data[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_19 
       (.I0(\p2_data_0_reg_n_0_[1] ),
        .I1(\p2_data_1_reg_n_0_[1] ),
        .O(\p3_data[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_20 
       (.I0(\p2_data_0_reg_n_0_[0] ),
        .I1(\p2_data_1_reg_n_0_[0] ),
        .O(\p3_data[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_3 
       (.I0(\p2_data_0_reg_n_0_[15] ),
        .I1(\p2_data_1_reg_n_0_[15] ),
        .O(\p3_data[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_4 
       (.I0(\p2_data_0_reg_n_0_[14] ),
        .I1(\p2_data_1_reg_n_0_[14] ),
        .O(\p3_data[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_5 
       (.I0(\p2_data_0_reg_n_0_[13] ),
        .I1(\p2_data_1_reg_n_0_[13] ),
        .O(\p3_data[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_6 
       (.I0(\p2_data_0_reg_n_0_[12] ),
        .I1(\p2_data_1_reg_n_0_[12] ),
        .O(\p3_data[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_8 
       (.I0(\p2_data_0_reg_n_0_[11] ),
        .I1(\p2_data_1_reg_n_0_[11] ),
        .O(\p3_data[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[15]_i_9 
       (.I0(\p2_data_0_reg_n_0_[10] ),
        .I1(\p2_data_1_reg_n_0_[10] ),
        .O(\p3_data[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_2 
       (.I0(\p2_data_0_reg_n_0_[19] ),
        .I1(\p2_data_1_reg_n_0_[19] ),
        .O(\p3_data[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_3 
       (.I0(\p2_data_0_reg_n_0_[18] ),
        .I1(\p2_data_1_reg_n_0_[18] ),
        .O(\p3_data[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_4 
       (.I0(\p2_data_0_reg_n_0_[17] ),
        .I1(\p2_data_1_reg_n_0_[17] ),
        .O(\p3_data[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[19]_i_5 
       (.I0(\p2_data_0_reg_n_0_[16] ),
        .I1(\p2_data_1_reg_n_0_[16] ),
        .O(\p3_data[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_2 
       (.I0(\p2_data_0_reg_n_0_[23] ),
        .I1(\p2_data_1_reg_n_0_[23] ),
        .O(\p3_data[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_3 
       (.I0(\p2_data_0_reg_n_0_[22] ),
        .I1(\p2_data_1_reg_n_0_[22] ),
        .O(\p3_data[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_4 
       (.I0(\p2_data_0_reg_n_0_[21] ),
        .I1(\p2_data_1_reg_n_0_[21] ),
        .O(\p3_data[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[23]_i_5 
       (.I0(\p2_data_0_reg_n_0_[20] ),
        .I1(\p2_data_1_reg_n_0_[20] ),
        .O(\p3_data[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p3_data[24]_i_2 
       (.I0(\p2_data_0_reg_n_0_[24] ),
        .I1(\p2_data_1_reg_n_0_[24] ),
        .O(\p3_data[24]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_6 ),
        .Q(\p3_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_5 ),
        .Q(\p3_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[15]_i_1_n_4 ),
        .Q(\p3_data_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[15]_i_1 
       (.CI(\p3_data_reg[15]_i_2_n_0 ),
        .CO({\p3_data_reg[15]_i_1_n_0 ,\p3_data_reg[15]_i_1_n_1 ,\p3_data_reg[15]_i_1_n_2 ,\p3_data_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[15] ,\p2_data_0_reg_n_0_[14] ,\p2_data_0_reg_n_0_[13] ,\p2_data_0_reg_n_0_[12] }),
        .O({\p3_data_reg[15]_i_1_n_4 ,\p3_data_reg[15]_i_1_n_5 ,\p3_data_reg[15]_i_1_n_6 ,\p3_data_reg[15]_i_1_n_7 }),
        .S({\p3_data[15]_i_3_n_0 ,\p3_data[15]_i_4_n_0 ,\p3_data[15]_i_5_n_0 ,\p3_data[15]_i_6_n_0 }));
  CARRY4 \p3_data_reg[15]_i_12 
       (.CI(1'b0),
        .CO({\p3_data_reg[15]_i_12_n_0 ,\p3_data_reg[15]_i_12_n_1 ,\p3_data_reg[15]_i_12_n_2 ,\p3_data_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[3] ,\p2_data_0_reg_n_0_[2] ,\p2_data_0_reg_n_0_[1] ,\p2_data_0_reg_n_0_[0] }),
        .O(\NLW_p3_data_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_17_n_0 ,\p3_data[15]_i_18_n_0 ,\p3_data[15]_i_19_n_0 ,\p3_data[15]_i_20_n_0 }));
  CARRY4 \p3_data_reg[15]_i_2 
       (.CI(\p3_data_reg[15]_i_7_n_0 ),
        .CO({\p3_data_reg[15]_i_2_n_0 ,\p3_data_reg[15]_i_2_n_1 ,\p3_data_reg[15]_i_2_n_2 ,\p3_data_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[11] ,\p2_data_0_reg_n_0_[10] ,\p2_data_0_reg_n_0_[9] ,\p2_data_0_reg_n_0_[8] }),
        .O(\NLW_p3_data_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_8_n_0 ,\p3_data[15]_i_9_n_0 ,\p3_data[15]_i_10_n_0 ,\p3_data[15]_i_11_n_0 }));
  CARRY4 \p3_data_reg[15]_i_7 
       (.CI(\p3_data_reg[15]_i_12_n_0 ),
        .CO({\p3_data_reg[15]_i_7_n_0 ,\p3_data_reg[15]_i_7_n_1 ,\p3_data_reg[15]_i_7_n_2 ,\p3_data_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[7] ,\p2_data_0_reg_n_0_[6] ,\p2_data_0_reg_n_0_[5] ,\p2_data_0_reg_n_0_[4] }),
        .O(\NLW_p3_data_reg[15]_i_7_O_UNCONNECTED [3:0]),
        .S({\p3_data[15]_i_13_n_0 ,\p3_data[15]_i_14_n_0 ,\p3_data[15]_i_15_n_0 ,\p3_data[15]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_6 ),
        .Q(\p3_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_5 ),
        .Q(\p3_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[19]_i_1_n_4 ),
        .Q(\p3_data_reg_n_0_[19] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[19]_i_1 
       (.CI(\p3_data_reg[15]_i_1_n_0 ),
        .CO({\p3_data_reg[19]_i_1_n_0 ,\p3_data_reg[19]_i_1_n_1 ,\p3_data_reg[19]_i_1_n_2 ,\p3_data_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[19] ,\p2_data_0_reg_n_0_[18] ,\p2_data_0_reg_n_0_[17] ,\p2_data_0_reg_n_0_[16] }),
        .O({\p3_data_reg[19]_i_1_n_4 ,\p3_data_reg[19]_i_1_n_5 ,\p3_data_reg[19]_i_1_n_6 ,\p3_data_reg[19]_i_1_n_7 }),
        .S({\p3_data[19]_i_2_n_0 ,\p3_data[19]_i_3_n_0 ,\p3_data[19]_i_4_n_0 ,\p3_data[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_6 ),
        .Q(\p3_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_5 ),
        .Q(\p3_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[23]_i_1_n_4 ),
        .Q(\p3_data_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[23]_i_1 
       (.CI(\p3_data_reg[19]_i_1_n_0 ),
        .CO({\p3_data_reg[23]_i_1_n_0 ,\p3_data_reg[23]_i_1_n_1 ,\p3_data_reg[23]_i_1_n_2 ,\p3_data_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\p2_data_0_reg_n_0_[23] ,\p2_data_0_reg_n_0_[22] ,\p2_data_0_reg_n_0_[21] ,\p2_data_0_reg_n_0_[20] }),
        .O({\p3_data_reg[23]_i_1_n_4 ,\p3_data_reg[23]_i_1_n_5 ,\p3_data_reg[23]_i_1_n_6 ,\p3_data_reg[23]_i_1_n_7 }),
        .S({\p3_data[23]_i_2_n_0 ,\p3_data[23]_i_3_n_0 ,\p3_data[23]_i_4_n_0 ,\p3_data[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \p3_data_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\p3_data_reg[24]_i_1_n_7 ),
        .Q(\p3_data_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \p3_data_reg[24]_i_1 
       (.CI(\p3_data_reg[23]_i_1_n_0 ),
        .CO(\NLW_p3_data_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p3_data_reg[24]_i_1_O_UNCONNECTED [3:1],\p3_data_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\p3_data[24]_i_2_n_0 }));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO_4 i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_1
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO_3 i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_10
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO_15 i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_11
   (\p1_data_2_reg[23] ,
    Q,
    hdmi_clk);
  output [23:0]\p1_data_2_reg[23] ;
  input [7:0]Q;
  input hdmi_clk;

  wire [7:0]Q;
  wire hdmi_clk;
  wire [23:0]\p1_data_2_reg[23] ;

  system_axi_hdmi_core_0_MULT_MACRO_14 i_mult_macro
       (.Q(Q),
        .hdmi_clk(hdmi_clk),
        .\p1_data_2_reg[23] (\p1_data_2_reg[23] ));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_12
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO_13 i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_2
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_5
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO_9 i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul_6
   (D,
    O72,
    O73,
    O74,
    hdmi_clk,
    Q,
    P,
    \bbstub_P[40] ,
    \bbstub_P[40]_0 );
  output [24:0]D;
  output [24:0]O72;
  output [24:0]O73;
  output [24:0]O74;
  input hdmi_clk;
  input [7:0]Q;
  input [23:0]P;
  input [23:0]\bbstub_P[40] ;
  input [23:0]\bbstub_P[40]_0 ;

  wire [24:0]D;
  wire [24:0]O72;
  wire [24:0]O73;
  wire [24:0]O74;
  wire [23:0]P;
  wire [7:0]Q;
  wire [23:0]\bbstub_P[40] ;
  wire [23:0]\bbstub_P[40]_0 ;
  wire hdmi_clk;
  wire \p1_data_1[11]_i_2_n_0 ;
  wire \p1_data_1[11]_i_3_n_0 ;
  wire \p1_data_1[11]_i_4_n_0 ;
  wire \p1_data_1[11]_i_5_n_0 ;
  wire \p1_data_1[15]_i_2_n_0 ;
  wire \p1_data_1[15]_i_3_n_0 ;
  wire \p1_data_1[15]_i_4_n_0 ;
  wire \p1_data_1[15]_i_5_n_0 ;
  wire \p1_data_1[19]_i_2_n_0 ;
  wire \p1_data_1[19]_i_3_n_0 ;
  wire \p1_data_1[19]_i_4_n_0 ;
  wire \p1_data_1[19]_i_5_n_0 ;
  wire \p1_data_1[23]_i_2_n_0 ;
  wire \p1_data_1[23]_i_3_n_0 ;
  wire \p1_data_1[23]_i_4_n_0 ;
  wire \p1_data_1[23]_i_5_n_0 ;
  wire \p1_data_1[24]_i_2_n_0 ;
  wire \p1_data_1[3]_i_2_n_0 ;
  wire \p1_data_1[3]_i_3_n_0 ;
  wire \p1_data_1[3]_i_4_n_0 ;
  wire \p1_data_1[3]_i_5_n_0 ;
  wire \p1_data_1[7]_i_2_n_0 ;
  wire \p1_data_1[7]_i_3_n_0 ;
  wire \p1_data_1[7]_i_4_n_0 ;
  wire \p1_data_1[7]_i_5_n_0 ;
  wire \p1_data_1_reg[11]_i_1_n_0 ;
  wire \p1_data_1_reg[11]_i_1_n_1 ;
  wire \p1_data_1_reg[11]_i_1_n_2 ;
  wire \p1_data_1_reg[11]_i_1_n_3 ;
  wire \p1_data_1_reg[15]_i_1_n_0 ;
  wire \p1_data_1_reg[15]_i_1_n_1 ;
  wire \p1_data_1_reg[15]_i_1_n_2 ;
  wire \p1_data_1_reg[15]_i_1_n_3 ;
  wire \p1_data_1_reg[19]_i_1_n_0 ;
  wire \p1_data_1_reg[19]_i_1_n_1 ;
  wire \p1_data_1_reg[19]_i_1_n_2 ;
  wire \p1_data_1_reg[19]_i_1_n_3 ;
  wire \p1_data_1_reg[23]_i_1_n_0 ;
  wire \p1_data_1_reg[23]_i_1_n_1 ;
  wire \p1_data_1_reg[23]_i_1_n_2 ;
  wire \p1_data_1_reg[23]_i_1_n_3 ;
  wire \p1_data_1_reg[3]_i_1_n_0 ;
  wire \p1_data_1_reg[3]_i_1_n_1 ;
  wire \p1_data_1_reg[3]_i_1_n_2 ;
  wire \p1_data_1_reg[3]_i_1_n_3 ;
  wire \p1_data_1_reg[7]_i_1_n_0 ;
  wire \p1_data_1_reg[7]_i_1_n_1 ;
  wire \p1_data_1_reg[7]_i_1_n_2 ;
  wire \p1_data_1_reg[7]_i_1_n_3 ;
  wire \p1_data_2[11]_i_2__0_n_0 ;
  wire \p1_data_2[11]_i_3__0_n_0 ;
  wire \p1_data_2[11]_i_4__0_n_0 ;
  wire \p1_data_2[11]_i_5__0_n_0 ;
  wire \p1_data_2[15]_i_2__0_n_0 ;
  wire \p1_data_2[15]_i_3__0_n_0 ;
  wire \p1_data_2[15]_i_4__0_n_0 ;
  wire \p1_data_2[15]_i_5__0_n_0 ;
  wire \p1_data_2[19]_i_2__0_n_0 ;
  wire \p1_data_2[19]_i_3__0_n_0 ;
  wire \p1_data_2[19]_i_4__0_n_0 ;
  wire \p1_data_2[19]_i_5__0_n_0 ;
  wire \p1_data_2[23]_i_2__0_n_0 ;
  wire \p1_data_2[23]_i_3__0_n_0 ;
  wire \p1_data_2[23]_i_4__0_n_0 ;
  wire \p1_data_2[23]_i_5__0_n_0 ;
  wire \p1_data_2[24]_i_2__0_n_0 ;
  wire \p1_data_2[24]_i_2_n_0 ;
  wire \p1_data_2[3]_i_2__0_n_0 ;
  wire \p1_data_2[3]_i_3__0_n_0 ;
  wire \p1_data_2[3]_i_4__0_n_0 ;
  wire \p1_data_2[3]_i_5__0_n_0 ;
  wire \p1_data_2[7]_i_2__0_n_0 ;
  wire \p1_data_2[7]_i_3__0_n_0 ;
  wire \p1_data_2[7]_i_4__0_n_0 ;
  wire \p1_data_2[7]_i_5__0_n_0 ;
  wire \p1_data_2_reg[11]_i_1__0_n_0 ;
  wire \p1_data_2_reg[11]_i_1__0_n_1 ;
  wire \p1_data_2_reg[11]_i_1__0_n_2 ;
  wire \p1_data_2_reg[11]_i_1__0_n_3 ;
  wire \p1_data_2_reg[15]_i_1__0_n_0 ;
  wire \p1_data_2_reg[15]_i_1__0_n_1 ;
  wire \p1_data_2_reg[15]_i_1__0_n_2 ;
  wire \p1_data_2_reg[15]_i_1__0_n_3 ;
  wire \p1_data_2_reg[19]_i_1__0_n_0 ;
  wire \p1_data_2_reg[19]_i_1__0_n_1 ;
  wire \p1_data_2_reg[19]_i_1__0_n_2 ;
  wire \p1_data_2_reg[19]_i_1__0_n_3 ;
  wire \p1_data_2_reg[23]_i_1__0_n_0 ;
  wire \p1_data_2_reg[23]_i_1__0_n_1 ;
  wire \p1_data_2_reg[23]_i_1__0_n_2 ;
  wire \p1_data_2_reg[23]_i_1__0_n_3 ;
  wire \p1_data_2_reg[3]_i_1__0_n_0 ;
  wire \p1_data_2_reg[3]_i_1__0_n_1 ;
  wire \p1_data_2_reg[3]_i_1__0_n_2 ;
  wire \p1_data_2_reg[3]_i_1__0_n_3 ;
  wire \p1_data_2_reg[7]_i_1__0_n_0 ;
  wire \p1_data_2_reg[7]_i_1__0_n_1 ;
  wire \p1_data_2_reg[7]_i_1__0_n_2 ;
  wire \p1_data_2_reg[7]_i_1__0_n_3 ;
  wire \p1_data_3[11]_i_2_n_0 ;
  wire \p1_data_3[11]_i_3_n_0 ;
  wire \p1_data_3[11]_i_4_n_0 ;
  wire \p1_data_3[11]_i_5_n_0 ;
  wire \p1_data_3[15]_i_2_n_0 ;
  wire \p1_data_3[15]_i_3_n_0 ;
  wire \p1_data_3[15]_i_4_n_0 ;
  wire \p1_data_3[15]_i_5_n_0 ;
  wire \p1_data_3[19]_i_2_n_0 ;
  wire \p1_data_3[19]_i_3_n_0 ;
  wire \p1_data_3[19]_i_4_n_0 ;
  wire \p1_data_3[19]_i_5_n_0 ;
  wire \p1_data_3[23]_i_2_n_0 ;
  wire \p1_data_3[23]_i_3_n_0 ;
  wire \p1_data_3[23]_i_4_n_0 ;
  wire \p1_data_3[23]_i_5_n_0 ;
  wire \p1_data_3[24]_i_2_n_0 ;
  wire \p1_data_3[3]_i_2_n_0 ;
  wire \p1_data_3[3]_i_3_n_0 ;
  wire \p1_data_3[3]_i_4_n_0 ;
  wire \p1_data_3[3]_i_5_n_0 ;
  wire \p1_data_3[7]_i_2_n_0 ;
  wire \p1_data_3[7]_i_3_n_0 ;
  wire \p1_data_3[7]_i_4_n_0 ;
  wire \p1_data_3[7]_i_5_n_0 ;
  wire \p1_data_3_reg[11]_i_1_n_0 ;
  wire \p1_data_3_reg[11]_i_1_n_1 ;
  wire \p1_data_3_reg[11]_i_1_n_2 ;
  wire \p1_data_3_reg[11]_i_1_n_3 ;
  wire \p1_data_3_reg[15]_i_1_n_0 ;
  wire \p1_data_3_reg[15]_i_1_n_1 ;
  wire \p1_data_3_reg[15]_i_1_n_2 ;
  wire \p1_data_3_reg[15]_i_1_n_3 ;
  wire \p1_data_3_reg[19]_i_1_n_0 ;
  wire \p1_data_3_reg[19]_i_1_n_1 ;
  wire \p1_data_3_reg[19]_i_1_n_2 ;
  wire \p1_data_3_reg[19]_i_1_n_3 ;
  wire \p1_data_3_reg[23]_i_1_n_0 ;
  wire \p1_data_3_reg[23]_i_1_n_1 ;
  wire \p1_data_3_reg[23]_i_1_n_2 ;
  wire \p1_data_3_reg[23]_i_1_n_3 ;
  wire \p1_data_3_reg[3]_i_1_n_0 ;
  wire \p1_data_3_reg[3]_i_1_n_1 ;
  wire \p1_data_3_reg[3]_i_1_n_2 ;
  wire \p1_data_3_reg[3]_i_1_n_3 ;
  wire \p1_data_3_reg[7]_i_1_n_0 ;
  wire \p1_data_3_reg[7]_i_1_n_1 ;
  wire \p1_data_3_reg[7]_i_1_n_2 ;
  wire \p1_data_3_reg[7]_i_1_n_3 ;
  wire p2_sign_reg_srl2_n_0;
  wire sign_p;
  wire [3:0]\NLW_p1_data_1_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p1_data_1_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_p1_data_2_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_p1_data_2_reg[24]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_p1_data_3_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p1_data_3_reg[24]_i_1_O_UNCONNECTED ;

  system_axi_hdmi_core_0_MULT_MACRO_8 i_mult_macro
       (.O72(O72),
        .Q(Q),
        .S(\p1_data_2[24]_i_2_n_0 ),
        .hdmi_clk(hdmi_clk),
        .sign_p(sign_p));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[11]_i_2 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [11]),
        .O(\p1_data_1[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[11]_i_3 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [10]),
        .O(\p1_data_1[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[11]_i_4 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [9]),
        .O(\p1_data_1[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[11]_i_5 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [8]),
        .O(\p1_data_1[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[15]_i_2 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [15]),
        .O(\p1_data_1[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[15]_i_3 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [14]),
        .O(\p1_data_1[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[15]_i_4 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [13]),
        .O(\p1_data_1[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[15]_i_5 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [12]),
        .O(\p1_data_1[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[19]_i_2 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [19]),
        .O(\p1_data_1[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[19]_i_3 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [18]),
        .O(\p1_data_1[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[19]_i_4 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [17]),
        .O(\p1_data_1[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[19]_i_5 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [16]),
        .O(\p1_data_1[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[23]_i_2 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [23]),
        .O(\p1_data_1[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[23]_i_3 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [22]),
        .O(\p1_data_1[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[23]_i_4 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [21]),
        .O(\p1_data_1[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[23]_i_5 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [20]),
        .O(\p1_data_1[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p1_data_1[24]_i_2 
       (.I0(sign_p),
        .O(\p1_data_1[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[3]_i_2 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [3]),
        .O(\p1_data_1[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[3]_i_3 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [2]),
        .O(\p1_data_1[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[3]_i_4 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [1]),
        .O(\p1_data_1[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[3]_i_5 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [0]),
        .O(\p1_data_1[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[7]_i_2 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [7]),
        .O(\p1_data_1[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[7]_i_3 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [6]),
        .O(\p1_data_1[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[7]_i_4 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [5]),
        .O(\p1_data_1[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_1[7]_i_5 
       (.I0(sign_p),
        .I1(\bbstub_P[40]_0 [4]),
        .O(\p1_data_1[7]_i_5_n_0 ));
  CARRY4 \p1_data_1_reg[11]_i_1 
       (.CI(\p1_data_1_reg[7]_i_1_n_0 ),
        .CO({\p1_data_1_reg[11]_i_1_n_0 ,\p1_data_1_reg[11]_i_1_n_1 ,\p1_data_1_reg[11]_i_1_n_2 ,\p1_data_1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O74[11:8]),
        .S({\p1_data_1[11]_i_2_n_0 ,\p1_data_1[11]_i_3_n_0 ,\p1_data_1[11]_i_4_n_0 ,\p1_data_1[11]_i_5_n_0 }));
  CARRY4 \p1_data_1_reg[15]_i_1 
       (.CI(\p1_data_1_reg[11]_i_1_n_0 ),
        .CO({\p1_data_1_reg[15]_i_1_n_0 ,\p1_data_1_reg[15]_i_1_n_1 ,\p1_data_1_reg[15]_i_1_n_2 ,\p1_data_1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O74[15:12]),
        .S({\p1_data_1[15]_i_2_n_0 ,\p1_data_1[15]_i_3_n_0 ,\p1_data_1[15]_i_4_n_0 ,\p1_data_1[15]_i_5_n_0 }));
  CARRY4 \p1_data_1_reg[19]_i_1 
       (.CI(\p1_data_1_reg[15]_i_1_n_0 ),
        .CO({\p1_data_1_reg[19]_i_1_n_0 ,\p1_data_1_reg[19]_i_1_n_1 ,\p1_data_1_reg[19]_i_1_n_2 ,\p1_data_1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O74[19:16]),
        .S({\p1_data_1[19]_i_2_n_0 ,\p1_data_1[19]_i_3_n_0 ,\p1_data_1[19]_i_4_n_0 ,\p1_data_1[19]_i_5_n_0 }));
  CARRY4 \p1_data_1_reg[23]_i_1 
       (.CI(\p1_data_1_reg[19]_i_1_n_0 ),
        .CO({\p1_data_1_reg[23]_i_1_n_0 ,\p1_data_1_reg[23]_i_1_n_1 ,\p1_data_1_reg[23]_i_1_n_2 ,\p1_data_1_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O74[23:20]),
        .S({\p1_data_1[23]_i_2_n_0 ,\p1_data_1[23]_i_3_n_0 ,\p1_data_1[23]_i_4_n_0 ,\p1_data_1[23]_i_5_n_0 }));
  CARRY4 \p1_data_1_reg[24]_i_1 
       (.CI(\p1_data_1_reg[23]_i_1_n_0 ),
        .CO(\NLW_p1_data_1_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p1_data_1_reg[24]_i_1_O_UNCONNECTED [3:1],O74[24]}),
        .S({1'b0,1'b0,1'b0,\p1_data_1[24]_i_2_n_0 }));
  CARRY4 \p1_data_1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p1_data_1_reg[3]_i_1_n_0 ,\p1_data_1_reg[3]_i_1_n_1 ,\p1_data_1_reg[3]_i_1_n_2 ,\p1_data_1_reg[3]_i_1_n_3 }),
        .CYINIT(sign_p),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O74[3:0]),
        .S({\p1_data_1[3]_i_2_n_0 ,\p1_data_1[3]_i_3_n_0 ,\p1_data_1[3]_i_4_n_0 ,\p1_data_1[3]_i_5_n_0 }));
  CARRY4 \p1_data_1_reg[7]_i_1 
       (.CI(\p1_data_1_reg[3]_i_1_n_0 ),
        .CO({\p1_data_1_reg[7]_i_1_n_0 ,\p1_data_1_reg[7]_i_1_n_1 ,\p1_data_1_reg[7]_i_1_n_2 ,\p1_data_1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O74[7:4]),
        .S({\p1_data_1[7]_i_2_n_0 ,\p1_data_1[7]_i_3_n_0 ,\p1_data_1[7]_i_4_n_0 ,\p1_data_1[7]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_2__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [11]),
        .O(\p1_data_2[11]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_3__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [10]),
        .O(\p1_data_2[11]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_4__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [9]),
        .O(\p1_data_2[11]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[11]_i_5__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [8]),
        .O(\p1_data_2[11]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_2__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [15]),
        .O(\p1_data_2[15]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_3__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [14]),
        .O(\p1_data_2[15]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_4__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [13]),
        .O(\p1_data_2[15]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[15]_i_5__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [12]),
        .O(\p1_data_2[15]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_2__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [19]),
        .O(\p1_data_2[19]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_3__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [18]),
        .O(\p1_data_2[19]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_4__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [17]),
        .O(\p1_data_2[19]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[19]_i_5__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [16]),
        .O(\p1_data_2[19]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_2__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [23]),
        .O(\p1_data_2[23]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_3__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [22]),
        .O(\p1_data_2[23]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_4__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [21]),
        .O(\p1_data_2[23]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[23]_i_5__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [20]),
        .O(\p1_data_2[23]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p1_data_2[24]_i_2 
       (.I0(sign_p),
        .O(\p1_data_2[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p1_data_2[24]_i_2__0 
       (.I0(sign_p),
        .O(\p1_data_2[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_2__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [3]),
        .O(\p1_data_2[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_3__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [2]),
        .O(\p1_data_2[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_4__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [1]),
        .O(\p1_data_2[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[3]_i_5__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [0]),
        .O(\p1_data_2[3]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_2__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [7]),
        .O(\p1_data_2[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_3__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [6]),
        .O(\p1_data_2[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_4__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [5]),
        .O(\p1_data_2[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_2[7]_i_5__0 
       (.I0(sign_p),
        .I1(\bbstub_P[40] [4]),
        .O(\p1_data_2[7]_i_5__0_n_0 ));
  CARRY4 \p1_data_2_reg[11]_i_1__0 
       (.CI(\p1_data_2_reg[7]_i_1__0_n_0 ),
        .CO({\p1_data_2_reg[11]_i_1__0_n_0 ,\p1_data_2_reg[11]_i_1__0_n_1 ,\p1_data_2_reg[11]_i_1__0_n_2 ,\p1_data_2_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O73[11:8]),
        .S({\p1_data_2[11]_i_2__0_n_0 ,\p1_data_2[11]_i_3__0_n_0 ,\p1_data_2[11]_i_4__0_n_0 ,\p1_data_2[11]_i_5__0_n_0 }));
  CARRY4 \p1_data_2_reg[15]_i_1__0 
       (.CI(\p1_data_2_reg[11]_i_1__0_n_0 ),
        .CO({\p1_data_2_reg[15]_i_1__0_n_0 ,\p1_data_2_reg[15]_i_1__0_n_1 ,\p1_data_2_reg[15]_i_1__0_n_2 ,\p1_data_2_reg[15]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O73[15:12]),
        .S({\p1_data_2[15]_i_2__0_n_0 ,\p1_data_2[15]_i_3__0_n_0 ,\p1_data_2[15]_i_4__0_n_0 ,\p1_data_2[15]_i_5__0_n_0 }));
  CARRY4 \p1_data_2_reg[19]_i_1__0 
       (.CI(\p1_data_2_reg[15]_i_1__0_n_0 ),
        .CO({\p1_data_2_reg[19]_i_1__0_n_0 ,\p1_data_2_reg[19]_i_1__0_n_1 ,\p1_data_2_reg[19]_i_1__0_n_2 ,\p1_data_2_reg[19]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O73[19:16]),
        .S({\p1_data_2[19]_i_2__0_n_0 ,\p1_data_2[19]_i_3__0_n_0 ,\p1_data_2[19]_i_4__0_n_0 ,\p1_data_2[19]_i_5__0_n_0 }));
  CARRY4 \p1_data_2_reg[23]_i_1__0 
       (.CI(\p1_data_2_reg[19]_i_1__0_n_0 ),
        .CO({\p1_data_2_reg[23]_i_1__0_n_0 ,\p1_data_2_reg[23]_i_1__0_n_1 ,\p1_data_2_reg[23]_i_1__0_n_2 ,\p1_data_2_reg[23]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O73[23:20]),
        .S({\p1_data_2[23]_i_2__0_n_0 ,\p1_data_2[23]_i_3__0_n_0 ,\p1_data_2[23]_i_4__0_n_0 ,\p1_data_2[23]_i_5__0_n_0 }));
  CARRY4 \p1_data_2_reg[24]_i_1__0 
       (.CI(\p1_data_2_reg[23]_i_1__0_n_0 ),
        .CO(\NLW_p1_data_2_reg[24]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p1_data_2_reg[24]_i_1__0_O_UNCONNECTED [3:1],O73[24]}),
        .S({1'b0,1'b0,1'b0,\p1_data_2[24]_i_2__0_n_0 }));
  CARRY4 \p1_data_2_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\p1_data_2_reg[3]_i_1__0_n_0 ,\p1_data_2_reg[3]_i_1__0_n_1 ,\p1_data_2_reg[3]_i_1__0_n_2 ,\p1_data_2_reg[3]_i_1__0_n_3 }),
        .CYINIT(sign_p),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O73[3:0]),
        .S({\p1_data_2[3]_i_2__0_n_0 ,\p1_data_2[3]_i_3__0_n_0 ,\p1_data_2[3]_i_4__0_n_0 ,\p1_data_2[3]_i_5__0_n_0 }));
  CARRY4 \p1_data_2_reg[7]_i_1__0 
       (.CI(\p1_data_2_reg[3]_i_1__0_n_0 ),
        .CO({\p1_data_2_reg[7]_i_1__0_n_0 ,\p1_data_2_reg[7]_i_1__0_n_1 ,\p1_data_2_reg[7]_i_1__0_n_2 ,\p1_data_2_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O73[7:4]),
        .S({\p1_data_2[7]_i_2__0_n_0 ,\p1_data_2[7]_i_3__0_n_0 ,\p1_data_2[7]_i_4__0_n_0 ,\p1_data_2[7]_i_5__0_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[11]_i_2 
       (.I0(sign_p),
        .I1(P[11]),
        .O(\p1_data_3[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[11]_i_3 
       (.I0(sign_p),
        .I1(P[10]),
        .O(\p1_data_3[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[11]_i_4 
       (.I0(sign_p),
        .I1(P[9]),
        .O(\p1_data_3[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[11]_i_5 
       (.I0(sign_p),
        .I1(P[8]),
        .O(\p1_data_3[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[15]_i_2 
       (.I0(sign_p),
        .I1(P[15]),
        .O(\p1_data_3[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[15]_i_3 
       (.I0(sign_p),
        .I1(P[14]),
        .O(\p1_data_3[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[15]_i_4 
       (.I0(sign_p),
        .I1(P[13]),
        .O(\p1_data_3[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[15]_i_5 
       (.I0(sign_p),
        .I1(P[12]),
        .O(\p1_data_3[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[19]_i_2 
       (.I0(sign_p),
        .I1(P[19]),
        .O(\p1_data_3[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[19]_i_3 
       (.I0(sign_p),
        .I1(P[18]),
        .O(\p1_data_3[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[19]_i_4 
       (.I0(sign_p),
        .I1(P[17]),
        .O(\p1_data_3[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[19]_i_5 
       (.I0(sign_p),
        .I1(P[16]),
        .O(\p1_data_3[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[23]_i_2 
       (.I0(sign_p),
        .I1(P[23]),
        .O(\p1_data_3[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[23]_i_3 
       (.I0(sign_p),
        .I1(P[22]),
        .O(\p1_data_3[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[23]_i_4 
       (.I0(sign_p),
        .I1(P[21]),
        .O(\p1_data_3[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[23]_i_5 
       (.I0(sign_p),
        .I1(P[20]),
        .O(\p1_data_3[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \p1_data_3[24]_i_2 
       (.I0(sign_p),
        .O(\p1_data_3[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[3]_i_2 
       (.I0(sign_p),
        .I1(P[3]),
        .O(\p1_data_3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[3]_i_3 
       (.I0(sign_p),
        .I1(P[2]),
        .O(\p1_data_3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[3]_i_4 
       (.I0(sign_p),
        .I1(P[1]),
        .O(\p1_data_3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[3]_i_5 
       (.I0(sign_p),
        .I1(P[0]),
        .O(\p1_data_3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[7]_i_2 
       (.I0(sign_p),
        .I1(P[7]),
        .O(\p1_data_3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[7]_i_3 
       (.I0(sign_p),
        .I1(P[6]),
        .O(\p1_data_3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[7]_i_4 
       (.I0(sign_p),
        .I1(P[5]),
        .O(\p1_data_3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_data_3[7]_i_5 
       (.I0(sign_p),
        .I1(P[4]),
        .O(\p1_data_3[7]_i_5_n_0 ));
  CARRY4 \p1_data_3_reg[11]_i_1 
       (.CI(\p1_data_3_reg[7]_i_1_n_0 ),
        .CO({\p1_data_3_reg[11]_i_1_n_0 ,\p1_data_3_reg[11]_i_1_n_1 ,\p1_data_3_reg[11]_i_1_n_2 ,\p1_data_3_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[11:8]),
        .S({\p1_data_3[11]_i_2_n_0 ,\p1_data_3[11]_i_3_n_0 ,\p1_data_3[11]_i_4_n_0 ,\p1_data_3[11]_i_5_n_0 }));
  CARRY4 \p1_data_3_reg[15]_i_1 
       (.CI(\p1_data_3_reg[11]_i_1_n_0 ),
        .CO({\p1_data_3_reg[15]_i_1_n_0 ,\p1_data_3_reg[15]_i_1_n_1 ,\p1_data_3_reg[15]_i_1_n_2 ,\p1_data_3_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[15:12]),
        .S({\p1_data_3[15]_i_2_n_0 ,\p1_data_3[15]_i_3_n_0 ,\p1_data_3[15]_i_4_n_0 ,\p1_data_3[15]_i_5_n_0 }));
  CARRY4 \p1_data_3_reg[19]_i_1 
       (.CI(\p1_data_3_reg[15]_i_1_n_0 ),
        .CO({\p1_data_3_reg[19]_i_1_n_0 ,\p1_data_3_reg[19]_i_1_n_1 ,\p1_data_3_reg[19]_i_1_n_2 ,\p1_data_3_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[19:16]),
        .S({\p1_data_3[19]_i_2_n_0 ,\p1_data_3[19]_i_3_n_0 ,\p1_data_3[19]_i_4_n_0 ,\p1_data_3[19]_i_5_n_0 }));
  CARRY4 \p1_data_3_reg[23]_i_1 
       (.CI(\p1_data_3_reg[19]_i_1_n_0 ),
        .CO({\p1_data_3_reg[23]_i_1_n_0 ,\p1_data_3_reg[23]_i_1_n_1 ,\p1_data_3_reg[23]_i_1_n_2 ,\p1_data_3_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[23:20]),
        .S({\p1_data_3[23]_i_2_n_0 ,\p1_data_3[23]_i_3_n_0 ,\p1_data_3[23]_i_4_n_0 ,\p1_data_3[23]_i_5_n_0 }));
  CARRY4 \p1_data_3_reg[24]_i_1 
       (.CI(\p1_data_3_reg[23]_i_1_n_0 ),
        .CO(\NLW_p1_data_3_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p1_data_3_reg[24]_i_1_O_UNCONNECTED [3:1],D[24]}),
        .S({1'b0,1'b0,1'b0,\p1_data_3[24]_i_2_n_0 }));
  CARRY4 \p1_data_3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p1_data_3_reg[3]_i_1_n_0 ,\p1_data_3_reg[3]_i_1_n_1 ,\p1_data_3_reg[3]_i_1_n_2 ,\p1_data_3_reg[3]_i_1_n_3 }),
        .CYINIT(sign_p),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[3:0]),
        .S({\p1_data_3[3]_i_2_n_0 ,\p1_data_3[3]_i_3_n_0 ,\p1_data_3[3]_i_4_n_0 ,\p1_data_3[3]_i_5_n_0 }));
  CARRY4 \p1_data_3_reg[7]_i_1 
       (.CI(\p1_data_3_reg[3]_i_1_n_0 ),
        .CO({\p1_data_3_reg[7]_i_1_n_0 ,\p1_data_3_reg[7]_i_1_n_1 ,\p1_data_3_reg[7]_i_1_n_2 ,\p1_data_3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S({\p1_data_3[7]_i_2_n_0 ,\p1_data_3[7]_i_3_n_0 ,\p1_data_3[7]_i_4_n_0 ,\p1_data_3[7]_i_5_n_0 }));
  (* srl_name = "\inst/i_tx_core/i_csc_RGB2CrYCb/i_csc_1_Cr/i_mul_c2/p2_sign_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    p2_sign_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(1'b1),
        .Q(p2_sign_reg_srl2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sign_p_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p2_sign_reg_srl2_n_0),
        .Q(sign_p),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ad_csc_1_mul" *) 
module system_axi_hdmi_core_0_ad_csc_1_mul__parameterized0
   (P,
    Q,
    hdmi_clk);
  output [23:0]P;
  input [7:0]Q;
  input hdmi_clk;

  wire [23:0]P;
  wire [7:0]Q;
  wire hdmi_clk;

  system_axi_hdmi_core_0_MULT_MACRO_7 i_mult_macro
       (.P(P),
        .Q(Q),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_csc_RGB2CrYCb" *) 
module system_axi_hdmi_core_0_ad_csc_RGB2CrYCb
   (hdmi_24_hsync_reg,
    hdmi_24_vsync_reg,
    hdmi_24_data_e_reg,
    hdmi_es_vs_de_reg,
    hdmi_es_hs_de_reg,
    \hdmi_24_data_reg[7] ,
    \hdmi_24_data_reg[15] ,
    \hdmi_24_data_reg[23] ,
    hdmi_clk,
    hdmi_hsync,
    hdmi_vsync,
    hdmi_hsync_data_e,
    hdmi_vsync_data_e,
    hdmi_data_e,
    Q,
    \d_data_cntrl_reg[186] );
  output hdmi_24_hsync_reg;
  output hdmi_24_vsync_reg;
  output hdmi_24_data_e_reg;
  output hdmi_es_vs_de_reg;
  output hdmi_es_hs_de_reg;
  output [7:0]\hdmi_24_data_reg[7] ;
  output [7:0]\hdmi_24_data_reg[15] ;
  output [7:0]\hdmi_24_data_reg[23] ;
  input hdmi_clk;
  input hdmi_hsync;
  input hdmi_vsync;
  input hdmi_hsync_data_e;
  input hdmi_vsync_data_e;
  input hdmi_data_e;
  input [23:0]Q;
  input [0:0]\d_data_cntrl_reg[186] ;

  wire [23:0]Q;
  wire [0:0]\d_data_cntrl_reg[186] ;
  wire [23:0]data_1_m_s;
  wire [23:0]data_2_m_s;
  wire hdmi_24_data_e_reg;
  wire [7:0]\hdmi_24_data_reg[15] ;
  wire [7:0]\hdmi_24_data_reg[23] ;
  wire [7:0]\hdmi_24_data_reg[7] ;
  wire hdmi_24_hsync_reg;
  wire hdmi_24_vsync_reg;
  wire hdmi_clk;
  wire hdmi_data_e;
  wire hdmi_es_hs_de_reg;
  wire hdmi_es_vs_de_reg;
  wire hdmi_hsync;
  wire hdmi_hsync_data_e;
  wire hdmi_vsync;
  wire hdmi_vsync_data_e;
  wire i_csc_1_Cr_n_14;
  wire i_csc_1_Cr_n_15;
  wire i_csc_1_Cr_n_16;
  wire i_csc_1_Cr_n_17;
  wire i_csc_1_Cr_n_18;
  wire i_csc_1_Cr_n_19;
  wire i_csc_1_Cr_n_20;
  wire i_csc_1_Cr_n_21;
  wire i_csc_1_Cr_n_22;
  wire i_csc_1_Cr_n_23;
  wire i_csc_1_Cr_n_24;
  wire i_csc_1_Cr_n_25;
  wire i_csc_1_Cr_n_26;
  wire i_csc_1_Cr_n_27;
  wire i_csc_1_Cr_n_28;
  wire i_csc_1_Cr_n_29;
  wire i_csc_1_Cr_n_30;
  wire i_csc_1_Cr_n_31;
  wire i_csc_1_Cr_n_32;
  wire i_csc_1_Cr_n_33;
  wire i_csc_1_Cr_n_34;
  wire i_csc_1_Cr_n_35;
  wire i_csc_1_Cr_n_36;
  wire i_csc_1_Cr_n_37;
  wire i_csc_1_Cr_n_38;
  wire i_csc_1_Cr_n_39;
  wire i_csc_1_Cr_n_40;
  wire i_csc_1_Cr_n_41;
  wire i_csc_1_Cr_n_42;
  wire i_csc_1_Cr_n_43;
  wire i_csc_1_Cr_n_44;
  wire i_csc_1_Cr_n_45;
  wire i_csc_1_Cr_n_46;
  wire i_csc_1_Cr_n_47;
  wire i_csc_1_Cr_n_48;
  wire i_csc_1_Cr_n_49;
  wire i_csc_1_Cr_n_50;
  wire i_csc_1_Cr_n_51;
  wire i_csc_1_Cr_n_52;
  wire i_csc_1_Cr_n_53;
  wire i_csc_1_Cr_n_54;
  wire i_csc_1_Cr_n_55;
  wire i_csc_1_Cr_n_56;
  wire i_csc_1_Cr_n_57;
  wire i_csc_1_Cr_n_58;
  wire i_csc_1_Cr_n_59;
  wire i_csc_1_Cr_n_60;
  wire i_csc_1_Cr_n_61;
  wire i_csc_1_Cr_n_62;
  wire i_csc_1_Cr_n_63;
  wire [19:19]p1_data_4;

  system_axi_hdmi_core_0_ad_csc_1__parameterized1 i_csc_1_Cb
       (.O73({i_csc_1_Cr_n_14,i_csc_1_Cr_n_15,i_csc_1_Cr_n_16,i_csc_1_Cr_n_17,i_csc_1_Cr_n_18,i_csc_1_Cr_n_19,i_csc_1_Cr_n_20,i_csc_1_Cr_n_21,i_csc_1_Cr_n_22,i_csc_1_Cr_n_23,i_csc_1_Cr_n_24,i_csc_1_Cr_n_25,i_csc_1_Cr_n_26,i_csc_1_Cr_n_27,i_csc_1_Cr_n_28,i_csc_1_Cr_n_29,i_csc_1_Cr_n_30,i_csc_1_Cr_n_31,i_csc_1_Cr_n_32,i_csc_1_Cr_n_33,i_csc_1_Cr_n_34,i_csc_1_Cr_n_35,i_csc_1_Cr_n_36,i_csc_1_Cr_n_37,i_csc_1_Cr_n_38}),
        .O74({i_csc_1_Cr_n_39,i_csc_1_Cr_n_40,i_csc_1_Cr_n_41,i_csc_1_Cr_n_42,i_csc_1_Cr_n_43,i_csc_1_Cr_n_44,i_csc_1_Cr_n_45,i_csc_1_Cr_n_46,i_csc_1_Cr_n_47,i_csc_1_Cr_n_48,i_csc_1_Cr_n_49,i_csc_1_Cr_n_50,i_csc_1_Cr_n_51,i_csc_1_Cr_n_52,i_csc_1_Cr_n_53,i_csc_1_Cr_n_54,i_csc_1_Cr_n_55,i_csc_1_Cr_n_56,i_csc_1_Cr_n_57,i_csc_1_Cr_n_58,i_csc_1_Cr_n_59,i_csc_1_Cr_n_60,i_csc_1_Cr_n_61,i_csc_1_Cr_n_62,i_csc_1_Cr_n_63}),
        .P(data_1_m_s),
        .Q(Q),
        .\hdmi_24_data_reg[7] (\hdmi_24_data_reg[7] ),
        .hdmi_clk(hdmi_clk),
        .\p1_data_2_reg[23] (data_2_m_s),
        .p1_data_4(p1_data_4));
  system_axi_hdmi_core_0_ad_csc_1 i_csc_1_Cr
       (.O73({i_csc_1_Cr_n_14,i_csc_1_Cr_n_15,i_csc_1_Cr_n_16,i_csc_1_Cr_n_17,i_csc_1_Cr_n_18,i_csc_1_Cr_n_19,i_csc_1_Cr_n_20,i_csc_1_Cr_n_21,i_csc_1_Cr_n_22,i_csc_1_Cr_n_23,i_csc_1_Cr_n_24,i_csc_1_Cr_n_25,i_csc_1_Cr_n_26,i_csc_1_Cr_n_27,i_csc_1_Cr_n_28,i_csc_1_Cr_n_29,i_csc_1_Cr_n_30,i_csc_1_Cr_n_31,i_csc_1_Cr_n_32,i_csc_1_Cr_n_33,i_csc_1_Cr_n_34,i_csc_1_Cr_n_35,i_csc_1_Cr_n_36,i_csc_1_Cr_n_37,i_csc_1_Cr_n_38}),
        .O74({i_csc_1_Cr_n_39,i_csc_1_Cr_n_40,i_csc_1_Cr_n_41,i_csc_1_Cr_n_42,i_csc_1_Cr_n_43,i_csc_1_Cr_n_44,i_csc_1_Cr_n_45,i_csc_1_Cr_n_46,i_csc_1_Cr_n_47,i_csc_1_Cr_n_48,i_csc_1_Cr_n_49,i_csc_1_Cr_n_50,i_csc_1_Cr_n_51,i_csc_1_Cr_n_52,i_csc_1_Cr_n_53,i_csc_1_Cr_n_54,i_csc_1_Cr_n_55,i_csc_1_Cr_n_56,i_csc_1_Cr_n_57,i_csc_1_Cr_n_58,i_csc_1_Cr_n_59,i_csc_1_Cr_n_60,i_csc_1_Cr_n_61,i_csc_1_Cr_n_62,i_csc_1_Cr_n_63}),
        .P(data_1_m_s),
        .Q(Q),
        .\bbstub_P[40] (data_2_m_s),
        .\d_data_cntrl_reg[186] (\d_data_cntrl_reg[186] ),
        .hdmi_24_data_e_reg(hdmi_24_data_e_reg),
        .\hdmi_24_data_reg[23] (\hdmi_24_data_reg[23] ),
        .hdmi_24_hsync_reg(hdmi_24_hsync_reg),
        .hdmi_24_vsync_reg(hdmi_24_vsync_reg),
        .hdmi_clk(hdmi_clk),
        .hdmi_data_e(hdmi_data_e),
        .hdmi_es_hs_de_reg(hdmi_es_hs_de_reg),
        .hdmi_es_vs_de_reg(hdmi_es_vs_de_reg),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_hsync_data_e(hdmi_hsync_data_e),
        .hdmi_vsync(hdmi_vsync),
        .hdmi_vsync_data_e(hdmi_vsync_data_e),
        .p1_data_4(p1_data_4));
  system_axi_hdmi_core_0_ad_csc_1__parameterized0 i_csc_1_Y
       (.Q(Q),
        .\hdmi_24_data_reg[15] (\hdmi_24_data_reg[15] ),
        .hdmi_clk(hdmi_clk));
endmodule

(* ORIG_REF_NAME = "ad_mem" *) 
module system_axi_hdmi_core_0_ad_mem
   (\hdmi_data_reg[11] ,
    \hdmi_data_reg[9] ,
    \hdmi_data_reg[10] ,
    \hdmi_data_reg[8] ,
    \hdmi_data_reg[6] ,
    \hdmi_data_reg[7] ,
    \hdmi_data_reg[5] ,
    \hdmi_data_reg[3] ,
    \hdmi_data_reg[4] ,
    \hdmi_data_reg[0] ,
    \hdmi_data_reg[1] ,
    \hdmi_data_reg[2] ,
    \hdmi_data_reg[23] ,
    \hdmi_data_reg[21] ,
    \hdmi_data_reg[22] ,
    \hdmi_data_reg[20] ,
    \hdmi_data_reg[18] ,
    \hdmi_data_reg[19] ,
    \hdmi_data_reg[17] ,
    \hdmi_data_reg[15] ,
    \hdmi_data_reg[16] ,
    \hdmi_data_reg[14] ,
    \hdmi_data_reg[12] ,
    \hdmi_data_reg[13] ,
    hdmi_tpm_oos_reg,
    hdmi_clk,
    m_axis_mm2s_clk,
    Q,
    vdma_waddr,
    \vdma_wdata_reg[47] ,
    vdma_wr,
    \hdmi_tpm_data_reg[23] ,
    hdmi_data_sel_2d,
    hdmi_de_2d);
  output \hdmi_data_reg[11] ;
  output \hdmi_data_reg[9] ;
  output \hdmi_data_reg[10] ;
  output \hdmi_data_reg[8] ;
  output \hdmi_data_reg[6] ;
  output \hdmi_data_reg[7] ;
  output \hdmi_data_reg[5] ;
  output \hdmi_data_reg[3] ;
  output \hdmi_data_reg[4] ;
  output \hdmi_data_reg[0] ;
  output \hdmi_data_reg[1] ;
  output \hdmi_data_reg[2] ;
  output \hdmi_data_reg[23] ;
  output \hdmi_data_reg[21] ;
  output \hdmi_data_reg[22] ;
  output \hdmi_data_reg[20] ;
  output \hdmi_data_reg[18] ;
  output \hdmi_data_reg[19] ;
  output \hdmi_data_reg[17] ;
  output \hdmi_data_reg[15] ;
  output \hdmi_data_reg[16] ;
  output \hdmi_data_reg[14] ;
  output \hdmi_data_reg[12] ;
  output \hdmi_data_reg[13] ;
  output hdmi_tpm_oos_reg;
  input hdmi_clk;
  input m_axis_mm2s_clk;
  input [8:0]Q;
  input [8:0]vdma_waddr;
  input [47:0]\vdma_wdata_reg[47] ;
  input vdma_wr;
  input [23:0]\hdmi_tpm_data_reg[23] ;
  input hdmi_data_sel_2d;
  input hdmi_de_2d;

  wire [8:0]Q;
  wire hdmi_clk;
  wire [47:0]hdmi_data_2d;
  wire \hdmi_data_reg[0] ;
  wire \hdmi_data_reg[10] ;
  wire \hdmi_data_reg[11] ;
  wire \hdmi_data_reg[12] ;
  wire \hdmi_data_reg[13] ;
  wire \hdmi_data_reg[14] ;
  wire \hdmi_data_reg[15] ;
  wire \hdmi_data_reg[16] ;
  wire \hdmi_data_reg[17] ;
  wire \hdmi_data_reg[18] ;
  wire \hdmi_data_reg[19] ;
  wire \hdmi_data_reg[1] ;
  wire \hdmi_data_reg[20] ;
  wire \hdmi_data_reg[21] ;
  wire \hdmi_data_reg[22] ;
  wire \hdmi_data_reg[23] ;
  wire \hdmi_data_reg[2] ;
  wire \hdmi_data_reg[3] ;
  wire \hdmi_data_reg[4] ;
  wire \hdmi_data_reg[5] ;
  wire \hdmi_data_reg[6] ;
  wire \hdmi_data_reg[7] ;
  wire \hdmi_data_reg[8] ;
  wire \hdmi_data_reg[9] ;
  wire hdmi_data_sel_2d;
  wire hdmi_de_2d;
  wire [23:0]\hdmi_tpm_data_reg[23] ;
  wire hdmi_tpm_oos_i_10_n_0;
  wire hdmi_tpm_oos_i_11_n_0;
  wire hdmi_tpm_oos_i_4_n_0;
  wire hdmi_tpm_oos_i_5_n_0;
  wire hdmi_tpm_oos_i_6_n_0;
  wire hdmi_tpm_oos_i_7_n_0;
  wire hdmi_tpm_oos_i_8_n_0;
  wire hdmi_tpm_oos_i_9_n_0;
  wire hdmi_tpm_oos_reg;
  wire hdmi_tpm_oos_reg_i_2_n_0;
  wire hdmi_tpm_oos_reg_i_2_n_1;
  wire hdmi_tpm_oos_reg_i_2_n_2;
  wire hdmi_tpm_oos_reg_i_2_n_3;
  wire hdmi_tpm_oos_reg_i_3_n_0;
  wire hdmi_tpm_oos_reg_i_3_n_1;
  wire hdmi_tpm_oos_reg_i_3_n_2;
  wire hdmi_tpm_oos_reg_i_3_n_3;
  wire m_axis_mm2s_clk;
  wire [8:0]vdma_waddr;
  wire [47:0]\vdma_wdata_reg[47] ;
  wire vdma_wr;
  wire [3:0]NLW_hdmi_tpm_oos_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_tpm_oos_reg_i_3_O_UNCONNECTED;
  wire NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_m_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_SBITERR_UNCONNECTED;
  wire [31:16]NLW_m_ram_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_m_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_m_ram_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[0]_i_2 
       (.I0(hdmi_data_2d[24]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[0]),
        .O(\hdmi_data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[10]_i_2 
       (.I0(hdmi_data_2d[34]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[10]),
        .O(\hdmi_data_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[11]_i_2 
       (.I0(hdmi_data_2d[35]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[11]),
        .O(\hdmi_data_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[12]_i_2 
       (.I0(hdmi_data_2d[36]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[12]),
        .O(\hdmi_data_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[13]_i_2 
       (.I0(hdmi_data_2d[37]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[13]),
        .O(\hdmi_data_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[14]_i_2 
       (.I0(hdmi_data_2d[38]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[14]),
        .O(\hdmi_data_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[15]_i_2 
       (.I0(hdmi_data_2d[39]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[15]),
        .O(\hdmi_data_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[16]_i_2 
       (.I0(hdmi_data_2d[40]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[16]),
        .O(\hdmi_data_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[17]_i_2 
       (.I0(hdmi_data_2d[41]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[17]),
        .O(\hdmi_data_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[18]_i_2 
       (.I0(hdmi_data_2d[42]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[18]),
        .O(\hdmi_data_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[19]_i_2 
       (.I0(hdmi_data_2d[43]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[19]),
        .O(\hdmi_data_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[1]_i_2 
       (.I0(hdmi_data_2d[25]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[1]),
        .O(\hdmi_data_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[20]_i_2 
       (.I0(hdmi_data_2d[44]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[20]),
        .O(\hdmi_data_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[21]_i_2 
       (.I0(hdmi_data_2d[45]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[21]),
        .O(\hdmi_data_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[22]_i_2 
       (.I0(hdmi_data_2d[46]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[22]),
        .O(\hdmi_data_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[23]_i_2 
       (.I0(hdmi_data_2d[47]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[23]),
        .O(\hdmi_data_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[2]_i_2 
       (.I0(hdmi_data_2d[26]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[2]),
        .O(\hdmi_data_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[3]_i_2 
       (.I0(hdmi_data_2d[27]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[3]),
        .O(\hdmi_data_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[4]_i_2 
       (.I0(hdmi_data_2d[28]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[4]),
        .O(\hdmi_data_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[5]_i_2 
       (.I0(hdmi_data_2d[29]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[5]),
        .O(\hdmi_data_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[6]_i_2 
       (.I0(hdmi_data_2d[30]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[6]),
        .O(\hdmi_data_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[7]_i_2 
       (.I0(hdmi_data_2d[31]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[7]),
        .O(\hdmi_data_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[8]_i_2 
       (.I0(hdmi_data_2d[32]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[8]),
        .O(\hdmi_data_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \hdmi_data[9]_i_2 
       (.I0(hdmi_data_2d[33]),
        .I1(hdmi_data_sel_2d),
        .I2(hdmi_data_2d[9]),
        .O(\hdmi_data_reg[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    hdmi_tpm_oos_i_1
       (.I0(hdmi_de_2d),
        .I1(hdmi_tpm_oos_reg_i_2_n_0),
        .O(hdmi_tpm_oos_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_10
       (.I0(\hdmi_tpm_data_reg[23] [5]),
        .I1(\hdmi_data_reg[5] ),
        .I2(\hdmi_tpm_data_reg[23] [3]),
        .I3(\hdmi_data_reg[3] ),
        .I4(\hdmi_data_reg[4] ),
        .I5(\hdmi_tpm_data_reg[23] [4]),
        .O(hdmi_tpm_oos_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_11
       (.I0(\hdmi_data_reg[0] ),
        .I1(\hdmi_tpm_data_reg[23] [0]),
        .I2(\hdmi_tpm_data_reg[23] [1]),
        .I3(\hdmi_data_reg[1] ),
        .I4(\hdmi_tpm_data_reg[23] [2]),
        .I5(\hdmi_data_reg[2] ),
        .O(hdmi_tpm_oos_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_4
       (.I0(\hdmi_tpm_data_reg[23] [23]),
        .I1(\hdmi_data_reg[23] ),
        .I2(\hdmi_tpm_data_reg[23] [21]),
        .I3(\hdmi_data_reg[21] ),
        .I4(\hdmi_data_reg[22] ),
        .I5(\hdmi_tpm_data_reg[23] [22]),
        .O(hdmi_tpm_oos_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_5
       (.I0(\hdmi_tpm_data_reg[23] [20]),
        .I1(\hdmi_data_reg[20] ),
        .I2(\hdmi_tpm_data_reg[23] [18]),
        .I3(\hdmi_data_reg[18] ),
        .I4(\hdmi_data_reg[19] ),
        .I5(\hdmi_tpm_data_reg[23] [19]),
        .O(hdmi_tpm_oos_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_6
       (.I0(\hdmi_tpm_data_reg[23] [17]),
        .I1(\hdmi_data_reg[17] ),
        .I2(\hdmi_tpm_data_reg[23] [15]),
        .I3(\hdmi_data_reg[15] ),
        .I4(\hdmi_data_reg[16] ),
        .I5(\hdmi_tpm_data_reg[23] [16]),
        .O(hdmi_tpm_oos_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_7
       (.I0(\hdmi_tpm_data_reg[23] [14]),
        .I1(\hdmi_data_reg[14] ),
        .I2(\hdmi_tpm_data_reg[23] [12]),
        .I3(\hdmi_data_reg[12] ),
        .I4(\hdmi_data_reg[13] ),
        .I5(\hdmi_tpm_data_reg[23] [13]),
        .O(hdmi_tpm_oos_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_8
       (.I0(\hdmi_tpm_data_reg[23] [11]),
        .I1(\hdmi_data_reg[11] ),
        .I2(\hdmi_tpm_data_reg[23] [9]),
        .I3(\hdmi_data_reg[9] ),
        .I4(\hdmi_data_reg[10] ),
        .I5(\hdmi_tpm_data_reg[23] [10]),
        .O(hdmi_tpm_oos_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_tpm_oos_i_9
       (.I0(\hdmi_tpm_data_reg[23] [8]),
        .I1(\hdmi_data_reg[8] ),
        .I2(\hdmi_tpm_data_reg[23] [6]),
        .I3(\hdmi_data_reg[6] ),
        .I4(\hdmi_data_reg[7] ),
        .I5(\hdmi_tpm_data_reg[23] [7]),
        .O(hdmi_tpm_oos_i_9_n_0));
  CARRY4 hdmi_tpm_oos_reg_i_2
       (.CI(hdmi_tpm_oos_reg_i_3_n_0),
        .CO({hdmi_tpm_oos_reg_i_2_n_0,hdmi_tpm_oos_reg_i_2_n_1,hdmi_tpm_oos_reg_i_2_n_2,hdmi_tpm_oos_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_hdmi_tpm_oos_reg_i_2_O_UNCONNECTED[3:0]),
        .S({hdmi_tpm_oos_i_4_n_0,hdmi_tpm_oos_i_5_n_0,hdmi_tpm_oos_i_6_n_0,hdmi_tpm_oos_i_7_n_0}));
  CARRY4 hdmi_tpm_oos_reg_i_3
       (.CI(1'b0),
        .CO({hdmi_tpm_oos_reg_i_3_n_0,hdmi_tpm_oos_reg_i_3_n_1,hdmi_tpm_oos_reg_i_3_n_2,hdmi_tpm_oos_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_hdmi_tpm_oos_reg_i_3_O_UNCONNECTED[3:0]),
        .S({hdmi_tpm_oos_i_8_n_0,hdmi_tpm_oos_i_9_n_0,hdmi_tpm_oos_i_10_n_0,hdmi_tpm_oos_i_11_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 9}}" *) 
  (* RTL_RAM_BITS = "24576" *) 
  (* RTL_RAM_NAME = "m_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "71" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    m_ram_reg
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,vdma_waddr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(hdmi_clk),
        .CLKBWRCLK(m_axis_mm2s_clk),
        .DBITERR(NLW_m_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(\vdma_wdata_reg[47] [31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,\vdma_wdata_reg[47] [47:32]}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(hdmi_data_2d[31:0]),
        .DOBDO({NLW_m_ram_reg_DOBDO_UNCONNECTED[31:16],hdmi_data_2d[47:32]}),
        .DOPADOP(NLW_m_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_m_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_m_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_m_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_m_ram_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({vdma_wr,vdma_wr,vdma_wr,vdma_wr,vdma_wr,vdma_wr,vdma_wr,vdma_wr}));
endmodule

(* ORIG_REF_NAME = "ad_rst" *) 
module system_axi_hdmi_core_0_ad_rst
   (\d_xfer_data_reg[0] ,
    hdmi_clk,
    up_preset_s);
  output \d_xfer_data_reg[0] ;
  input hdmi_clk;
  input up_preset_s;

  wire \d_xfer_data_reg[0] ;
  wire hdmi_clk;
  wire rst_p;
  wire up_preset_s;

  FDPE #(
    .INIT(1'b0)) 
    rst_p_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(up_preset_s),
        .Q(rst_p));
  FDPE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rst_p),
        .PRE(up_preset_s),
        .Q(\d_xfer_data_reg[0] ));
endmodule

(* ORIG_REF_NAME = "ad_rst" *) 
module system_axi_hdmi_core_0_ad_rst_0
   (up_preset_s,
    vdma_fs_toggle_m1_reg,
    clear,
    m_axis_mm2s_clk,
    m_axis_mm2s_fsync_ret,
    up_resetn);
  output up_preset_s;
  output [0:0]vdma_fs_toggle_m1_reg;
  output clear;
  input m_axis_mm2s_clk;
  input m_axis_mm2s_fsync_ret;
  input up_resetn;

  wire clear;
  wire m_axis_mm2s_clk;
  wire m_axis_mm2s_fsync_ret;
  wire rst_p_reg_n_0;
  wire up_preset_s;
  wire up_resetn;
  wire [0:0]vdma_fs_toggle_m1_reg;

  LUT1 #(
    .INIT(2'h1)) 
    rst_p_i_1
       (.I0(up_resetn),
        .O(up_preset_s));
  FDPE #(
    .INIT(1'b0)) 
    rst_p_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(up_preset_s),
        .Q(rst_p_reg_n_0));
  FDPE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(rst_p_reg_n_0),
        .PRE(up_preset_s),
        .Q(vdma_fs_toggle_m1_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \vdma_tpm_data[0]_i_1 
       (.I0(vdma_fs_toggle_m1_reg),
        .I1(m_axis_mm2s_fsync_ret),
        .O(clear));
endmodule

(* ORIG_REF_NAME = "ad_ss_444to422" *) 
module system_axi_hdmi_core_0_ad_ss_444to422
   (hdmi_16_hsync_reg,
    hdmi_16_vsync_reg,
    hdmi_es_vs_de_reg,
    hdmi_es_hs_de_reg,
    hdmi_16_data_e_reg,
    Q,
    \hdmi_es_data_reg[5] ,
    \hdmi_es_data_reg[6] ,
    \hdmi_es_data_reg[0] ,
    \hdmi_es_data_reg[1] ,
    p_5_out,
    \hdmi_es_data_reg[3] ,
    \hdmi_es_data_reg[13] ,
    \hdmi_es_data_reg[14] ,
    \hdmi_es_data_reg[8] ,
    \hdmi_es_data_reg[9] ,
    \hdmi_es_data_reg[10] ,
    \hdmi_es_data_reg[11] ,
    \hdmi_es_data_reg[12] ,
    \hdmi_es_data_reg[15] ,
    \hdmi_es_data_reg[0]_0 ,
    hdmi_36_hsync,
    hdmi_clk,
    hdmi_36_vsync,
    hdmi_vsync_data_e_reg,
    hdmi_hsync_data_e_reg,
    E,
    \d_data_cntrl_reg[187] ,
    hdmi_36_data);
  output hdmi_16_hsync_reg;
  output hdmi_16_vsync_reg;
  output hdmi_es_vs_de_reg;
  output hdmi_es_hs_de_reg;
  output hdmi_16_data_e_reg;
  output [15:0]Q;
  output \hdmi_es_data_reg[5] ;
  output \hdmi_es_data_reg[6] ;
  output \hdmi_es_data_reg[0] ;
  output \hdmi_es_data_reg[1] ;
  output [2:0]p_5_out;
  output \hdmi_es_data_reg[3] ;
  output \hdmi_es_data_reg[13] ;
  output \hdmi_es_data_reg[14] ;
  output \hdmi_es_data_reg[8] ;
  output \hdmi_es_data_reg[9] ;
  output \hdmi_es_data_reg[10] ;
  output \hdmi_es_data_reg[11] ;
  output \hdmi_es_data_reg[12] ;
  output \hdmi_es_data_reg[15] ;
  output \hdmi_es_data_reg[0]_0 ;
  input hdmi_36_hsync;
  input hdmi_clk;
  input hdmi_36_vsync;
  input hdmi_vsync_data_e_reg;
  input hdmi_hsync_data_e_reg;
  input [0:0]E;
  input [0:0]\d_data_cntrl_reg[187] ;
  input [23:0]hdmi_36_data;

  wire [0:0]E;
  wire [15:0]Q;
  wire [7:0]cb;
  wire \cb[1]_i_2_n_0 ;
  wire \cb[1]_i_3_n_0 ;
  wire \cb[1]_i_4_n_0 ;
  wire \cb[1]_i_5_n_0 ;
  wire \cb[1]_i_6_n_0 ;
  wire \cb[1]_i_7_n_0 ;
  wire \cb[5]_i_2_n_0 ;
  wire \cb[5]_i_3_n_0 ;
  wire \cb[5]_i_4_n_0 ;
  wire \cb[5]_i_5_n_0 ;
  wire \cb[5]_i_6_n_0 ;
  wire \cb[5]_i_7_n_0 ;
  wire \cb[5]_i_8_n_0 ;
  wire \cb[5]_i_9_n_0 ;
  wire \cb[7]_i_2_n_0 ;
  wire \cb_reg[1]_i_1_n_0 ;
  wire \cb_reg[1]_i_1_n_1 ;
  wire \cb_reg[1]_i_1_n_2 ;
  wire \cb_reg[1]_i_1_n_3 ;
  wire \cb_reg[5]_i_1_n_0 ;
  wire \cb_reg[5]_i_1_n_1 ;
  wire \cb_reg[5]_i_1_n_2 ;
  wire \cb_reg[5]_i_1_n_3 ;
  wire [7:0]cr;
  wire \cr[1]_i_2_n_0 ;
  wire \cr[1]_i_3_n_0 ;
  wire \cr[1]_i_4_n_0 ;
  wire \cr[1]_i_5_n_0 ;
  wire \cr[1]_i_6_n_0 ;
  wire \cr[1]_i_7_n_0 ;
  wire \cr[5]_i_2_n_0 ;
  wire \cr[5]_i_3_n_0 ;
  wire \cr[5]_i_4_n_0 ;
  wire \cr[5]_i_5_n_0 ;
  wire \cr[5]_i_6_n_0 ;
  wire \cr[5]_i_7_n_0 ;
  wire \cr[5]_i_8_n_0 ;
  wire \cr[5]_i_9_n_0 ;
  wire \cr[7]_i_2_n_0 ;
  wire cr_cb_sel;
  wire cr_cb_sel_i_1_n_0;
  wire cr_cb_sel_i_2_n_0;
  wire \cr_reg[1]_i_1_n_0 ;
  wire \cr_reg[1]_i_1_n_1 ;
  wire \cr_reg[1]_i_1_n_2 ;
  wire \cr_reg[1]_i_1_n_3 ;
  wire \cr_reg[1]_i_1_n_4 ;
  wire \cr_reg[1]_i_1_n_5 ;
  wire \cr_reg[5]_i_1_n_0 ;
  wire \cr_reg[5]_i_1_n_1 ;
  wire \cr_reg[5]_i_1_n_2 ;
  wire \cr_reg[5]_i_1_n_3 ;
  wire \cr_reg[5]_i_1_n_4 ;
  wire \cr_reg[5]_i_1_n_5 ;
  wire \cr_reg[5]_i_1_n_6 ;
  wire \cr_reg[5]_i_1_n_7 ;
  wire \cr_reg[7]_i_1_n_2 ;
  wire \cr_reg[7]_i_1_n_7 ;
  wire [0:0]\d_data_cntrl_reg[187] ;
  wire hdmi_16_data_e_reg;
  wire hdmi_16_hsync_reg;
  wire hdmi_16_vsync_reg;
  wire [23:0]hdmi_36_data;
  wire hdmi_36_hsync;
  wire hdmi_36_vsync;
  wire hdmi_clk;
  wire \hdmi_es_data[15]_i_2_n_0 ;
  wire \hdmi_es_data[15]_i_3_n_0 ;
  wire \hdmi_es_data[7]_i_2_n_0 ;
  wire \hdmi_es_data[7]_i_3_n_0 ;
  wire \hdmi_es_data_reg[0] ;
  wire \hdmi_es_data_reg[0]_0 ;
  wire \hdmi_es_data_reg[10] ;
  wire \hdmi_es_data_reg[11] ;
  wire \hdmi_es_data_reg[12] ;
  wire \hdmi_es_data_reg[13] ;
  wire \hdmi_es_data_reg[14] ;
  wire \hdmi_es_data_reg[15] ;
  wire \hdmi_es_data_reg[1] ;
  wire \hdmi_es_data_reg[3] ;
  wire \hdmi_es_data_reg[5] ;
  wire \hdmi_es_data_reg[6] ;
  wire \hdmi_es_data_reg[8] ;
  wire \hdmi_es_data_reg[9] ;
  wire hdmi_es_hs_de_reg;
  wire hdmi_es_vs_de_reg;
  wire hdmi_hsync_data_e_reg;
  wire hdmi_vsync_data_e_reg;
  wire [7:0]p_0_in;
  wire [8:1]p_0_in0_in;
  wire [2:0]p_5_out;
  wire \s422_data[10]_i_1_n_0 ;
  wire \s422_data[11]_i_1_n_0 ;
  wire \s422_data[12]_i_1_n_0 ;
  wire \s422_data[13]_i_1_n_0 ;
  wire \s422_data[14]_i_1_n_0 ;
  wire \s422_data[15]_i_1_n_0 ;
  wire \s422_data[8]_i_1_n_0 ;
  wire \s422_data[9]_i_1_n_0 ;
  wire [15:0]s444_data_2d;
  wire \s444_data_3d_reg_n_0_[0] ;
  wire \s444_data_3d_reg_n_0_[10] ;
  wire \s444_data_3d_reg_n_0_[11] ;
  wire \s444_data_3d_reg_n_0_[12] ;
  wire \s444_data_3d_reg_n_0_[13] ;
  wire \s444_data_3d_reg_n_0_[14] ;
  wire \s444_data_3d_reg_n_0_[15] ;
  wire \s444_data_3d_reg_n_0_[16] ;
  wire \s444_data_3d_reg_n_0_[17] ;
  wire \s444_data_3d_reg_n_0_[18] ;
  wire \s444_data_3d_reg_n_0_[19] ;
  wire \s444_data_3d_reg_n_0_[1] ;
  wire \s444_data_3d_reg_n_0_[20] ;
  wire \s444_data_3d_reg_n_0_[21] ;
  wire \s444_data_3d_reg_n_0_[22] ;
  wire \s444_data_3d_reg_n_0_[23] ;
  wire \s444_data_3d_reg_n_0_[2] ;
  wire \s444_data_3d_reg_n_0_[3] ;
  wire \s444_data_3d_reg_n_0_[4] ;
  wire \s444_data_3d_reg_n_0_[5] ;
  wire \s444_data_3d_reg_n_0_[6] ;
  wire \s444_data_3d_reg_n_0_[7] ;
  wire \s444_data_3d_reg_n_0_[8] ;
  wire \s444_data_3d_reg_n_0_[9] ;
  wire \s444_data_d_reg_n_0_[0] ;
  wire \s444_data_d_reg_n_0_[10] ;
  wire \s444_data_d_reg_n_0_[11] ;
  wire \s444_data_d_reg_n_0_[12] ;
  wire \s444_data_d_reg_n_0_[13] ;
  wire \s444_data_d_reg_n_0_[14] ;
  wire \s444_data_d_reg_n_0_[15] ;
  wire \s444_data_d_reg_n_0_[16] ;
  wire \s444_data_d_reg_n_0_[17] ;
  wire \s444_data_d_reg_n_0_[18] ;
  wire \s444_data_d_reg_n_0_[19] ;
  wire \s444_data_d_reg_n_0_[1] ;
  wire \s444_data_d_reg_n_0_[20] ;
  wire \s444_data_d_reg_n_0_[21] ;
  wire \s444_data_d_reg_n_0_[22] ;
  wire \s444_data_d_reg_n_0_[23] ;
  wire \s444_data_d_reg_n_0_[2] ;
  wire \s444_data_d_reg_n_0_[3] ;
  wire \s444_data_d_reg_n_0_[4] ;
  wire \s444_data_d_reg_n_0_[5] ;
  wire \s444_data_d_reg_n_0_[6] ;
  wire \s444_data_d_reg_n_0_[7] ;
  wire \s444_data_d_reg_n_0_[8] ;
  wire \s444_data_d_reg_n_0_[9] ;
  wire [0:0]s444_sync_2d;
  wire [0:0]s444_sync_3d;
  wire [0:0]s444_sync_d;
  wire [1:0]\NLW_cb_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_cb_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cb_reg[7]_i_1_O_UNCONNECTED ;
  wire [1:0]\NLW_cr_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_cr_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cr_reg[7]_i_1_O_UNCONNECTED ;

  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cb[1]_i_2 
       (.I0(\s444_data_3d_reg_n_0_[2] ),
        .I1(s444_data_2d[1]),
        .I2(\s444_data_d_reg_n_0_[2] ),
        .O(\cb[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cb[1]_i_3 
       (.I0(\s444_data_d_reg_n_0_[2] ),
        .I1(\s444_data_3d_reg_n_0_[2] ),
        .I2(s444_data_2d[1]),
        .O(\cb[1]_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cb[1]_i_4 
       (.I0(\s444_data_3d_reg_n_0_[3] ),
        .I1(s444_data_2d[2]),
        .I2(\s444_data_d_reg_n_0_[3] ),
        .I3(\cb[1]_i_2_n_0 ),
        .O(\cb[1]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \cb[1]_i_5 
       (.I0(\s444_data_3d_reg_n_0_[2] ),
        .I1(s444_data_2d[1]),
        .I2(\s444_data_d_reg_n_0_[2] ),
        .I3(s444_data_2d[0]),
        .I4(\s444_data_3d_reg_n_0_[1] ),
        .O(\cb[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cb[1]_i_6 
       (.I0(\s444_data_3d_reg_n_0_[1] ),
        .I1(s444_data_2d[0]),
        .I2(\s444_data_d_reg_n_0_[1] ),
        .O(\cb[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cb[1]_i_7 
       (.I0(\s444_data_d_reg_n_0_[0] ),
        .I1(\s444_data_3d_reg_n_0_[0] ),
        .O(\cb[1]_i_7_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cb[5]_i_2 
       (.I0(\s444_data_3d_reg_n_0_[6] ),
        .I1(s444_data_2d[5]),
        .I2(\s444_data_d_reg_n_0_[6] ),
        .O(\cb[5]_i_2_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cb[5]_i_3 
       (.I0(\s444_data_3d_reg_n_0_[5] ),
        .I1(s444_data_2d[4]),
        .I2(\s444_data_d_reg_n_0_[5] ),
        .O(\cb[5]_i_3_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cb[5]_i_4 
       (.I0(\s444_data_3d_reg_n_0_[4] ),
        .I1(s444_data_2d[3]),
        .I2(\s444_data_d_reg_n_0_[4] ),
        .O(\cb[5]_i_4_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cb[5]_i_5 
       (.I0(\s444_data_3d_reg_n_0_[3] ),
        .I1(s444_data_2d[2]),
        .I2(\s444_data_d_reg_n_0_[3] ),
        .O(\cb[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cb[5]_i_6 
       (.I0(\cb[5]_i_2_n_0 ),
        .I1(s444_data_2d[6]),
        .I2(\s444_data_3d_reg_n_0_[7] ),
        .I3(\s444_data_d_reg_n_0_[7] ),
        .O(\cb[5]_i_6_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cb[5]_i_7 
       (.I0(\s444_data_3d_reg_n_0_[6] ),
        .I1(s444_data_2d[5]),
        .I2(\s444_data_d_reg_n_0_[6] ),
        .I3(\cb[5]_i_3_n_0 ),
        .O(\cb[5]_i_7_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cb[5]_i_8 
       (.I0(\s444_data_3d_reg_n_0_[5] ),
        .I1(s444_data_2d[4]),
        .I2(\s444_data_d_reg_n_0_[5] ),
        .I3(\cb[5]_i_4_n_0 ),
        .O(\cb[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cb[5]_i_9 
       (.I0(\s444_data_3d_reg_n_0_[4] ),
        .I1(s444_data_2d[3]),
        .I2(\s444_data_d_reg_n_0_[4] ),
        .I3(\cb[5]_i_5_n_0 ),
        .O(\cb[5]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \cb[7]_i_2 
       (.I0(\s444_data_d_reg_n_0_[7] ),
        .I1(s444_data_2d[6]),
        .I2(\s444_data_3d_reg_n_0_[7] ),
        .I3(s444_data_2d[7]),
        .O(\cb[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(cb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(cb[1]),
        .R(1'b0));
  CARRY4 \cb_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\cb_reg[1]_i_1_n_0 ,\cb_reg[1]_i_1_n_1 ,\cb_reg[1]_i_1_n_2 ,\cb_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cb[1]_i_2_n_0 ,\cb[1]_i_3_n_0 ,\s444_data_d_reg_n_0_[1] ,\s444_data_d_reg_n_0_[0] }),
        .O({p_0_in[1:0],\NLW_cb_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({\cb[1]_i_4_n_0 ,\cb[1]_i_5_n_0 ,\cb[1]_i_6_n_0 ,\cb[1]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(cb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(cb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(cb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(cb[5]),
        .R(1'b0));
  CARRY4 \cb_reg[5]_i_1 
       (.CI(\cb_reg[1]_i_1_n_0 ),
        .CO({\cb_reg[5]_i_1_n_0 ,\cb_reg[5]_i_1_n_1 ,\cb_reg[5]_i_1_n_2 ,\cb_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cb[5]_i_2_n_0 ,\cb[5]_i_3_n_0 ,\cb[5]_i_4_n_0 ,\cb[5]_i_5_n_0 }),
        .O(p_0_in[5:2]),
        .S({\cb[5]_i_6_n_0 ,\cb[5]_i_7_n_0 ,\cb[5]_i_8_n_0 ,\cb[5]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(cb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cb_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(cb[7]),
        .R(1'b0));
  CARRY4 \cb_reg[7]_i_1 
       (.CI(\cb_reg[5]_i_1_n_0 ),
        .CO({\NLW_cb_reg[7]_i_1_CO_UNCONNECTED [3:2],p_0_in[7],\NLW_cb_reg[7]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s444_data_2d[7]}),
        .O({\NLW_cb_reg[7]_i_1_O_UNCONNECTED [3:1],p_0_in[6]}),
        .S({1'b0,1'b0,1'b1,\cb[7]_i_2_n_0 }));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cr[1]_i_2 
       (.I0(\s444_data_3d_reg_n_0_[18] ),
        .I1(p_0_in0_in[2]),
        .I2(\s444_data_d_reg_n_0_[18] ),
        .O(\cr[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cr[1]_i_3 
       (.I0(\s444_data_d_reg_n_0_[18] ),
        .I1(\s444_data_3d_reg_n_0_[18] ),
        .I2(p_0_in0_in[2]),
        .O(\cr[1]_i_3_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cr[1]_i_4 
       (.I0(\s444_data_3d_reg_n_0_[19] ),
        .I1(p_0_in0_in[3]),
        .I2(\s444_data_d_reg_n_0_[19] ),
        .I3(\cr[1]_i_2_n_0 ),
        .O(\cr[1]_i_4_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \cr[1]_i_5 
       (.I0(\s444_data_3d_reg_n_0_[18] ),
        .I1(p_0_in0_in[2]),
        .I2(\s444_data_d_reg_n_0_[18] ),
        .I3(p_0_in0_in[1]),
        .I4(\s444_data_3d_reg_n_0_[17] ),
        .O(\cr[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cr[1]_i_6 
       (.I0(\s444_data_3d_reg_n_0_[17] ),
        .I1(p_0_in0_in[1]),
        .I2(\s444_data_d_reg_n_0_[17] ),
        .O(\cr[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cr[1]_i_7 
       (.I0(\s444_data_d_reg_n_0_[16] ),
        .I1(\s444_data_3d_reg_n_0_[16] ),
        .O(\cr[1]_i_7_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cr[5]_i_2 
       (.I0(\s444_data_3d_reg_n_0_[22] ),
        .I1(p_0_in0_in[6]),
        .I2(\s444_data_d_reg_n_0_[22] ),
        .O(\cr[5]_i_2_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cr[5]_i_3 
       (.I0(\s444_data_3d_reg_n_0_[21] ),
        .I1(p_0_in0_in[5]),
        .I2(\s444_data_d_reg_n_0_[21] ),
        .O(\cr[5]_i_3_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cr[5]_i_4 
       (.I0(\s444_data_3d_reg_n_0_[20] ),
        .I1(p_0_in0_in[4]),
        .I2(\s444_data_d_reg_n_0_[20] ),
        .O(\cr[5]_i_4_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cr[5]_i_5 
       (.I0(\s444_data_3d_reg_n_0_[19] ),
        .I1(p_0_in0_in[3]),
        .I2(\s444_data_d_reg_n_0_[19] ),
        .O(\cr[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cr[5]_i_6 
       (.I0(\cr[5]_i_2_n_0 ),
        .I1(p_0_in0_in[7]),
        .I2(\s444_data_3d_reg_n_0_[23] ),
        .I3(\s444_data_d_reg_n_0_[23] ),
        .O(\cr[5]_i_6_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cr[5]_i_7 
       (.I0(\s444_data_3d_reg_n_0_[22] ),
        .I1(p_0_in0_in[6]),
        .I2(\s444_data_d_reg_n_0_[22] ),
        .I3(\cr[5]_i_3_n_0 ),
        .O(\cr[5]_i_7_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cr[5]_i_8 
       (.I0(\s444_data_3d_reg_n_0_[21] ),
        .I1(p_0_in0_in[5]),
        .I2(\s444_data_d_reg_n_0_[21] ),
        .I3(\cr[5]_i_4_n_0 ),
        .O(\cr[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cr[5]_i_9 
       (.I0(\s444_data_3d_reg_n_0_[20] ),
        .I1(p_0_in0_in[4]),
        .I2(\s444_data_d_reg_n_0_[20] ),
        .I3(\cr[5]_i_5_n_0 ),
        .O(\cr[5]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \cr[7]_i_2 
       (.I0(\s444_data_d_reg_n_0_[23] ),
        .I1(p_0_in0_in[7]),
        .I2(\s444_data_3d_reg_n_0_[23] ),
        .I3(p_0_in0_in[8]),
        .O(\cr[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    cr_cb_sel_i_1
       (.I0(s444_sync_3d),
        .O(cr_cb_sel_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cr_cb_sel_i_2
       (.I0(cr_cb_sel),
        .O(cr_cb_sel_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cr_cb_sel_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(cr_cb_sel_i_2_n_0),
        .Q(cr_cb_sel),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[1]_i_1_n_5 ),
        .Q(cr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[1]_i_1_n_4 ),
        .Q(cr[1]),
        .R(1'b0));
  CARRY4 \cr_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\cr_reg[1]_i_1_n_0 ,\cr_reg[1]_i_1_n_1 ,\cr_reg[1]_i_1_n_2 ,\cr_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cr[1]_i_2_n_0 ,\cr[1]_i_3_n_0 ,\s444_data_d_reg_n_0_[17] ,\s444_data_d_reg_n_0_[16] }),
        .O({\cr_reg[1]_i_1_n_4 ,\cr_reg[1]_i_1_n_5 ,\NLW_cr_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({\cr[1]_i_4_n_0 ,\cr[1]_i_5_n_0 ,\cr[1]_i_6_n_0 ,\cr[1]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[5]_i_1_n_7 ),
        .Q(cr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[5]_i_1_n_6 ),
        .Q(cr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[5]_i_1_n_5 ),
        .Q(cr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[5]_i_1_n_4 ),
        .Q(cr[5]),
        .R(1'b0));
  CARRY4 \cr_reg[5]_i_1 
       (.CI(\cr_reg[1]_i_1_n_0 ),
        .CO({\cr_reg[5]_i_1_n_0 ,\cr_reg[5]_i_1_n_1 ,\cr_reg[5]_i_1_n_2 ,\cr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cr[5]_i_2_n_0 ,\cr[5]_i_3_n_0 ,\cr[5]_i_4_n_0 ,\cr[5]_i_5_n_0 }),
        .O({\cr_reg[5]_i_1_n_4 ,\cr_reg[5]_i_1_n_5 ,\cr_reg[5]_i_1_n_6 ,\cr_reg[5]_i_1_n_7 }),
        .S({\cr[5]_i_6_n_0 ,\cr[5]_i_7_n_0 ,\cr[5]_i_8_n_0 ,\cr[5]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[7]_i_1_n_7 ),
        .Q(cr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cr_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\cr_reg[7]_i_1_n_2 ),
        .Q(cr[7]),
        .R(1'b0));
  CARRY4 \cr_reg[7]_i_1 
       (.CI(\cr_reg[5]_i_1_n_0 ),
        .CO({\NLW_cr_reg[7]_i_1_CO_UNCONNECTED [3:2],\cr_reg[7]_i_1_n_2 ,\NLW_cr_reg[7]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in0_in[8]}),
        .O({\NLW_cr_reg[7]_i_1_O_UNCONNECTED [3:1],\cr_reg[7]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\cr[7]_i_2_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \hdmi_es_data[0]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[0]),
        .I3(\hdmi_es_data[7]_i_3_n_0 ),
        .O(\hdmi_es_data_reg[0] ));
  LUT5 #(
    .INIT(32'h0D000000)) 
    \hdmi_es_data[10]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(\hdmi_es_data[15]_i_3_n_0 ),
        .I3(Q[10]),
        .I4(hdmi_16_data_e_reg),
        .O(\hdmi_es_data_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \hdmi_es_data[11]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[11]),
        .I3(\hdmi_es_data[15]_i_3_n_0 ),
        .O(\hdmi_es_data_reg[11] ));
  LUT5 #(
    .INIT(32'hDDD00000)) 
    \hdmi_es_data[12]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[12]),
        .I3(\hdmi_es_data[15]_i_3_n_0 ),
        .I4(hdmi_16_data_e_reg),
        .O(\hdmi_es_data_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \hdmi_es_data[13]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[13]),
        .O(\hdmi_es_data_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_es_data[14]_i_1 
       (.I0(hdmi_16_data_e_reg),
        .O(\hdmi_es_data_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \hdmi_es_data[14]_i_2 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[14]),
        .O(\hdmi_es_data_reg[14] ));
  LUT5 #(
    .INIT(32'h22F2FFFF)) 
    \hdmi_es_data[15]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[15]),
        .I3(\hdmi_es_data[15]_i_3_n_0 ),
        .I4(hdmi_16_data_e_reg),
        .O(\hdmi_es_data_reg[15] ));
  LUT6 #(
    .INIT(64'h8880808000000000)) 
    \hdmi_es_data[15]_i_2 
       (.I0(Q[13]),
        .I1(Q[14]),
        .I2(Q[12]),
        .I3(Q[11]),
        .I4(Q[10]),
        .I5(Q[15]),
        .O(\hdmi_es_data[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hdmi_es_data[15]_i_3 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(\d_data_cntrl_reg[187] ),
        .O(\hdmi_es_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \hdmi_es_data[1]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[1]),
        .I3(\hdmi_es_data[7]_i_3_n_0 ),
        .O(\hdmi_es_data_reg[1] ));
  LUT5 #(
    .INIT(32'h0D000000)) 
    \hdmi_es_data[2]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(\hdmi_es_data[7]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(hdmi_16_data_e_reg),
        .O(p_5_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \hdmi_es_data[3]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[3]),
        .I3(\hdmi_es_data[7]_i_3_n_0 ),
        .O(\hdmi_es_data_reg[3] ));
  LUT5 #(
    .INIT(32'hDDD00000)) 
    \hdmi_es_data[4]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[4]),
        .I3(\hdmi_es_data[7]_i_3_n_0 ),
        .I4(hdmi_16_data_e_reg),
        .O(p_5_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \hdmi_es_data[5]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[5]),
        .O(\hdmi_es_data_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \hdmi_es_data[6]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[6]),
        .O(\hdmi_es_data_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h22F2FFFF)) 
    \hdmi_es_data[7]_i_1 
       (.I0(\hdmi_es_data[7]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[7]),
        .I3(\hdmi_es_data[7]_i_3_n_0 ),
        .I4(hdmi_16_data_e_reg),
        .O(p_5_out[2]));
  LUT6 #(
    .INIT(64'h8880808000000000)) 
    \hdmi_es_data[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[7]),
        .O(\hdmi_es_data[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \hdmi_es_data[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\d_data_cntrl_reg[187] ),
        .O(\hdmi_es_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \hdmi_es_data[8]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[8]),
        .I3(\hdmi_es_data[15]_i_3_n_0 ),
        .O(\hdmi_es_data_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h22F2)) 
    \hdmi_es_data[9]_i_1 
       (.I0(\hdmi_es_data[15]_i_2_n_0 ),
        .I1(\d_data_cntrl_reg[187] ),
        .I2(Q[9]),
        .I3(\hdmi_es_data[15]_i_3_n_0 ),
        .O(\hdmi_es_data_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[10]_i_1 
       (.I0(cr[2]),
        .I1(cb[2]),
        .I2(cr_cb_sel),
        .O(\s422_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[11]_i_1 
       (.I0(cr[3]),
        .I1(cb[3]),
        .I2(cr_cb_sel),
        .O(\s422_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[12]_i_1 
       (.I0(cr[4]),
        .I1(cb[4]),
        .I2(cr_cb_sel),
        .O(\s422_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[13]_i_1 
       (.I0(cr[5]),
        .I1(cb[5]),
        .I2(cr_cb_sel),
        .O(\s422_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[14]_i_1 
       (.I0(cr[6]),
        .I1(cb[6]),
        .I2(cr_cb_sel),
        .O(\s422_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[15]_i_1 
       (.I0(cr[7]),
        .I1(cb[7]),
        .I2(cr_cb_sel),
        .O(\s422_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[8]_i_1 
       (.I0(cr[0]),
        .I1(cb[0]),
        .I2(cr_cb_sel),
        .O(\s422_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s422_data[9]_i_1 
       (.I0(cr[1]),
        .I1(cb[1]),
        .I2(cr_cb_sel),
        .O(\s422_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[8] ),
        .Q(Q[0]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[9] ),
        .Q(Q[1]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[10] ),
        .Q(Q[2]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[11] ),
        .Q(Q[3]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[12] ),
        .Q(Q[4]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[13] ),
        .Q(Q[5]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[14] ),
        .Q(Q[6]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s444_data_3d_reg_n_0_[15] ),
        .Q(Q[7]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_data_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\s422_data[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(cr_cb_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s422_sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(s444_sync_3d),
        .Q(hdmi_16_data_e_reg),
        .R(1'b0));
  (* srl_bus_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg[1]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s422_sync_reg[1]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_vsync_data_e_reg),
        .Q(hdmi_es_vs_de_reg));
  (* srl_bus_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg[2]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s422_sync_reg[2]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_hsync_data_e_reg),
        .Q(hdmi_es_hs_de_reg));
  (* srl_bus_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg[3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s422_sync_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_36_vsync),
        .Q(hdmi_16_vsync_reg));
  (* srl_bus_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg " *) 
  (* srl_name = "\inst/i_tx_core/i_ss_444to422/s422_sync_reg[4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s422_sync_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_36_hsync),
        .Q(hdmi_16_hsync_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[0] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[0] ),
        .Q(s444_data_2d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[10] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[10] ),
        .Q(s444_data_2d[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[11] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[11] ),
        .Q(s444_data_2d[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[12] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[12] ),
        .Q(s444_data_2d[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[13] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[13] ),
        .Q(s444_data_2d[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[14] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[14] ),
        .Q(s444_data_2d[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[15] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[15] ),
        .Q(s444_data_2d[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[16] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[16] ),
        .Q(p_0_in0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[17] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[17] ),
        .Q(p_0_in0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[18] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[18] ),
        .Q(p_0_in0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[19] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[19] ),
        .Q(p_0_in0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[1] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[1] ),
        .Q(s444_data_2d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[20] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[20] ),
        .Q(p_0_in0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[21] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[21] ),
        .Q(p_0_in0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[22] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[22] ),
        .Q(p_0_in0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[23] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[23] ),
        .Q(p_0_in0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[2] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[2] ),
        .Q(s444_data_2d[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[3] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[3] ),
        .Q(s444_data_2d[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[4] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[4] ),
        .Q(s444_data_2d[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[5] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[5] ),
        .Q(s444_data_2d[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[6] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[6] ),
        .Q(s444_data_2d[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[7] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[7] ),
        .Q(s444_data_2d[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[8] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[8] ),
        .Q(s444_data_2d[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_2d_reg[9] 
       (.C(hdmi_clk),
        .CE(s444_sync_d),
        .D(\s444_data_d_reg_n_0_[9] ),
        .Q(s444_data_2d[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[0] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[0]),
        .Q(\s444_data_3d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[10] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[10]),
        .Q(\s444_data_3d_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[11] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[11]),
        .Q(\s444_data_3d_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[12] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[12]),
        .Q(\s444_data_3d_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[13] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[13]),
        .Q(\s444_data_3d_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[14] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[14]),
        .Q(\s444_data_3d_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[15] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[15]),
        .Q(\s444_data_3d_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[16] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[1]),
        .Q(\s444_data_3d_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[17] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[2]),
        .Q(\s444_data_3d_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[18] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[3]),
        .Q(\s444_data_3d_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[19] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[4]),
        .Q(\s444_data_3d_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[1] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[1]),
        .Q(\s444_data_3d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[20] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[5]),
        .Q(\s444_data_3d_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[21] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[6]),
        .Q(\s444_data_3d_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[22] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[7]),
        .Q(\s444_data_3d_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[23] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(p_0_in0_in[8]),
        .Q(\s444_data_3d_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[2] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[2]),
        .Q(\s444_data_3d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[3] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[3]),
        .Q(\s444_data_3d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[4] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[4]),
        .Q(\s444_data_3d_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[5] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[5]),
        .Q(\s444_data_3d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[6] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[6]),
        .Q(\s444_data_3d_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[7] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[7]),
        .Q(\s444_data_3d_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[8] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[8]),
        .Q(\s444_data_3d_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_3d_reg[9] 
       (.C(hdmi_clk),
        .CE(s444_sync_2d),
        .D(s444_data_2d[9]),
        .Q(\s444_data_3d_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[0] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[0]),
        .Q(\s444_data_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[10] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[10]),
        .Q(\s444_data_d_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[11] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[11]),
        .Q(\s444_data_d_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[12] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[12]),
        .Q(\s444_data_d_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[13] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[13]),
        .Q(\s444_data_d_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[14] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[14]),
        .Q(\s444_data_d_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[15] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[15]),
        .Q(\s444_data_d_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[16] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[16]),
        .Q(\s444_data_d_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[17] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[17]),
        .Q(\s444_data_d_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[18] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[18]),
        .Q(\s444_data_d_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[19] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[19]),
        .Q(\s444_data_d_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[1] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[1]),
        .Q(\s444_data_d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[20] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[20]),
        .Q(\s444_data_d_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[21] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[21]),
        .Q(\s444_data_d_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[22] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[22]),
        .Q(\s444_data_d_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[23] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[23]),
        .Q(\s444_data_d_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[2] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[2]),
        .Q(\s444_data_d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[3] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[3]),
        .Q(\s444_data_d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[4] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[4]),
        .Q(\s444_data_d_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[5] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[5]),
        .Q(\s444_data_d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[6] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[6]),
        .Q(\s444_data_d_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[7] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[7]),
        .Q(\s444_data_d_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[8] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[8]),
        .Q(\s444_data_d_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_data_d_reg[9] 
       (.C(hdmi_clk),
        .CE(E),
        .D(hdmi_36_data[9]),
        .Q(\s444_data_d_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_sync_2d_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(s444_sync_d),
        .Q(s444_sync_2d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_sync_3d_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(s444_sync_2d),
        .Q(s444_sync_3d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s444_sync_d_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(E),
        .Q(s444_sync_d),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_hdmi_tx" *) 
module system_axi_hdmi_core_0_axi_hdmi_tx
   (hdmi_36_hsync,
    hdmi_16_hsync,
    hdmi_36_vsync,
    hdmi_16_vsync,
    s_axi_rvalid,
    s_axi_rdata,
    m_axis_mm2s_fsync,
    m_axis_mm2s_tready,
    hdmi_36_data_e,
    hdmi_16_data_e,
    hdmi_36_data,
    hdmi_16_data,
    hdmi_16_es_data,
    hdmi_out_clk,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    hdmi_clk,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_awvalid,
    s_axi_wvalid,
    m_axis_mm2s_clk,
    m_axis_mm2s_tdata,
    m_axis_mm2s_fsync_ret,
    m_axis_mm2s_tvalid,
    s_axi_bready,
    s_axi_aresetn);
  output hdmi_36_hsync;
  output hdmi_16_hsync;
  output hdmi_36_vsync;
  output hdmi_16_vsync;
  output s_axi_rvalid;
  output [31:0]s_axi_rdata;
  output m_axis_mm2s_fsync;
  output m_axis_mm2s_tready;
  output hdmi_36_data_e;
  output hdmi_16_data_e;
  output [23:0]hdmi_36_data;
  output [15:0]hdmi_16_data;
  output [15:0]hdmi_16_es_data;
  output hdmi_out_clk;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  input hdmi_clk;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_aclk;
  input [13:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [13:0]s_axi_araddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input m_axis_mm2s_clk;
  input [47:0]m_axis_mm2s_tdata;
  input m_axis_mm2s_fsync_ret;
  input m_axis_mm2s_tvalid;
  input s_axi_bready;
  input s_axi_aresetn;

  wire [23:0]data10;
  wire [23:0]data12;
  wire [23:0]data13;
  wire [23:0]data15;
  wire [1:0]data2;
  wire [15:0]hdmi_16_data;
  wire hdmi_16_data_e;
  wire [15:0]hdmi_16_es_data;
  wire hdmi_16_hsync;
  wire hdmi_16_vsync;
  wire [23:0]hdmi_36_data;
  wire hdmi_36_data_e;
  wire hdmi_36_hsync;
  wire hdmi_36_vsync;
  wire hdmi_clk;
  wire hdmi_csc_bypass_s;
  wire hdmi_enable0;
  wire hdmi_fs2;
  wire hdmi_fs_toggle_s;
  wire hdmi_full_range_s;
  wire [15:0]hdmi_he_max_s;
  wire [15:0]hdmi_he_min_s;
  wire [0:0]hdmi_hl_width_s;
  wire [15:1]hdmi_hl_width_s_1;
  wire [15:0]hdmi_hs_count_reg;
  wire [15:0]hdmi_hs_width_s;
  wire hdmi_out_clk;
  wire [8:0]hdmi_raddr_g_s;
  wire hdmi_rst;
  wire hdmi_status_s;
  wire [23:0]hdmi_tpm_data_reg;
  wire hdmi_tpm_oos_s;
  wire [15:0]hdmi_ve_max_s;
  wire [15:0]hdmi_ve_min_s;
  wire [0:0]hdmi_vf_width_s;
  wire [15:1]hdmi_vf_width_s_0;
  wire hdmi_vs1;
  wire [15:0]hdmi_vs_count_reg;
  wire [15:0]hdmi_vs_width_s;
  wire i_tx_core_n_66;
  wire i_tx_core_n_67;
  wire i_tx_core_n_68;
  wire i_tx_core_n_69;
  wire i_tx_core_n_70;
  wire i_tx_core_n_71;
  wire i_tx_core_n_72;
  wire i_tx_core_n_73;
  wire i_tx_core_n_74;
  wire i_tx_core_n_75;
  wire i_tx_core_n_76;
  wire i_tx_core_n_77;
  wire i_tx_core_n_78;
  wire i_tx_core_n_79;
  wire i_tx_core_n_80;
  wire i_tx_core_n_81;
  wire i_tx_core_n_82;
  wire i_tx_core_n_83;
  wire i_tx_core_n_84;
  wire i_tx_core_n_85;
  wire i_tx_core_n_86;
  wire i_tx_core_n_87;
  wire i_tx_core_n_88;
  wire i_tx_core_n_89;
  wire i_tx_core_n_9;
  wire i_tx_core_n_90;
  wire i_tx_core_n_91;
  wire i_tx_core_n_92;
  wire i_tx_core_n_93;
  wire i_tx_core_n_94;
  wire i_tx_core_n_95;
  wire i_tx_core_n_96;
  wire i_tx_core_n_97;
  wire i_up_axi_n_10;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_16;
  wire i_up_axi_n_17;
  wire i_up_axi_n_18;
  wire i_up_axi_n_19;
  wire i_up_axi_n_20;
  wire i_up_axi_n_21;
  wire i_up_axi_n_22;
  wire i_up_axi_n_23;
  wire i_up_axi_n_24;
  wire i_up_axi_n_25;
  wire i_up_axi_n_26;
  wire i_up_axi_n_27;
  wire i_up_axi_n_28;
  wire i_up_axi_n_29;
  wire i_up_axi_n_30;
  wire i_up_axi_n_34;
  wire i_up_axi_n_35;
  wire i_up_axi_n_36;
  wire i_up_axi_n_37;
  wire i_up_axi_n_38;
  wire i_up_axi_n_5;
  wire i_up_axi_n_6;
  wire i_up_axi_n_7;
  wire i_up_axi_n_71;
  wire i_up_axi_n_8;
  wire i_up_axi_n_82;
  wire i_up_axi_n_83;
  wire i_up_axi_n_84;
  wire i_up_axi_n_85;
  wire i_up_axi_n_86;
  wire i_up_axi_n_87;
  wire i_up_axi_n_88;
  wire i_up_axi_n_89;
  wire i_up_axi_n_9;
  wire i_up_axi_n_90;
  wire i_up_axi_n_91;
  wire i_up_axi_n_92;
  wire i_up_axi_n_93;
  wire i_up_axi_n_94;
  wire i_up_axi_n_95;
  wire i_up_axi_n_96;
  wire i_up_axi_n_97;
  wire i_up_axi_n_98;
  wire i_up_n_119;
  wire i_up_n_120;
  wire i_up_n_121;
  wire i_up_n_130;
  wire i_up_n_143;
  wire i_up_n_144;
  wire i_up_n_145;
  wire i_up_n_146;
  wire i_up_n_147;
  wire i_up_n_148;
  wire i_up_n_149;
  wire i_up_n_150;
  wire i_up_n_151;
  wire i_up_n_152;
  wire i_up_n_153;
  wire i_up_n_154;
  wire i_up_n_155;
  wire i_up_n_156;
  wire i_up_n_157;
  wire i_up_n_158;
  wire i_up_n_159;
  wire i_up_n_160;
  wire i_up_n_161;
  wire i_up_n_162;
  wire i_up_n_171;
  wire i_up_n_204;
  wire i_up_n_205;
  wire i_up_n_339;
  wire i_up_n_340;
  wire i_up_n_341;
  wire i_up_n_342;
  wire i_up_n_343;
  wire i_up_n_344;
  wire i_up_n_345;
  wire i_up_n_346;
  wire i_up_n_347;
  wire i_up_n_348;
  wire i_up_n_349;
  wire i_up_n_350;
  wire i_up_n_351;
  wire i_up_n_352;
  wire i_up_n_353;
  wire i_up_n_354;
  wire i_up_n_355;
  wire i_up_n_356;
  wire i_up_n_357;
  wire i_up_n_358;
  wire i_up_n_359;
  wire i_up_n_360;
  wire i_up_n_361;
  wire i_up_n_362;
  wire i_up_n_363;
  wire i_up_n_364;
  wire i_up_n_365;
  wire i_up_n_366;
  wire i_up_n_367;
  wire i_up_n_368;
  wire i_up_n_369;
  wire i_up_n_370;
  wire i_up_n_371;
  wire i_up_n_372;
  wire i_up_n_373;
  wire i_up_n_374;
  wire i_up_n_375;
  wire i_up_n_376;
  wire i_up_n_377;
  wire i_up_n_378;
  wire i_up_n_379;
  wire i_up_n_380;
  wire i_up_n_381;
  wire i_up_n_382;
  wire i_up_n_383;
  wire i_up_n_384;
  wire i_up_n_385;
  wire i_up_n_386;
  wire i_up_n_387;
  wire i_up_n_388;
  wire i_up_n_389;
  wire i_up_n_390;
  wire i_up_n_391;
  wire i_up_n_392;
  wire i_up_n_393;
  wire i_up_n_394;
  wire i_up_n_395;
  wire i_up_n_396;
  wire i_up_n_397;
  wire i_up_n_398;
  wire i_up_n_399;
  wire i_up_n_400;
  wire i_up_n_401;
  wire i_up_n_402;
  wire i_up_n_403;
  wire i_up_n_404;
  wire i_up_n_405;
  wire m_axis_mm2s_clk;
  wire m_axis_mm2s_fsync;
  wire m_axis_mm2s_fsync_ret;
  wire [47:0]m_axis_mm2s_tdata;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire [1:0]p_7_in;
  wire [1:0]p_8_in;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_const_rgb0;
  wire [31:0]up_d_count;
  wire [185:32]up_data_cntrl;
  wire up_he_max0;
  wire up_hl_active0;
  wire up_hs_width0;
  wire up_rack_s;
  wire [4:0]up_raddr_s;
  wire [31:0]up_rdata_s;
  wire up_resetn;
  wire up_rreq_s;
  wire [23:0]up_scratch;
  wire up_scratch0;
  wire up_vdma_ovf_s;
  wire up_vdma_unf_s;
  wire up_ve_max0;
  wire up_vf_active0;
  wire up_vs_width0;
  wire up_wack_s;
  wire [31:0]up_wdata_s;
  wire up_wreq_s;
  wire vdma_fs_ret_toggle_s;
  wire [8:0]vdma_fs_waddr_s;
  wire vdma_ovf_s;
  wire vdma_rst;
  wire vdma_tpm_oos_s;
  wire vdma_unf_s;
  wire [8:0]vdma_waddr_s;
  wire [47:0]vdma_wdata_s;
  wire vdma_wr_s;
  wire NLW_i_clk_oddr_R_UNCONNECTED;
  wire NLW_i_clk_oddr_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_clk_oddr
       (.C(hdmi_clk),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(hdmi_out_clk),
        .R(NLW_i_clk_oddr_R_UNCONNECTED),
        .S(NLW_i_clk_oddr_S_UNCONNECTED));
  system_axi_hdmi_core_0_axi_hdmi_tx_core i_tx_core
       (.CO(hdmi_vs1),
        .D({i_up_n_379,i_up_n_380,i_up_n_381,i_up_n_382,i_up_n_383,i_up_n_384,i_up_n_385,i_up_n_386,i_up_n_387,i_up_n_388,i_up_n_389,i_up_n_390,i_up_n_391,i_up_n_392,i_up_n_393,i_up_n_394,i_up_n_395,i_up_n_396,i_up_n_397,i_up_n_398,i_up_n_399,i_up_n_400,i_up_n_401,i_up_n_402}),
        .E(hdmi_36_data_e),
        .Q(vdma_wdata_s),
        .S(i_tx_core_n_9),
        .\d_data_cntrl_reg[103] ({i_up_n_363,i_up_n_364,i_up_n_365,i_up_n_366}),
        .\d_data_cntrl_reg[111] ({i_up_n_367,i_up_n_368,i_up_n_369,i_up_n_370}),
        .\d_data_cntrl_reg[119] ({i_up_n_339,i_up_n_340,i_up_n_341,i_up_n_342}),
        .\d_data_cntrl_reg[127] ({i_up_n_343,i_up_n_344,i_up_n_345,i_up_n_346}),
        .\d_data_cntrl_reg[15] ({i_up_n_359,i_up_n_360,i_up_n_361,i_up_n_362}),
        .\d_data_cntrl_reg[187] ({hdmi_full_range_s,hdmi_csc_bypass_s,hdmi_hl_width_s,hdmi_hs_width_s,hdmi_he_max_s,hdmi_he_min_s,hdmi_vf_width_s,hdmi_vs_width_s,hdmi_ve_max_s,hdmi_ve_min_s}),
        .\d_data_cntrl_reg[23] ({i_up_n_347,i_up_n_348,i_up_n_349,i_up_n_350}),
        .\d_data_cntrl_reg[31] ({i_up_n_351,i_up_n_352,i_up_n_353,i_up_n_354}),
        .\d_data_cntrl_reg[7] ({i_up_n_355,i_up_n_356,i_up_n_357,i_up_n_358}),
        .\d_data_cntrl_reg[87] ({i_up_n_371,i_up_n_372,i_up_n_373,i_up_n_374}),
        .\d_data_cntrl_reg[95] ({i_up_n_375,i_up_n_376,i_up_n_377,i_up_n_378}),
        .hdmi_16_data(hdmi_16_data),
        .hdmi_16_data_e(hdmi_16_data_e),
        .hdmi_16_es_data(hdmi_16_es_data),
        .hdmi_16_hsync(hdmi_16_hsync),
        .hdmi_16_vsync(hdmi_16_vsync),
        .hdmi_36_data(hdmi_36_data),
        .hdmi_36_hsync(hdmi_36_hsync),
        .hdmi_36_vsync(hdmi_36_vsync),
        .hdmi_clk(hdmi_clk),
        .\hdmi_data_reg[0]_0 (i_tx_core_n_83),
        .\hdmi_data_reg[10]_0 (i_tx_core_n_76),
        .\hdmi_data_reg[11]_0 (i_tx_core_n_74),
        .\hdmi_data_reg[12]_0 (i_tx_core_n_96),
        .\hdmi_data_reg[13]_0 (i_tx_core_n_97),
        .\hdmi_data_reg[14]_0 (i_tx_core_n_95),
        .\hdmi_data_reg[15]_0 (i_tx_core_n_93),
        .\hdmi_data_reg[16]_0 (i_tx_core_n_94),
        .\hdmi_data_reg[17]_0 (i_tx_core_n_92),
        .\hdmi_data_reg[18]_0 (i_tx_core_n_90),
        .\hdmi_data_reg[19]_0 (i_tx_core_n_91),
        .\hdmi_data_reg[1]_0 (i_tx_core_n_84),
        .\hdmi_data_reg[20]_0 (i_tx_core_n_89),
        .\hdmi_data_reg[21]_0 (i_tx_core_n_87),
        .\hdmi_data_reg[22]_0 (i_tx_core_n_88),
        .\hdmi_data_reg[23]_0 (hdmi_tpm_data_reg),
        .\hdmi_data_reg[23]_1 (i_tx_core_n_86),
        .\hdmi_data_reg[2]_0 (i_tx_core_n_85),
        .\hdmi_data_reg[3]_0 (i_tx_core_n_81),
        .\hdmi_data_reg[4]_0 (i_tx_core_n_82),
        .\hdmi_data_reg[5]_0 (i_tx_core_n_80),
        .\hdmi_data_reg[6]_0 (i_tx_core_n_78),
        .\hdmi_data_reg[7]_0 (i_tx_core_n_79),
        .\hdmi_data_reg[8]_0 (i_tx_core_n_77),
        .\hdmi_data_reg[9]_0 (i_tx_core_n_75),
        .hdmi_enable0(hdmi_enable0),
        .hdmi_fs_toggle(hdmi_fs_toggle_s),
        .hdmi_hl_width_s(hdmi_hl_width_s_1),
        .hdmi_rst(hdmi_rst),
        .hdmi_status_s(hdmi_status_s),
        .hdmi_tpm_oos_s(hdmi_tpm_oos_s),
        .hdmi_vf_width_s(hdmi_vf_width_s_0),
        .\hdmi_vs_count_reg[0]_0 (hdmi_hs_count_reg),
        .\hdmi_vs_count_reg[15]_0 (hdmi_fs2),
        .hdmi_vs_reg_0({i_tx_core_n_66,i_tx_core_n_67,i_tx_core_n_68,i_tx_core_n_69}),
        .hdmi_vs_reg_1({i_tx_core_n_70,i_tx_core_n_71,i_tx_core_n_72,i_tx_core_n_73}),
        .m_axis_mm2s_clk(m_axis_mm2s_clk),
        .out(hdmi_vs_count_reg),
        .vdma_fs_ret_toggle(vdma_fs_ret_toggle_s),
        .\vdma_fs_waddr_reg[8] (vdma_fs_waddr_s),
        .\vdma_raddr_g_m1_reg[8] (hdmi_raddr_g_s),
        .vdma_waddr(vdma_waddr_s),
        .vdma_wr(vdma_wr_s));
  system_axi_hdmi_core_0_up_hdmi_tx i_up
       (.CO(hdmi_vs1),
        .D({data2,up_data_cntrl[185:184],up_data_cntrl[166:165],up_data_cntrl[161:160],data10[15:2],data10[0],up_data_cntrl[127:112],data12,data13[15:0],up_data_cntrl[47:34],up_data_cntrl[32],data15}),
        .E(up_ve_max0),
        .Q({up_d_count[31:24],up_d_count[6:5],up_d_count[1:0]}),
        .S(i_tx_core_n_9),
        .SR(hdmi_rst),
        .clear(i_up_n_171),
        .hdmi_clk(hdmi_clk),
        .\hdmi_data_reg[23] ({i_up_n_379,i_up_n_380,i_up_n_381,i_up_n_382,i_up_n_383,i_up_n_384,i_up_n_385,i_up_n_386,i_up_n_387,i_up_n_388,i_up_n_389,i_up_n_390,i_up_n_391,i_up_n_392,i_up_n_393,i_up_n_394,i_up_n_395,i_up_n_396,i_up_n_397,i_up_n_398,i_up_n_399,i_up_n_400,i_up_n_401,i_up_n_402}),
        .hdmi_enable0(hdmi_enable0),
        .\hdmi_es_data_reg[15] ({hdmi_full_range_s,hdmi_csc_bypass_s,hdmi_hl_width_s,hdmi_hs_width_s,hdmi_he_max_s,hdmi_he_min_s,hdmi_vf_width_s,hdmi_vs_width_s,hdmi_ve_max_s,hdmi_ve_min_s}),
        .hdmi_fs_reg(hdmi_fs2),
        .hdmi_hl_width_s(hdmi_hl_width_s_1),
        .\hdmi_hs_count_reg[15] (hdmi_hs_count_reg),
        .hdmi_hs_de_reg({i_up_n_363,i_up_n_364,i_up_n_365,i_up_n_366}),
        .hdmi_hs_de_reg_0({i_up_n_367,i_up_n_368,i_up_n_369,i_up_n_370}),
        .hdmi_hs_de_reg_1({i_up_n_371,i_up_n_372,i_up_n_373,i_up_n_374}),
        .hdmi_hs_de_reg_2({i_up_n_375,i_up_n_376,i_up_n_377,i_up_n_378}),
        .hdmi_hs_reg({i_up_n_339,i_up_n_340,i_up_n_341,i_up_n_342}),
        .hdmi_hs_reg_0({i_up_n_343,i_up_n_344,i_up_n_345,i_up_n_346}),
        .hdmi_status_s(hdmi_status_s),
        .\hdmi_tpm_data_reg[23] (hdmi_tpm_data_reg),
        .hdmi_tpm_oos_s(hdmi_tpm_oos_s),
        .hdmi_vf_width_s(hdmi_vf_width_s_0),
        .\hdmi_vs_count_reg[15] ({i_tx_core_n_70,i_tx_core_n_71,i_tx_core_n_72,i_tx_core_n_73}),
        .\hdmi_vs_count_reg[7] ({i_tx_core_n_66,i_tx_core_n_67,i_tx_core_n_68,i_tx_core_n_69}),
        .hdmi_vs_de_reg({i_up_n_347,i_up_n_348,i_up_n_349,i_up_n_350}),
        .hdmi_vs_de_reg_0({i_up_n_351,i_up_n_352,i_up_n_353,i_up_n_354}),
        .hdmi_vs_de_reg_1({i_up_n_355,i_up_n_356,i_up_n_357,i_up_n_358}),
        .hdmi_vs_de_reg_2({i_up_n_359,i_up_n_360,i_up_n_361,i_up_n_362}),
        .m_axis_mm2s_clk(m_axis_mm2s_clk),
        .m_axis_mm2s_fsync_ret(m_axis_mm2s_fsync_ret),
        .m_ram_reg(i_tx_core_n_76),
        .m_ram_reg_0(i_tx_core_n_74),
        .m_ram_reg_1(i_tx_core_n_75),
        .m_ram_reg_10(i_tx_core_n_83),
        .m_ram_reg_11(i_tx_core_n_88),
        .m_ram_reg_12(i_tx_core_n_86),
        .m_ram_reg_13(i_tx_core_n_87),
        .m_ram_reg_14(i_tx_core_n_91),
        .m_ram_reg_15(i_tx_core_n_89),
        .m_ram_reg_16(i_tx_core_n_90),
        .m_ram_reg_17(i_tx_core_n_94),
        .m_ram_reg_18(i_tx_core_n_92),
        .m_ram_reg_19(i_tx_core_n_93),
        .m_ram_reg_2(i_tx_core_n_79),
        .m_ram_reg_20(i_tx_core_n_97),
        .m_ram_reg_21(i_tx_core_n_95),
        .m_ram_reg_22(i_tx_core_n_96),
        .m_ram_reg_3(i_tx_core_n_77),
        .m_ram_reg_4(i_tx_core_n_78),
        .m_ram_reg_5(i_tx_core_n_82),
        .m_ram_reg_6(i_tx_core_n_80),
        .m_ram_reg_7(i_tx_core_n_81),
        .m_ram_reg_8(i_tx_core_n_84),
        .m_ram_reg_9(i_tx_core_n_85),
        .out(hdmi_vs_count_reg),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(i_up_axi_n_96),
        .\up_d_count_reg[24] (i_up_axi_n_82),
        .\up_d_count_reg[25] (i_up_axi_n_83),
        .\up_d_count_reg[26] (i_up_axi_n_84),
        .\up_d_count_reg[27] (i_up_axi_n_85),
        .\up_d_count_reg[28] (i_up_axi_n_86),
        .\up_d_count_reg[29] (i_up_axi_n_87),
        .\up_d_count_reg[2] (i_up_n_120),
        .\up_d_count_reg[30] (i_up_axi_n_88),
        .\up_d_count_reg[31] (i_up_axi_n_89),
        .\up_data_status_reg[0] (i_up_n_404),
        .\up_data_status_reg[0]_0 (i_up_n_405),
        .up_rack_s(up_rack_s),
        .\up_raddr_reg[0] (i_up_axi_n_35),
        .\up_raddr_reg[0]_0 (i_up_axi_n_34),
        .\up_raddr_reg[2] (i_up_axi_n_29),
        .\up_raddr_reg[2]_0 (i_up_axi_n_30),
        .\up_raddr_reg[3] (i_up_axi_n_37),
        .\up_raddr_reg[4] (i_up_axi_n_90),
        .\up_raddr_reg[4]_0 (i_up_axi_n_36),
        .\up_raddr_reg[4]_1 ({up_raddr_s[4],up_raddr_s[1:0]}),
        .\up_rdata_int_reg[31] (up_rdata_s),
        .\up_rdata_reg[0]_0 (i_up_n_204),
        .\up_rdata_reg[0]_1 (i_up_n_205),
        .\up_rdata_reg[10]_0 (i_up_n_148),
        .\up_rdata_reg[11]_0 (i_up_n_149),
        .\up_rdata_reg[12]_0 (i_up_n_150),
        .\up_rdata_reg[13]_0 (i_up_n_151),
        .\up_rdata_reg[14]_0 (i_up_n_152),
        .\up_rdata_reg[15]_0 (i_up_n_153),
        .\up_rdata_reg[16]_0 (i_up_n_154),
        .\up_rdata_reg[17]_0 (i_up_n_155),
        .\up_rdata_reg[18]_0 (i_up_n_156),
        .\up_rdata_reg[19]_0 (i_up_n_157),
        .\up_rdata_reg[1]_0 (i_up_n_162),
        .\up_rdata_reg[20]_0 (i_up_n_158),
        .\up_rdata_reg[21]_0 (i_up_n_159),
        .\up_rdata_reg[22]_0 (i_up_n_160),
        .\up_rdata_reg[23]_0 (i_up_n_161),
        .\up_rdata_reg[23]_1 (data10[23:16]),
        .\up_rdata_reg[23]_2 (up_scratch),
        .\up_rdata_reg[23]_3 (data13[23:16]),
        .\up_rdata_reg[2]_0 (i_up_n_130),
        .\up_rdata_reg[3]_0 (i_up_n_143),
        .\up_rdata_reg[4]_0 (i_up_n_144),
        .\up_rdata_reg[7]_0 (i_up_n_145),
        .\up_rdata_reg[8]_0 (i_up_n_146),
        .\up_rdata_reg[9]_0 (i_up_n_147),
        .up_resetn(up_resetn),
        .up_rreq_s(up_rreq_s),
        .\up_scratch_reg[23]_0 ({i_up_axi_n_5,i_up_axi_n_6,i_up_axi_n_7,i_up_axi_n_8,i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,i_up_axi_n_17,i_up_axi_n_18,i_up_axi_n_19,i_up_axi_n_20,i_up_axi_n_21,i_up_axi_n_22,i_up_axi_n_23,i_up_axi_n_24,i_up_axi_n_25,i_up_axi_n_26,i_up_axi_n_27,i_up_axi_n_28}),
        .up_vdma_ovf_s(up_vdma_ovf_s),
        .up_vdma_unf_s(up_vdma_unf_s),
        .up_wack_s(up_wack_s),
        .\up_waddr_reg[1] (up_hs_width0),
        .\up_waddr_reg[1]_0 (up_hl_active0),
        .\up_waddr_reg[1]_1 (up_const_rgb0),
        .\up_waddr_reg[4] (up_he_max0),
        .\up_waddr_reg[8] (up_vs_width0),
        .\up_waddr_reg[8]_0 (up_vf_active0),
        .\up_waddr_reg[8]_1 (up_scratch0),
        .\up_wdata_reg[0] (i_up_axi_n_71),
        .\up_wdata_reg[0]_0 (i_up_axi_n_91),
        .\up_wdata_reg[0]_1 (i_up_axi_n_98),
        .\up_wdata_reg[0]_2 (i_up_axi_n_92),
        .\up_wdata_reg[0]_3 (i_up_axi_n_94),
        .\up_wdata_reg[1] (i_up_axi_n_38),
        .\up_wdata_reg[1]_0 (i_up_axi_n_97),
        .\up_wdata_reg[1]_1 (i_up_axi_n_93),
        .\up_wdata_reg[1]_2 (i_up_axi_n_95),
        .\up_wdata_reg[31] (up_wdata_s),
        .up_wreq_s(up_wreq_s),
        .\up_xfer_data_reg[186] (i_up_n_121),
        .\up_xfer_data_reg[22] (i_up_n_403),
        .\up_xfer_data_reg[58] (i_up_n_119),
        .vdma_fs_toggle_m1_reg(vdma_rst),
        .vdma_ovf_s(vdma_ovf_s),
        .vdma_tpm_oos_s(vdma_tpm_oos_s),
        .vdma_unf_s(vdma_unf_s));
  system_axi_hdmi_core_0_up_axi i_up_axi
       (.D({data2,up_data_cntrl[185:184],up_data_cntrl[166:165],up_data_cntrl[161:160],data10[15:2],data10[0],up_data_cntrl[127:112],data12,data13[15:0],up_data_cntrl[47:34],up_data_cntrl[32],data15}),
        .E(up_ve_max0),
        .Q({up_d_count[31:24],up_d_count[6:5],up_d_count[1:0]}),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(i_up_n_120),
        .s_axi_aresetn_1(i_up_n_119),
        .s_axi_aresetn_2(i_up_n_121),
        .s_axi_aresetn_3(i_up_n_403),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\up_axi_rdata_reg[0]_0 (i_up_axi_n_96),
        .\up_const_rgb_reg[23] (up_const_rgb0),
        .up_csc_bypass_reg(i_up_axi_n_98),
        .\up_d_count_reg[10] (i_up_n_148),
        .\up_d_count_reg[11] (i_up_n_149),
        .\up_d_count_reg[12] (i_up_n_150),
        .\up_d_count_reg[13] (i_up_n_151),
        .\up_d_count_reg[14] (i_up_n_152),
        .\up_d_count_reg[15] (i_up_n_153),
        .\up_d_count_reg[16] (i_up_n_154),
        .\up_d_count_reg[17] (i_up_n_155),
        .\up_d_count_reg[18] (i_up_n_156),
        .\up_d_count_reg[19] (i_up_n_157),
        .\up_d_count_reg[20] (i_up_n_158),
        .\up_d_count_reg[21] (i_up_n_159),
        .\up_d_count_reg[22] (i_up_n_160),
        .\up_d_count_reg[23] (i_up_n_161),
        .\up_d_count_reg[2] (i_up_n_130),
        .\up_d_count_reg[3] (i_up_n_143),
        .\up_d_count_reg[4] (i_up_n_144),
        .\up_d_count_reg[7] (i_up_n_145),
        .\up_d_count_reg[8] (i_up_n_146),
        .\up_d_count_reg[9] (i_up_n_147),
        .\up_data_status_reg[0] (i_up_n_405),
        .\up_data_status_reg[0]_0 (i_up_n_404),
        .\up_data_status_reg[1] (i_up_n_204),
        .up_full_range_reg(i_up_axi_n_97),
        .up_hdmi_tpm_oos_reg(i_up_axi_n_95),
        .\up_he_min_reg[15] (up_he_max0),
        .\up_hl_active_reg[7] (data10[23:16]),
        .\up_hl_width_reg[15] (up_hl_active0),
        .\up_hs_width_reg[15] (up_hs_width0),
        .up_rack_s(up_rack_s),
        .\up_rdata_reg[0] (i_up_axi_n_29),
        .\up_rdata_reg[0]_0 (i_up_axi_n_30),
        .\up_rdata_reg[0]_1 ({up_raddr_s[4],up_raddr_s[1:0]}),
        .\up_rdata_reg[0]_2 (i_up_axi_n_34),
        .\up_rdata_reg[0]_3 (i_up_axi_n_37),
        .\up_rdata_reg[16] (i_up_axi_n_36),
        .\up_rdata_reg[23] ({i_up_axi_n_5,i_up_axi_n_6,i_up_axi_n_7,i_up_axi_n_8,i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,i_up_axi_n_17,i_up_axi_n_18,i_up_axi_n_19,i_up_axi_n_20,i_up_axi_n_21,i_up_axi_n_22,i_up_axi_n_23,i_up_axi_n_24,i_up_axi_n_25,i_up_axi_n_26,i_up_axi_n_27,i_up_axi_n_28}),
        .\up_rdata_reg[24] (i_up_axi_n_82),
        .\up_rdata_reg[24]_0 (i_up_axi_n_90),
        .\up_rdata_reg[25] (i_up_axi_n_83),
        .\up_rdata_reg[26] (i_up_axi_n_84),
        .\up_rdata_reg[27] (i_up_axi_n_85),
        .\up_rdata_reg[28] (i_up_axi_n_86),
        .\up_rdata_reg[29] (i_up_axi_n_87),
        .\up_rdata_reg[30] (i_up_axi_n_88),
        .\up_rdata_reg[31] (i_up_axi_n_89),
        .\up_rdata_reg[31]_0 (up_rdata_s),
        .\up_rdata_reg[5] (i_up_axi_n_35),
        .up_resetn(up_resetn),
        .up_resetn_reg(i_up_axi_n_91),
        .up_rreq_s(up_rreq_s),
        .\up_scratch_reg[23] (up_scratch),
        .\up_scratch_reg[31] (up_scratch0),
        .\up_srcsel_reg[0] (i_up_axi_n_71),
        .\up_srcsel_reg[0]_0 (i_up_n_205),
        .\up_srcsel_reg[1] (i_up_axi_n_38),
        .up_vdma_ovf_reg(i_up_axi_n_93),
        .up_vdma_ovf_s(up_vdma_ovf_s),
        .up_vdma_tpm_oos_reg(i_up_axi_n_94),
        .up_vdma_unf_reg(i_up_axi_n_92),
        .up_vdma_unf_s(up_vdma_unf_s),
        .\up_ve_max_reg[15] (up_wdata_s),
        .\up_vf_active_reg[7] (data13[23:16]),
        .\up_vf_width_reg[15] (up_vf_active0),
        .\up_vs_width_reg[15] (up_vs_width0),
        .\up_vs_width_reg[1] (i_up_n_162),
        .up_wack_s(up_wack_s),
        .up_wreq_s(up_wreq_s));
  system_axi_hdmi_core_0_axi_hdmi_tx_vdma i_vdma
       (.D(hdmi_raddr_g_s),
        .E(vdma_wr_s),
        .Q(vdma_waddr_s),
        .SR(vdma_rst),
        .clear(i_up_n_171),
        .hdmi_fs_toggle_s(hdmi_fs_toggle_s),
        .\hdmi_fs_waddr_reg[8] (vdma_fs_waddr_s),
        .m_axis_mm2s_clk(m_axis_mm2s_clk),
        .m_axis_mm2s_fsync(m_axis_mm2s_fsync),
        .m_axis_mm2s_fsync_ret(m_axis_mm2s_fsync_ret),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .m_ram_reg(vdma_wdata_s),
        .vdma_fs_ret_toggle_s(vdma_fs_ret_toggle_s),
        .vdma_ovf_s(vdma_ovf_s),
        .vdma_tpm_oos_s(vdma_tpm_oos_s),
        .vdma_unf_s(vdma_unf_s));
endmodule

(* ORIG_REF_NAME = "axi_hdmi_tx_core" *) 
module system_axi_hdmi_core_0_axi_hdmi_tx_core
   (hdmi_36_hsync,
    hdmi_16_hsync,
    hdmi_36_vsync,
    hdmi_16_vsync,
    E,
    hdmi_16_data_e,
    hdmi_status_s,
    hdmi_fs_toggle,
    hdmi_tpm_oos_s,
    S,
    out,
    \hdmi_vs_count_reg[0]_0 ,
    \hdmi_data_reg[23]_0 ,
    hdmi_vs_reg_0,
    hdmi_vs_reg_1,
    \hdmi_data_reg[11]_0 ,
    \hdmi_data_reg[9]_0 ,
    \hdmi_data_reg[10]_0 ,
    \hdmi_data_reg[8]_0 ,
    \hdmi_data_reg[6]_0 ,
    \hdmi_data_reg[7]_0 ,
    \hdmi_data_reg[5]_0 ,
    \hdmi_data_reg[3]_0 ,
    \hdmi_data_reg[4]_0 ,
    \hdmi_data_reg[0]_0 ,
    \hdmi_data_reg[1]_0 ,
    \hdmi_data_reg[2]_0 ,
    \hdmi_data_reg[23]_1 ,
    \hdmi_data_reg[21]_0 ,
    \hdmi_data_reg[22]_0 ,
    \hdmi_data_reg[20]_0 ,
    \hdmi_data_reg[18]_0 ,
    \hdmi_data_reg[19]_0 ,
    \hdmi_data_reg[17]_0 ,
    \hdmi_data_reg[15]_0 ,
    \hdmi_data_reg[16]_0 ,
    \hdmi_data_reg[14]_0 ,
    \hdmi_data_reg[12]_0 ,
    \hdmi_data_reg[13]_0 ,
    hdmi_36_data,
    hdmi_16_data,
    hdmi_16_es_data,
    \vdma_raddr_g_m1_reg[8] ,
    hdmi_clk,
    m_axis_mm2s_clk,
    vdma_waddr,
    Q,
    vdma_wr,
    hdmi_rst,
    vdma_fs_ret_toggle,
    CO,
    hdmi_enable0,
    \d_data_cntrl_reg[187] ,
    \hdmi_vs_count_reg[15]_0 ,
    \d_data_cntrl_reg[119] ,
    \d_data_cntrl_reg[127] ,
    \d_data_cntrl_reg[23] ,
    \d_data_cntrl_reg[31] ,
    \d_data_cntrl_reg[7] ,
    \d_data_cntrl_reg[15] ,
    \d_data_cntrl_reg[103] ,
    \d_data_cntrl_reg[111] ,
    \d_data_cntrl_reg[87] ,
    \d_data_cntrl_reg[95] ,
    hdmi_hl_width_s,
    hdmi_vf_width_s,
    \vdma_fs_waddr_reg[8] ,
    D);
  output hdmi_36_hsync;
  output hdmi_16_hsync;
  output hdmi_36_vsync;
  output hdmi_16_vsync;
  output [0:0]E;
  output hdmi_16_data_e;
  output hdmi_status_s;
  output hdmi_fs_toggle;
  output hdmi_tpm_oos_s;
  output [0:0]S;
  output [15:0]out;
  output [15:0]\hdmi_vs_count_reg[0]_0 ;
  output [23:0]\hdmi_data_reg[23]_0 ;
  output [3:0]hdmi_vs_reg_0;
  output [3:0]hdmi_vs_reg_1;
  output \hdmi_data_reg[11]_0 ;
  output \hdmi_data_reg[9]_0 ;
  output \hdmi_data_reg[10]_0 ;
  output \hdmi_data_reg[8]_0 ;
  output \hdmi_data_reg[6]_0 ;
  output \hdmi_data_reg[7]_0 ;
  output \hdmi_data_reg[5]_0 ;
  output \hdmi_data_reg[3]_0 ;
  output \hdmi_data_reg[4]_0 ;
  output \hdmi_data_reg[0]_0 ;
  output \hdmi_data_reg[1]_0 ;
  output \hdmi_data_reg[2]_0 ;
  output \hdmi_data_reg[23]_1 ;
  output \hdmi_data_reg[21]_0 ;
  output \hdmi_data_reg[22]_0 ;
  output \hdmi_data_reg[20]_0 ;
  output \hdmi_data_reg[18]_0 ;
  output \hdmi_data_reg[19]_0 ;
  output \hdmi_data_reg[17]_0 ;
  output \hdmi_data_reg[15]_0 ;
  output \hdmi_data_reg[16]_0 ;
  output \hdmi_data_reg[14]_0 ;
  output \hdmi_data_reg[12]_0 ;
  output \hdmi_data_reg[13]_0 ;
  output [23:0]hdmi_36_data;
  output [15:0]hdmi_16_data;
  output [15:0]hdmi_16_es_data;
  output [8:0]\vdma_raddr_g_m1_reg[8] ;
  input hdmi_clk;
  input m_axis_mm2s_clk;
  input [8:0]vdma_waddr;
  input [47:0]Q;
  input vdma_wr;
  input hdmi_rst;
  input vdma_fs_ret_toggle;
  input [0:0]CO;
  input hdmi_enable0;
  input [99:0]\d_data_cntrl_reg[187] ;
  input [0:0]\hdmi_vs_count_reg[15]_0 ;
  input [3:0]\d_data_cntrl_reg[119] ;
  input [3:0]\d_data_cntrl_reg[127] ;
  input [3:0]\d_data_cntrl_reg[23] ;
  input [3:0]\d_data_cntrl_reg[31] ;
  input [3:0]\d_data_cntrl_reg[7] ;
  input [3:0]\d_data_cntrl_reg[15] ;
  input [3:0]\d_data_cntrl_reg[103] ;
  input [3:0]\d_data_cntrl_reg[111] ;
  input [3:0]\d_data_cntrl_reg[87] ;
  input [3:0]\d_data_cntrl_reg[95] ;
  input [14:0]hdmi_hl_width_s;
  input [14:0]hdmi_vf_width_s;
  input [8:0]\vdma_fs_waddr_reg[8] ;
  input [23:0]D;

  wire [0:0]CO;
  wire [23:0]D;
  wire [0:0]E;
  wire [47:0]Q;
  wire [0:0]S;
  wire [7:0]b2g_return;
  wire [3:0]\d_data_cntrl_reg[103] ;
  wire [3:0]\d_data_cntrl_reg[111] ;
  wire [3:0]\d_data_cntrl_reg[119] ;
  wire [3:0]\d_data_cntrl_reg[127] ;
  wire [3:0]\d_data_cntrl_reg[15] ;
  wire [99:0]\d_data_cntrl_reg[187] ;
  wire [3:0]\d_data_cntrl_reg[23] ;
  wire [3:0]\d_data_cntrl_reg[31] ;
  wire [3:0]\d_data_cntrl_reg[7] ;
  wire [3:0]\d_data_cntrl_reg[87] ;
  wire [3:0]\d_data_cntrl_reg[95] ;
  wire [7:0]data_p;
  wire [15:0]hdmi_16_data;
  wire hdmi_16_data_e;
  wire [15:0]hdmi_16_es_data;
  wire hdmi_16_hsync;
  wire hdmi_16_vsync;
  wire \hdmi_24_data[0]_i_1_n_0 ;
  wire \hdmi_24_data[10]_i_1_n_0 ;
  wire \hdmi_24_data[11]_i_1_n_0 ;
  wire \hdmi_24_data[12]_i_1_n_0 ;
  wire \hdmi_24_data[13]_i_1_n_0 ;
  wire \hdmi_24_data[14]_i_1_n_0 ;
  wire \hdmi_24_data[15]_i_1_n_0 ;
  wire \hdmi_24_data[16]_i_1_n_0 ;
  wire \hdmi_24_data[17]_i_1_n_0 ;
  wire \hdmi_24_data[18]_i_1_n_0 ;
  wire \hdmi_24_data[19]_i_1_n_0 ;
  wire \hdmi_24_data[1]_i_1_n_0 ;
  wire \hdmi_24_data[20]_i_1_n_0 ;
  wire \hdmi_24_data[21]_i_1_n_0 ;
  wire \hdmi_24_data[22]_i_1_n_0 ;
  wire \hdmi_24_data[23]_i_1_n_0 ;
  wire \hdmi_24_data[2]_i_1_n_0 ;
  wire \hdmi_24_data[3]_i_1_n_0 ;
  wire \hdmi_24_data[4]_i_1_n_0 ;
  wire \hdmi_24_data[5]_i_1_n_0 ;
  wire \hdmi_24_data[6]_i_1_n_0 ;
  wire \hdmi_24_data[7]_i_1_n_0 ;
  wire \hdmi_24_data[8]_i_1_n_0 ;
  wire \hdmi_24_data[9]_i_1_n_0 ;
  wire [23:0]hdmi_36_data;
  wire hdmi_36_hsync;
  wire hdmi_36_vsync;
  wire hdmi_clk;
  wire [23:0]hdmi_data;
  wire hdmi_data_e;
  wire \hdmi_data_reg[0]_0 ;
  wire \hdmi_data_reg[10]_0 ;
  wire \hdmi_data_reg[11]_0 ;
  wire \hdmi_data_reg[12]_0 ;
  wire \hdmi_data_reg[13]_0 ;
  wire \hdmi_data_reg[14]_0 ;
  wire \hdmi_data_reg[15]_0 ;
  wire \hdmi_data_reg[16]_0 ;
  wire \hdmi_data_reg[17]_0 ;
  wire \hdmi_data_reg[18]_0 ;
  wire \hdmi_data_reg[19]_0 ;
  wire \hdmi_data_reg[1]_0 ;
  wire \hdmi_data_reg[20]_0 ;
  wire \hdmi_data_reg[21]_0 ;
  wire \hdmi_data_reg[22]_0 ;
  wire [23:0]\hdmi_data_reg[23]_0 ;
  wire \hdmi_data_reg[23]_1 ;
  wire \hdmi_data_reg[2]_0 ;
  wire \hdmi_data_reg[3]_0 ;
  wire \hdmi_data_reg[4]_0 ;
  wire \hdmi_data_reg[5]_0 ;
  wire \hdmi_data_reg[6]_0 ;
  wire \hdmi_data_reg[7]_0 ;
  wire \hdmi_data_reg[8]_0 ;
  wire \hdmi_data_reg[9]_0 ;
  wire hdmi_data_sel_2d;
  wire hdmi_data_sel_d;
  wire hdmi_de_2d;
  wire hdmi_de_d;
  wire hdmi_de_s;
  wire hdmi_enable0;
  wire hdmi_enable_reg_inv_n_0;
  wire \hdmi_es_data_4d_reg[0]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[10]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[11]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[12]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[13]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[14]_srl4_i_1_n_0 ;
  wire \hdmi_es_data_4d_reg[14]_srl4_n_0 ;
  wire \hdmi_es_data_4d_reg[15]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[1]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[2]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[3]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[4]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[5]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[6]_srl4_i_1_n_0 ;
  wire \hdmi_es_data_4d_reg[6]_srl4_n_0 ;
  wire \hdmi_es_data_4d_reg[7]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[8]_srl3_n_0 ;
  wire \hdmi_es_data_4d_reg[9]_srl3_n_0 ;
  wire [15:0]hdmi_es_data_5d;
  wire \hdmi_es_data_6d[0]_i_1_n_0 ;
  wire \hdmi_es_data_6d[10]_i_1_n_0 ;
  wire \hdmi_es_data_6d[11]_i_1_n_0 ;
  wire \hdmi_es_data_6d[12]_i_1_n_0 ;
  wire \hdmi_es_data_6d[13]_i_1_n_0 ;
  wire \hdmi_es_data_6d[13]_i_2_n_0 ;
  wire \hdmi_es_data_6d[14]_i_1_n_0 ;
  wire \hdmi_es_data_6d[14]_i_2_n_0 ;
  wire \hdmi_es_data_6d[15]_i_1_n_0 ;
  wire \hdmi_es_data_6d[1]_i_1_n_0 ;
  wire \hdmi_es_data_6d[2]_i_1_n_0 ;
  wire \hdmi_es_data_6d[3]_i_1_n_0 ;
  wire \hdmi_es_data_6d[4]_i_1_n_0 ;
  wire \hdmi_es_data_6d[5]_i_1_n_0 ;
  wire \hdmi_es_data_6d[6]_i_1_n_0 ;
  wire \hdmi_es_data_6d[7]_i_1_n_0 ;
  wire \hdmi_es_data_6d[8]_i_1_n_0 ;
  wire \hdmi_es_data_6d[9]_i_1_n_0 ;
  wire [15:0]hdmi_es_data_d;
  wire \hdmi_es_data_d[0]_i_1_n_0 ;
  wire \hdmi_es_data_d[10]_i_1_n_0 ;
  wire \hdmi_es_data_d[11]_i_1_n_0 ;
  wire \hdmi_es_data_d[11]_i_2_n_0 ;
  wire \hdmi_es_data_d[12]_i_1_n_0 ;
  wire \hdmi_es_data_d[13]_i_1_n_0 ;
  wire \hdmi_es_data_d[13]_i_2_n_0 ;
  wire \hdmi_es_data_d[15]_i_1_n_0 ;
  wire \hdmi_es_data_d[15]_i_2_n_0 ;
  wire \hdmi_es_data_d[1]_i_1_n_0 ;
  wire \hdmi_es_data_d[2]_i_1_n_0 ;
  wire \hdmi_es_data_d[3]_i_1_n_0 ;
  wire \hdmi_es_data_d[4]_i_1_n_0 ;
  wire \hdmi_es_data_d[5]_i_1_n_0 ;
  wire \hdmi_es_data_d[7]_i_1_n_0 ;
  wire \hdmi_es_data_d[8]_i_1_n_0 ;
  wire \hdmi_es_data_d[9]_i_1_n_0 ;
  wire \hdmi_es_data_reg_n_0_[0] ;
  wire \hdmi_es_data_reg_n_0_[10] ;
  wire \hdmi_es_data_reg_n_0_[11] ;
  wire \hdmi_es_data_reg_n_0_[12] ;
  wire \hdmi_es_data_reg_n_0_[13] ;
  wire \hdmi_es_data_reg_n_0_[14] ;
  wire \hdmi_es_data_reg_n_0_[15] ;
  wire \hdmi_es_data_reg_n_0_[1] ;
  wire \hdmi_es_data_reg_n_0_[2] ;
  wire \hdmi_es_data_reg_n_0_[3] ;
  wire \hdmi_es_data_reg_n_0_[4] ;
  wire \hdmi_es_data_reg_n_0_[5] ;
  wire \hdmi_es_data_reg_n_0_[6] ;
  wire \hdmi_es_data_reg_n_0_[7] ;
  wire \hdmi_es_data_reg_n_0_[8] ;
  wire \hdmi_es_data_reg_n_0_[9] ;
  wire hdmi_es_hs_de;
  wire hdmi_es_hs_de_2d;
  wire hdmi_es_hs_de_3d;
  wire hdmi_es_hs_de_4d;
  wire hdmi_es_hs_de_5d;
  wire hdmi_es_hs_de_d;
  wire hdmi_es_vs_de;
  wire hdmi_fs;
  wire hdmi_fs_i_1_n_0;
  wire hdmi_fs_i_3_n_0;
  wire hdmi_fs_i_4_n_0;
  wire hdmi_fs_i_5_n_0;
  wire hdmi_fs_ret;
  wire hdmi_fs_ret_s;
  wire hdmi_fs_ret_toggle_m1;
  wire hdmi_fs_ret_toggle_m2;
  wire hdmi_fs_ret_toggle_m3;
  wire hdmi_fs_toggle;
  wire hdmi_fs_toggle_i_1_n_0;
  wire [8:0]hdmi_fs_waddr;
  wire [14:0]hdmi_hl_width_s;
  wire hdmi_hs;
  wire hdmi_hs1;
  wire hdmi_hs_2d_reg_srl2_n_0;
  wire \hdmi_hs_count[0]_i_10_n_0 ;
  wire \hdmi_hs_count[0]_i_11_n_0 ;
  wire \hdmi_hs_count[0]_i_12_n_0 ;
  wire \hdmi_hs_count[0]_i_13_n_0 ;
  wire \hdmi_hs_count[0]_i_14_n_0 ;
  wire \hdmi_hs_count[0]_i_15_n_0 ;
  wire \hdmi_hs_count[0]_i_16_n_0 ;
  wire \hdmi_hs_count[0]_i_17_n_0 ;
  wire \hdmi_hs_count[0]_i_18_n_0 ;
  wire \hdmi_hs_count[0]_i_19_n_0 ;
  wire \hdmi_hs_count[0]_i_20_n_0 ;
  wire \hdmi_hs_count[0]_i_21_n_0 ;
  wire \hdmi_hs_count[0]_i_22_n_0 ;
  wire \hdmi_hs_count[0]_i_23_n_0 ;
  wire \hdmi_hs_count[0]_i_4_n_0 ;
  wire \hdmi_hs_count[0]_i_5_n_0 ;
  wire \hdmi_hs_count[0]_i_6_n_0 ;
  wire \hdmi_hs_count[0]_i_7_n_0 ;
  wire \hdmi_hs_count[0]_i_8_n_0 ;
  wire \hdmi_hs_count[0]_i_9_n_0 ;
  wire \hdmi_hs_count[12]_i_2_n_0 ;
  wire \hdmi_hs_count[12]_i_3_n_0 ;
  wire \hdmi_hs_count[12]_i_4_n_0 ;
  wire \hdmi_hs_count[12]_i_5_n_0 ;
  wire \hdmi_hs_count[4]_i_2_n_0 ;
  wire \hdmi_hs_count[4]_i_3_n_0 ;
  wire \hdmi_hs_count[4]_i_4_n_0 ;
  wire \hdmi_hs_count[4]_i_5_n_0 ;
  wire \hdmi_hs_count[8]_i_2_n_0 ;
  wire \hdmi_hs_count[8]_i_3_n_0 ;
  wire \hdmi_hs_count[8]_i_4_n_0 ;
  wire \hdmi_hs_count[8]_i_5_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_1_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_1_n_1 ;
  wire \hdmi_hs_count_reg[0]_i_1_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_1_n_3 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_1 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_3 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_4 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_5 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_6 ;
  wire \hdmi_hs_count_reg[0]_i_2_n_7 ;
  wire \hdmi_hs_count_reg[0]_i_3_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_3_n_1 ;
  wire \hdmi_hs_count_reg[0]_i_3_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_3_n_3 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_1 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_2 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_3 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_4 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_5 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_6 ;
  wire \hdmi_hs_count_reg[12]_i_1_n_7 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_0 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_1 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_2 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_3 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_4 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_5 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_6 ;
  wire \hdmi_hs_count_reg[4]_i_1_n_7 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_0 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_1 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_2 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_3 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_4 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_5 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_6 ;
  wire \hdmi_hs_count_reg[8]_i_1_n_7 ;
  wire hdmi_hs_de;
  wire hdmi_hs_de1;
  wire hdmi_hs_de11_in;
  wire hdmi_hs_de_2d_reg_srl2_n_0;
  wire hdmi_hs_de_i_14_n_0;
  wire hdmi_hs_de_i_15_n_0;
  wire hdmi_hs_de_i_16_n_0;
  wire hdmi_hs_de_i_17_n_0;
  wire hdmi_hs_de_i_1_n_0;
  wire hdmi_hs_de_i_22_n_0;
  wire hdmi_hs_de_i_23_n_0;
  wire hdmi_hs_de_i_24_n_0;
  wire hdmi_hs_de_i_25_n_0;
  wire hdmi_hs_de_i_30_n_0;
  wire hdmi_hs_de_i_31_n_0;
  wire hdmi_hs_de_i_32_n_0;
  wire hdmi_hs_de_i_33_n_0;
  wire hdmi_hs_de_i_5_n_0;
  wire hdmi_hs_de_i_6_n_0;
  wire hdmi_hs_de_i_7_n_0;
  wire hdmi_hs_de_i_8_n_0;
  wire hdmi_hs_de_reg_i_13_n_0;
  wire hdmi_hs_de_reg_i_13_n_1;
  wire hdmi_hs_de_reg_i_13_n_2;
  wire hdmi_hs_de_reg_i_13_n_3;
  wire hdmi_hs_de_reg_i_2_n_1;
  wire hdmi_hs_de_reg_i_2_n_2;
  wire hdmi_hs_de_reg_i_2_n_3;
  wire hdmi_hs_de_reg_i_3_n_1;
  wire hdmi_hs_de_reg_i_3_n_2;
  wire hdmi_hs_de_reg_i_3_n_3;
  wire hdmi_hs_de_reg_i_4_n_0;
  wire hdmi_hs_de_reg_i_4_n_1;
  wire hdmi_hs_de_reg_i_4_n_2;
  wire hdmi_hs_de_reg_i_4_n_3;
  wire hdmi_hs_i_11_n_0;
  wire hdmi_hs_i_12_n_0;
  wire hdmi_hs_i_13_n_0;
  wire hdmi_hs_i_14_n_0;
  wire hdmi_hs_i_3_n_0;
  wire hdmi_hs_i_4_n_0;
  wire hdmi_hs_i_5_n_0;
  wire hdmi_hs_i_6_n_0;
  wire hdmi_hs_reg_i_1_n_1;
  wire hdmi_hs_reg_i_1_n_2;
  wire hdmi_hs_reg_i_1_n_3;
  wire hdmi_hs_reg_i_2_n_0;
  wire hdmi_hs_reg_i_2_n_1;
  wire hdmi_hs_reg_i_2_n_2;
  wire hdmi_hs_reg_i_2_n_3;
  wire hdmi_hsync;
  wire hdmi_hsync_data_e;
  wire \hdmi_raddr[0]_i_1_n_0 ;
  wire \hdmi_raddr[1]_i_1_n_0 ;
  wire \hdmi_raddr[2]_i_1_n_0 ;
  wire \hdmi_raddr[3]_i_1_n_0 ;
  wire \hdmi_raddr[4]_i_1_n_0 ;
  wire \hdmi_raddr[5]_i_1_n_0 ;
  wire \hdmi_raddr[6]_i_1_n_0 ;
  wire \hdmi_raddr[6]_i_2_n_0 ;
  wire \hdmi_raddr[7]_i_1_n_0 ;
  wire \hdmi_raddr[8]_i_1_n_0 ;
  wire \hdmi_raddr[9]_i_1_n_0 ;
  wire \hdmi_raddr[9]_i_2_n_0 ;
  wire \hdmi_raddr[9]_i_3_n_0 ;
  wire \hdmi_raddr_reg_n_0_[0] ;
  wire \hdmi_raddr_reg_n_0_[1] ;
  wire \hdmi_raddr_reg_n_0_[9] ;
  wire hdmi_rst;
  wire hdmi_status_s;
  wire \hdmi_tpm_data[0]_i_1_n_0 ;
  wire \hdmi_tpm_data[0]_i_3_n_0 ;
  wire \hdmi_tpm_data[0]_i_4_n_0 ;
  wire \hdmi_tpm_data[0]_i_5_n_0 ;
  wire \hdmi_tpm_data[0]_i_6_n_0 ;
  wire \hdmi_tpm_data[12]_i_2_n_0 ;
  wire \hdmi_tpm_data[12]_i_3_n_0 ;
  wire \hdmi_tpm_data[12]_i_4_n_0 ;
  wire \hdmi_tpm_data[12]_i_5_n_0 ;
  wire \hdmi_tpm_data[16]_i_2_n_0 ;
  wire \hdmi_tpm_data[16]_i_3_n_0 ;
  wire \hdmi_tpm_data[16]_i_4_n_0 ;
  wire \hdmi_tpm_data[16]_i_5_n_0 ;
  wire \hdmi_tpm_data[20]_i_2_n_0 ;
  wire \hdmi_tpm_data[20]_i_3_n_0 ;
  wire \hdmi_tpm_data[20]_i_4_n_0 ;
  wire \hdmi_tpm_data[20]_i_5_n_0 ;
  wire \hdmi_tpm_data[4]_i_2_n_0 ;
  wire \hdmi_tpm_data[4]_i_3_n_0 ;
  wire \hdmi_tpm_data[4]_i_4_n_0 ;
  wire \hdmi_tpm_data[4]_i_5_n_0 ;
  wire \hdmi_tpm_data[8]_i_2_n_0 ;
  wire \hdmi_tpm_data[8]_i_3_n_0 ;
  wire \hdmi_tpm_data[8]_i_4_n_0 ;
  wire \hdmi_tpm_data[8]_i_5_n_0 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_0 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_1 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_2 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_3 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_4 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_5 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_6 ;
  wire \hdmi_tpm_data_reg[0]_i_2_n_7 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_0 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_1 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_2 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_3 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_4 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_5 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_6 ;
  wire \hdmi_tpm_data_reg[12]_i_1_n_7 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_0 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_1 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_2 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_3 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_4 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_5 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_6 ;
  wire \hdmi_tpm_data_reg[16]_i_1_n_7 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_1 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_2 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_3 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_4 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_5 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_6 ;
  wire \hdmi_tpm_data_reg[20]_i_1_n_7 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_0 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_1 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_2 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_3 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_4 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_5 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_6 ;
  wire \hdmi_tpm_data_reg[4]_i_1_n_7 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_0 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_1 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_2 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_3 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_4 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_5 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_6 ;
  wire \hdmi_tpm_data_reg[8]_i_1_n_7 ;
  wire hdmi_tpm_oos_s;
  wire [14:0]hdmi_vf_width_s;
  wire hdmi_vs;
  wire hdmi_vs_2d_reg_srl2_n_0;
  wire \hdmi_vs_count[0]_i_10_n_0 ;
  wire \hdmi_vs_count[0]_i_11_n_0 ;
  wire \hdmi_vs_count[0]_i_12_n_0 ;
  wire \hdmi_vs_count[0]_i_13_n_0 ;
  wire \hdmi_vs_count[0]_i_14_n_0 ;
  wire \hdmi_vs_count[0]_i_15_n_0 ;
  wire \hdmi_vs_count[0]_i_16_n_0 ;
  wire \hdmi_vs_count[0]_i_17_n_0 ;
  wire \hdmi_vs_count[0]_i_18_n_0 ;
  wire \hdmi_vs_count[0]_i_19_n_0 ;
  wire \hdmi_vs_count[0]_i_1_n_0 ;
  wire \hdmi_vs_count[0]_i_20_n_0 ;
  wire \hdmi_vs_count[0]_i_21_n_0 ;
  wire \hdmi_vs_count[0]_i_22_n_0 ;
  wire \hdmi_vs_count[0]_i_23_n_0 ;
  wire \hdmi_vs_count[0]_i_24_n_0 ;
  wire \hdmi_vs_count[0]_i_4_n_0 ;
  wire \hdmi_vs_count[0]_i_5_n_0 ;
  wire \hdmi_vs_count[0]_i_6_n_0 ;
  wire \hdmi_vs_count[0]_i_7_n_0 ;
  wire \hdmi_vs_count[0]_i_9_n_0 ;
  wire \hdmi_vs_count[12]_i_2_n_0 ;
  wire \hdmi_vs_count[12]_i_3_n_0 ;
  wire \hdmi_vs_count[12]_i_4_n_0 ;
  wire \hdmi_vs_count[12]_i_5_n_0 ;
  wire \hdmi_vs_count[4]_i_2_n_0 ;
  wire \hdmi_vs_count[4]_i_3_n_0 ;
  wire \hdmi_vs_count[4]_i_4_n_0 ;
  wire \hdmi_vs_count[4]_i_5_n_0 ;
  wire \hdmi_vs_count[8]_i_2_n_0 ;
  wire \hdmi_vs_count[8]_i_3_n_0 ;
  wire \hdmi_vs_count[8]_i_4_n_0 ;
  wire \hdmi_vs_count[8]_i_5_n_0 ;
  wire [15:0]\hdmi_vs_count_reg[0]_0 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_1 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_3 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_4 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_5 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_6 ;
  wire \hdmi_vs_count_reg[0]_i_2_n_7 ;
  wire \hdmi_vs_count_reg[0]_i_3_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_3_n_1 ;
  wire \hdmi_vs_count_reg[0]_i_3_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_3_n_3 ;
  wire \hdmi_vs_count_reg[0]_i_8_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_8_n_1 ;
  wire \hdmi_vs_count_reg[0]_i_8_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_8_n_3 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_1 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_2 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_3 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_4 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_5 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_6 ;
  wire \hdmi_vs_count_reg[12]_i_1_n_7 ;
  wire [0:0]\hdmi_vs_count_reg[15]_0 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_0 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_1 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_2 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_3 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_4 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_5 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_6 ;
  wire \hdmi_vs_count_reg[4]_i_1_n_7 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_0 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_1 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_2 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_3 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_4 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_5 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_6 ;
  wire \hdmi_vs_count_reg[8]_i_1_n_7 ;
  wire hdmi_vs_de;
  wire hdmi_vs_de1;
  wire hdmi_vs_de10_in;
  wire hdmi_vs_de_2d_reg_srl2_n_0;
  wire hdmi_vs_de_i_14_n_0;
  wire hdmi_vs_de_i_15_n_0;
  wire hdmi_vs_de_i_16_n_0;
  wire hdmi_vs_de_i_17_n_0;
  wire hdmi_vs_de_i_1_n_0;
  wire hdmi_vs_de_i_22_n_0;
  wire hdmi_vs_de_i_23_n_0;
  wire hdmi_vs_de_i_24_n_0;
  wire hdmi_vs_de_i_25_n_0;
  wire hdmi_vs_de_i_30_n_0;
  wire hdmi_vs_de_i_31_n_0;
  wire hdmi_vs_de_i_32_n_0;
  wire hdmi_vs_de_i_33_n_0;
  wire hdmi_vs_de_i_5_n_0;
  wire hdmi_vs_de_i_6_n_0;
  wire hdmi_vs_de_i_7_n_0;
  wire hdmi_vs_de_i_8_n_0;
  wire hdmi_vs_de_reg_i_13_n_0;
  wire hdmi_vs_de_reg_i_13_n_1;
  wire hdmi_vs_de_reg_i_13_n_2;
  wire hdmi_vs_de_reg_i_13_n_3;
  wire hdmi_vs_de_reg_i_2_n_1;
  wire hdmi_vs_de_reg_i_2_n_2;
  wire hdmi_vs_de_reg_i_2_n_3;
  wire hdmi_vs_de_reg_i_3_n_1;
  wire hdmi_vs_de_reg_i_3_n_2;
  wire hdmi_vs_de_reg_i_3_n_3;
  wire hdmi_vs_de_reg_i_4_n_0;
  wire hdmi_vs_de_reg_i_4_n_1;
  wire hdmi_vs_de_reg_i_4_n_2;
  wire hdmi_vs_de_reg_i_4_n_3;
  wire [3:0]hdmi_vs_reg_0;
  wire [3:0]hdmi_vs_reg_1;
  wire hdmi_vsync;
  wire hdmi_vsync_data_e;
  wire i_csc_RGB2CrYCb_n_0;
  wire i_csc_RGB2CrYCb_n_1;
  wire i_csc_RGB2CrYCb_n_10;
  wire i_csc_RGB2CrYCb_n_11;
  wire i_csc_RGB2CrYCb_n_12;
  wire i_csc_RGB2CrYCb_n_13;
  wire i_csc_RGB2CrYCb_n_14;
  wire i_csc_RGB2CrYCb_n_15;
  wire i_csc_RGB2CrYCb_n_16;
  wire i_csc_RGB2CrYCb_n_17;
  wire i_csc_RGB2CrYCb_n_18;
  wire i_csc_RGB2CrYCb_n_19;
  wire i_csc_RGB2CrYCb_n_2;
  wire i_csc_RGB2CrYCb_n_20;
  wire i_csc_RGB2CrYCb_n_3;
  wire i_csc_RGB2CrYCb_n_4;
  wire i_csc_RGB2CrYCb_n_5;
  wire i_csc_RGB2CrYCb_n_6;
  wire i_csc_RGB2CrYCb_n_7;
  wire i_csc_RGB2CrYCb_n_8;
  wire i_csc_RGB2CrYCb_n_9;
  wire i_mem_n_24;
  wire i_ss_444to422_n_0;
  wire i_ss_444to422_n_1;
  wire i_ss_444to422_n_10;
  wire i_ss_444to422_n_11;
  wire i_ss_444to422_n_12;
  wire i_ss_444to422_n_13;
  wire i_ss_444to422_n_14;
  wire i_ss_444to422_n_15;
  wire i_ss_444to422_n_16;
  wire i_ss_444to422_n_17;
  wire i_ss_444to422_n_18;
  wire i_ss_444to422_n_19;
  wire i_ss_444to422_n_2;
  wire i_ss_444to422_n_20;
  wire i_ss_444to422_n_21;
  wire i_ss_444to422_n_22;
  wire i_ss_444to422_n_23;
  wire i_ss_444to422_n_24;
  wire i_ss_444to422_n_28;
  wire i_ss_444to422_n_29;
  wire i_ss_444to422_n_3;
  wire i_ss_444to422_n_30;
  wire i_ss_444to422_n_31;
  wire i_ss_444to422_n_32;
  wire i_ss_444to422_n_33;
  wire i_ss_444to422_n_34;
  wire i_ss_444to422_n_35;
  wire i_ss_444to422_n_36;
  wire i_ss_444to422_n_37;
  wire i_ss_444to422_n_4;
  wire i_ss_444to422_n_5;
  wire i_ss_444to422_n_6;
  wire i_ss_444to422_n_7;
  wire i_ss_444to422_n_8;
  wire i_ss_444to422_n_9;
  wire m_axis_mm2s_clk;
  wire [15:0]out;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire [7:2]p_5_out;
  wire p_6_in;
  wire p_7_in;
  wire vdma_fs_ret_toggle;
  wire [8:0]\vdma_fs_waddr_reg[8] ;
  wire [8:0]\vdma_raddr_g_m1_reg[8] ;
  wire [8:0]vdma_waddr;
  wire vdma_wr;
  wire [3:0]\NLW_hdmi_hs_count_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_hdmi_hs_count_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_hdmi_hs_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_hdmi_hs_de_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_hs_de_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_hs_de_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_hs_de_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_hs_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_hs_reg_i_2_O_UNCONNECTED;
  wire [3:3]\NLW_hdmi_tpm_data_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_hdmi_vs_count_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_hdmi_vs_count_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_hdmi_vs_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_hdmi_vs_de_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_vs_de_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_vs_de_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_vs_de_reg_i_4_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    hdmi_16_data_e_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_4),
        .Q(hdmi_16_data_e),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_20),
        .Q(hdmi_16_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_10),
        .Q(hdmi_16_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_9),
        .Q(hdmi_16_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_8),
        .Q(hdmi_16_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_7),
        .Q(hdmi_16_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_6),
        .Q(hdmi_16_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_5),
        .Q(hdmi_16_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_19),
        .Q(hdmi_16_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_18),
        .Q(hdmi_16_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_17),
        .Q(hdmi_16_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_16),
        .Q(hdmi_16_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_15),
        .Q(hdmi_16_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_14),
        .Q(hdmi_16_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_13),
        .Q(hdmi_16_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_12),
        .Q(hdmi_16_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_16_data_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_11),
        .Q(hdmi_16_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_16_hsync_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_0),
        .Q(hdmi_16_hsync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_16_vsync_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_1),
        .Q(hdmi_16_vsync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[0]_i_1 
       (.I0(hdmi_data[0]),
        .I1(i_csc_RGB2CrYCb_n_12),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[10]_i_1 
       (.I0(hdmi_data[10]),
        .I1(i_csc_RGB2CrYCb_n_18),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[11]_i_1 
       (.I0(hdmi_data[11]),
        .I1(i_csc_RGB2CrYCb_n_17),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[12]_i_1 
       (.I0(hdmi_data[12]),
        .I1(i_csc_RGB2CrYCb_n_16),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[13]_i_1 
       (.I0(hdmi_data[13]),
        .I1(i_csc_RGB2CrYCb_n_15),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[14]_i_1 
       (.I0(hdmi_data[14]),
        .I1(i_csc_RGB2CrYCb_n_14),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[15]_i_1 
       (.I0(hdmi_data[15]),
        .I1(i_csc_RGB2CrYCb_n_13),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[16]_i_1 
       (.I0(hdmi_data[16]),
        .I1(data_p[0]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[17]_i_1 
       (.I0(hdmi_data[17]),
        .I1(data_p[1]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[18]_i_1 
       (.I0(hdmi_data[18]),
        .I1(data_p[2]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[19]_i_1 
       (.I0(hdmi_data[19]),
        .I1(data_p[3]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[1]_i_1 
       (.I0(hdmi_data[1]),
        .I1(i_csc_RGB2CrYCb_n_11),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[20]_i_1 
       (.I0(hdmi_data[20]),
        .I1(data_p[4]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[21]_i_1 
       (.I0(hdmi_data[21]),
        .I1(data_p[5]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[22]_i_1 
       (.I0(hdmi_data[22]),
        .I1(data_p[6]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[23]_i_1 
       (.I0(hdmi_data[23]),
        .I1(data_p[7]),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[2]_i_1 
       (.I0(hdmi_data[2]),
        .I1(i_csc_RGB2CrYCb_n_10),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[3]_i_1 
       (.I0(hdmi_data[3]),
        .I1(i_csc_RGB2CrYCb_n_9),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[4]_i_1 
       (.I0(hdmi_data[4]),
        .I1(i_csc_RGB2CrYCb_n_8),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[5]_i_1 
       (.I0(hdmi_data[5]),
        .I1(i_csc_RGB2CrYCb_n_7),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[6]_i_1 
       (.I0(hdmi_data[6]),
        .I1(i_csc_RGB2CrYCb_n_6),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[7]_i_1 
       (.I0(hdmi_data[7]),
        .I1(i_csc_RGB2CrYCb_n_5),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[8]_i_1 
       (.I0(hdmi_data[8]),
        .I1(i_csc_RGB2CrYCb_n_20),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hdmi_24_data[9]_i_1 
       (.I0(hdmi_data[9]),
        .I1(i_csc_RGB2CrYCb_n_19),
        .I2(\d_data_cntrl_reg[187] [98]),
        .O(\hdmi_24_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_24_data_e_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_csc_RGB2CrYCb_n_2),
        .Q(E),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[0]_i_1_n_0 ),
        .Q(hdmi_36_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[10]_i_1_n_0 ),
        .Q(hdmi_36_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[11]_i_1_n_0 ),
        .Q(hdmi_36_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[12]_i_1_n_0 ),
        .Q(hdmi_36_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[13]_i_1_n_0 ),
        .Q(hdmi_36_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[14]_i_1_n_0 ),
        .Q(hdmi_36_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[15]_i_1_n_0 ),
        .Q(hdmi_36_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[16]_i_1_n_0 ),
        .Q(hdmi_36_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[17]_i_1_n_0 ),
        .Q(hdmi_36_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[18]_i_1_n_0 ),
        .Q(hdmi_36_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[19]_i_1_n_0 ),
        .Q(hdmi_36_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[1]_i_1_n_0 ),
        .Q(hdmi_36_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[20]_i_1_n_0 ),
        .Q(hdmi_36_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[21]_i_1_n_0 ),
        .Q(hdmi_36_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[22]_i_1_n_0 ),
        .Q(hdmi_36_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[23]_i_1_n_0 ),
        .Q(hdmi_36_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[2]_i_1_n_0 ),
        .Q(hdmi_36_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[3]_i_1_n_0 ),
        .Q(hdmi_36_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[4]_i_1_n_0 ),
        .Q(hdmi_36_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[5]_i_1_n_0 ),
        .Q(hdmi_36_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[6]_i_1_n_0 ),
        .Q(hdmi_36_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[7]_i_1_n_0 ),
        .Q(hdmi_36_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[8]_i_1_n_0 ),
        .Q(hdmi_36_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_24_data_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_24_data[9]_i_1_n_0 ),
        .Q(hdmi_36_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_24_hsync_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_csc_RGB2CrYCb_n_0),
        .Q(hdmi_36_hsync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_24_vsync_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_csc_RGB2CrYCb_n_1),
        .Q(hdmi_36_vsync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_data_e_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_de_2d),
        .Q(hdmi_data_e),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(hdmi_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(hdmi_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(hdmi_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(hdmi_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(hdmi_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(hdmi_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(hdmi_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(hdmi_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(hdmi_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(hdmi_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(hdmi_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(hdmi_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(hdmi_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(hdmi_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(hdmi_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(hdmi_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(hdmi_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(hdmi_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(hdmi_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(hdmi_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(hdmi_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(hdmi_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(hdmi_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_data_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(hdmi_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_data_sel_2d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_data_sel_d),
        .Q(hdmi_data_sel_2d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_data_sel_d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_raddr_reg_n_0_[0] ),
        .Q(hdmi_data_sel_d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_de_2d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_de_d),
        .Q(hdmi_de_2d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hdmi_de_d_i_1
       (.I0(hdmi_vs_de),
        .I1(hdmi_hs_de),
        .O(hdmi_de_s));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_de_d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_de_s),
        .Q(hdmi_de_d),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    hdmi_enable_reg_inv
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_enable0),
        .Q(hdmi_enable_reg_inv_n_0),
        .S(hdmi_rst));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[0]),
        .Q(\hdmi_es_data_4d_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[10]),
        .Q(\hdmi_es_data_4d_reg[10]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[11]),
        .Q(\hdmi_es_data_4d_reg[11]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[12]),
        .Q(\hdmi_es_data_4d_reg[12]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[13]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[13]),
        .Q(\hdmi_es_data_4d_reg[13]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(\hdmi_es_data_4d_reg[14]_srl4_i_1_n_0 ),
        .Q(\hdmi_es_data_4d_reg[14]_srl4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAE0A8AAAA)) 
    \hdmi_es_data_4d_reg[14]_srl4_i_1 
       (.I0(\hdmi_es_data_reg_n_0_[14] ),
        .I1(hdmi_es_hs_de_2d),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_3d),
        .I4(hdmi_es_hs_de_4d),
        .I5(hdmi_es_hs_de),
        .O(\hdmi_es_data_4d_reg[14]_srl4_i_1_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[15]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[15]),
        .Q(\hdmi_es_data_4d_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[1]),
        .Q(\hdmi_es_data_4d_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[2]),
        .Q(\hdmi_es_data_4d_reg[2]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[3]),
        .Q(\hdmi_es_data_4d_reg[3]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[4]),
        .Q(\hdmi_es_data_4d_reg[4]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[5]),
        .Q(\hdmi_es_data_4d_reg[5]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(\hdmi_es_data_4d_reg[6]_srl4_i_1_n_0 ),
        .Q(\hdmi_es_data_4d_reg[6]_srl4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAE0A8AAAA)) 
    \hdmi_es_data_4d_reg[6]_srl4_i_1 
       (.I0(\hdmi_es_data_reg_n_0_[6] ),
        .I1(hdmi_es_hs_de_2d),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_3d),
        .I4(hdmi_es_hs_de_4d),
        .I5(hdmi_es_hs_de),
        .O(\hdmi_es_data_4d_reg[6]_srl4_i_1_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[7]),
        .Q(\hdmi_es_data_4d_reg[7]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[8]),
        .Q(\hdmi_es_data_4d_reg[8]_srl3_n_0 ));
  (* srl_bus_name = "\inst/i_tx_core/hdmi_es_data_4d_reg " *) 
  (* srl_name = "\inst/i_tx_core/hdmi_es_data_4d_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi_es_data_4d_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_es_data_d[9]),
        .Q(\hdmi_es_data_4d_reg[9]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[0]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[10]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[11]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[12]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[13]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[14]_srl4_n_0 ),
        .Q(hdmi_es_data_5d[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[15]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[1]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[2]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[3]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[4]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[5]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[6]_srl4_n_0 ),
        .Q(hdmi_es_data_5d[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[7]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[8]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_5d_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_4d_reg[9]_srl3_n_0 ),
        .Q(hdmi_es_data_5d[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[0]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[0]),
        .O(\hdmi_es_data_6d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[10]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[10]),
        .O(\hdmi_es_data_6d[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[11]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[11]),
        .O(\hdmi_es_data_6d[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[12]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[12]),
        .O(\hdmi_es_data_6d[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000440000004)) 
    \hdmi_es_data_6d[13]_i_1 
       (.I0(hdmi_es_hs_de_5d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_4d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(hdmi_es_vs_de),
        .O(\hdmi_es_data_6d[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[13]_i_2 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[13]),
        .O(\hdmi_es_data_6d[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \hdmi_es_data_6d[14]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_5d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .O(\hdmi_es_data_6d[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[14]_i_2 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[14]),
        .O(\hdmi_es_data_6d[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAACAAAAAAA8AAABA)) 
    \hdmi_es_data_6d[15]_i_1 
       (.I0(hdmi_es_data_5d[15]),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_5d),
        .I4(hdmi_es_hs_de_2d),
        .I5(hdmi_es_hs_de_3d),
        .O(\hdmi_es_data_6d[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[1]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[1]),
        .O(\hdmi_es_data_6d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[2]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[2]),
        .O(\hdmi_es_data_6d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[3]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[3]),
        .O(\hdmi_es_data_6d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[4]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[4]),
        .O(\hdmi_es_data_6d[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[5]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[5]),
        .O(\hdmi_es_data_6d[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[6]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[6]),
        .O(\hdmi_es_data_6d[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACAAAAAAA8AAABA)) 
    \hdmi_es_data_6d[7]_i_1 
       (.I0(hdmi_es_data_5d[7]),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_5d),
        .I4(hdmi_es_hs_de_2d),
        .I5(hdmi_es_hs_de_3d),
        .O(\hdmi_es_data_6d[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[8]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[8]),
        .O(\hdmi_es_data_6d[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F7700000000)) 
    \hdmi_es_data_6d[9]_i_1 
       (.I0(hdmi_es_hs_de_2d),
        .I1(hdmi_es_hs_de_d),
        .I2(hdmi_es_hs_de_3d),
        .I3(hdmi_es_hs_de_4d),
        .I4(hdmi_es_hs_de_5d),
        .I5(hdmi_es_data_5d[9]),
        .O(\hdmi_es_data_6d[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[0]_i_1_n_0 ),
        .Q(hdmi_16_es_data[0]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[10]_i_1_n_0 ),
        .Q(hdmi_16_es_data[10]),
        .S(\hdmi_es_data_6d[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[11]_i_1_n_0 ),
        .Q(hdmi_16_es_data[11]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[12]_i_1_n_0 ),
        .Q(hdmi_16_es_data[12]),
        .S(\hdmi_es_data_6d[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[13]_i_2_n_0 ),
        .Q(hdmi_16_es_data[13]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[14]_i_2_n_0 ),
        .Q(hdmi_16_es_data[14]),
        .S(\hdmi_es_data_6d[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[15]_i_1_n_0 ),
        .Q(hdmi_16_es_data[15]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[1]_i_1_n_0 ),
        .Q(hdmi_16_es_data[1]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[2]_i_1_n_0 ),
        .Q(hdmi_16_es_data[2]),
        .S(\hdmi_es_data_6d[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[3]_i_1_n_0 ),
        .Q(hdmi_16_es_data[3]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[4]_i_1_n_0 ),
        .Q(hdmi_16_es_data[4]),
        .S(\hdmi_es_data_6d[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[5]_i_1_n_0 ),
        .Q(hdmi_16_es_data[5]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[6]_i_1_n_0 ),
        .Q(hdmi_16_es_data[6]),
        .S(\hdmi_es_data_6d[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[7]_i_1_n_0 ),
        .Q(hdmi_16_es_data[7]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[8]_i_1_n_0 ),
        .Q(hdmi_16_es_data[8]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_6d_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_6d[9]_i_1_n_0 ),
        .Q(hdmi_16_es_data[9]),
        .S(\hdmi_es_data_6d[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[0]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[0] ),
        .O(\hdmi_es_data_d[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \hdmi_es_data_d[10]_i_1 
       (.I0(hdmi_es_hs_de_3d),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de),
        .I3(hdmi_es_hs_de_d),
        .I4(\hdmi_es_data_reg_n_0_[10] ),
        .O(\hdmi_es_data_d[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0020000)) 
    \hdmi_es_data_d[11]_i_1 
       (.I0(hdmi_es_vs_de),
        .I1(hdmi_es_hs_de_2d),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_3d),
        .I4(hdmi_es_hs_de_4d),
        .I5(hdmi_es_hs_de),
        .O(\hdmi_es_data_d[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[11]_i_2 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[11] ),
        .O(\hdmi_es_data_d[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \hdmi_es_data_d[12]_i_1 
       (.I0(hdmi_es_hs_de_3d),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de),
        .I3(hdmi_es_hs_de_d),
        .I4(\hdmi_es_data_reg_n_0_[12] ),
        .O(\hdmi_es_data_d[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0010000)) 
    \hdmi_es_data_d[13]_i_1 
       (.I0(hdmi_es_vs_de),
        .I1(hdmi_es_hs_de_2d),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_3d),
        .I4(hdmi_es_hs_de_4d),
        .I5(hdmi_es_hs_de),
        .O(\hdmi_es_data_d[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[13]_i_2 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[13] ),
        .O(\hdmi_es_data_d[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20000002)) 
    \hdmi_es_data_d[15]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_3d),
        .I4(hdmi_es_hs_de_2d),
        .O(\hdmi_es_data_d[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \hdmi_es_data_d[15]_i_2 
       (.I0(hdmi_es_hs_de_3d),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de),
        .I3(hdmi_es_hs_de_d),
        .I4(\hdmi_es_data_reg_n_0_[15] ),
        .O(\hdmi_es_data_d[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[1]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[1] ),
        .O(\hdmi_es_data_d[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \hdmi_es_data_d[2]_i_1 
       (.I0(hdmi_es_hs_de_3d),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de),
        .I3(hdmi_es_hs_de_d),
        .I4(\hdmi_es_data_reg_n_0_[2] ),
        .O(\hdmi_es_data_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[3]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[3] ),
        .O(\hdmi_es_data_d[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \hdmi_es_data_d[4]_i_1 
       (.I0(hdmi_es_hs_de_3d),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de),
        .I3(hdmi_es_hs_de_d),
        .I4(\hdmi_es_data_reg_n_0_[4] ),
        .O(\hdmi_es_data_d[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[5]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[5] ),
        .O(\hdmi_es_data_d[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \hdmi_es_data_d[7]_i_1 
       (.I0(hdmi_es_hs_de_3d),
        .I1(hdmi_es_hs_de_4d),
        .I2(hdmi_es_hs_de),
        .I3(hdmi_es_hs_de_d),
        .I4(\hdmi_es_data_reg_n_0_[7] ),
        .O(\hdmi_es_data_d[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[8]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[8] ),
        .O(\hdmi_es_data_d[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFD00000000)) 
    \hdmi_es_data_d[9]_i_1 
       (.I0(hdmi_es_hs_de_4d),
        .I1(hdmi_es_hs_de),
        .I2(hdmi_es_hs_de_d),
        .I3(hdmi_es_hs_de_2d),
        .I4(hdmi_es_hs_de_3d),
        .I5(\hdmi_es_data_reg_n_0_[9] ),
        .O(\hdmi_es_data_d[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[0]_i_1_n_0 ),
        .Q(hdmi_es_data_d[0]),
        .S(\hdmi_es_data_d[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[10]_i_1_n_0 ),
        .Q(hdmi_es_data_d[10]),
        .S(\hdmi_es_data_d[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[11]_i_2_n_0 ),
        .Q(hdmi_es_data_d[11]),
        .S(\hdmi_es_data_d[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[12]_i_1_n_0 ),
        .Q(hdmi_es_data_d[12]),
        .S(\hdmi_es_data_d[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[13]_i_2_n_0 ),
        .Q(hdmi_es_data_d[13]),
        .S(\hdmi_es_data_d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[15]_i_2_n_0 ),
        .Q(hdmi_es_data_d[15]),
        .S(\hdmi_es_data_d[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[1]_i_1_n_0 ),
        .Q(hdmi_es_data_d[1]),
        .S(\hdmi_es_data_d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[2]_i_1_n_0 ),
        .Q(hdmi_es_data_d[2]),
        .S(\hdmi_es_data_d[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[3]_i_1_n_0 ),
        .Q(hdmi_es_data_d[3]),
        .S(\hdmi_es_data_d[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[4]_i_1_n_0 ),
        .Q(hdmi_es_data_d[4]),
        .S(\hdmi_es_data_d[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[5]_i_1_n_0 ),
        .Q(hdmi_es_data_d[5]),
        .S(\hdmi_es_data_d[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[7]_i_1_n_0 ),
        .Q(hdmi_es_data_d[7]),
        .S(\hdmi_es_data_d[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[8]_i_1_n_0 ),
        .Q(hdmi_es_data_d[8]),
        .S(\hdmi_es_data_d[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_es_data_d_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_es_data_d[9]_i_1_n_0 ),
        .Q(hdmi_es_data_d[9]),
        .S(\hdmi_es_data_d[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_23),
        .Q(\hdmi_es_data_reg_n_0_[0] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_33),
        .Q(\hdmi_es_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_34),
        .Q(\hdmi_es_data_reg_n_0_[11] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_35),
        .Q(\hdmi_es_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_29),
        .Q(\hdmi_es_data_reg_n_0_[13] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_30),
        .Q(\hdmi_es_data_reg_n_0_[14] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_36),
        .Q(\hdmi_es_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_24),
        .Q(\hdmi_es_data_reg_n_0_[1] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_5_out[2]),
        .Q(\hdmi_es_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_28),
        .Q(\hdmi_es_data_reg_n_0_[3] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_5_out[4]),
        .Q(\hdmi_es_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_21),
        .Q(\hdmi_es_data_reg_n_0_[5] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_22),
        .Q(\hdmi_es_data_reg_n_0_[6] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_5_out[7]),
        .Q(\hdmi_es_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_31),
        .Q(\hdmi_es_data_reg_n_0_[8] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_es_data_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_32),
        .Q(\hdmi_es_data_reg_n_0_[9] ),
        .R(i_ss_444to422_n_37));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_hs_de_2d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_es_hs_de_d),
        .Q(hdmi_es_hs_de_2d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_hs_de_3d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_es_hs_de_2d),
        .Q(hdmi_es_hs_de_3d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_hs_de_4d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_es_hs_de_3d),
        .Q(hdmi_es_hs_de_4d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_hs_de_5d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_es_hs_de_4d),
        .Q(hdmi_es_hs_de_5d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_hs_de_d_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_es_hs_de),
        .Q(hdmi_es_hs_de_d),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_hs_de_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_3),
        .Q(hdmi_es_hs_de),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_es_vs_de_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_ss_444to422_n_2),
        .Q(hdmi_es_vs_de),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    hdmi_fs_i_1
       (.I0(\hdmi_vs_count_reg[15]_0 ),
        .I1(hdmi_fs_i_3_n_0),
        .I2(hdmi_fs_i_4_n_0),
        .I3(hdmi_fs_i_5_n_0),
        .O(hdmi_fs_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    hdmi_fs_i_3
       (.I0(\hdmi_vs_count_reg[0]_0 [13]),
        .I1(\hdmi_vs_count_reg[0]_0 [12]),
        .I2(\hdmi_vs_count_reg[0]_0 [0]),
        .I3(\hdmi_vs_count_reg[0]_0 [1]),
        .I4(\hdmi_vs_count_reg[0]_0 [14]),
        .I5(\hdmi_vs_count_reg[0]_0 [15]),
        .O(hdmi_fs_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    hdmi_fs_i_4
       (.I0(\hdmi_vs_count_reg[0]_0 [3]),
        .I1(\hdmi_vs_count_reg[0]_0 [2]),
        .I2(\hdmi_vs_count_reg[0]_0 [6]),
        .I3(\hdmi_vs_count_reg[0]_0 [7]),
        .I4(\hdmi_vs_count_reg[0]_0 [4]),
        .I5(\hdmi_vs_count_reg[0]_0 [5]),
        .O(hdmi_fs_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    hdmi_fs_i_5
       (.I0(\hdmi_vs_count_reg[0]_0 [9]),
        .I1(\hdmi_vs_count_reg[0]_0 [8]),
        .I2(\hdmi_vs_count_reg[0]_0 [11]),
        .I3(\hdmi_vs_count_reg[0]_0 [10]),
        .O(hdmi_fs_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hdmi_fs_i_7
       (.I0(out[15]),
        .I1(\d_data_cntrl_reg[187] [47]),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_fs_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_fs_i_1_n_0),
        .Q(hdmi_fs),
        .R(hdmi_enable_reg_inv_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hdmi_fs_ret_i_1
       (.I0(hdmi_fs_ret_toggle_m2),
        .I1(hdmi_fs_ret_toggle_m3),
        .O(hdmi_fs_ret_s));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_fs_ret_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_fs_ret_s),
        .Q(hdmi_fs_ret),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_fs_ret_toggle_m1_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(vdma_fs_ret_toggle),
        .Q(hdmi_fs_ret_toggle_m1),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_fs_ret_toggle_m2_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_fs_ret_toggle_m1),
        .Q(hdmi_fs_ret_toggle_m2),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_fs_ret_toggle_m3_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_fs_ret_toggle_m2),
        .Q(hdmi_fs_ret_toggle_m3),
        .R(hdmi_rst));
  LUT2 #(
    .INIT(4'h6)) 
    hdmi_fs_toggle_i_1
       (.I0(hdmi_fs),
        .I1(hdmi_fs_toggle),
        .O(hdmi_fs_toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_fs_toggle_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_fs_toggle_i_1_n_0),
        .Q(hdmi_fs_toggle),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[0] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [0]),
        .Q(hdmi_fs_waddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[1] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [1]),
        .Q(hdmi_fs_waddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[2] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [2]),
        .Q(hdmi_fs_waddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[3] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [3]),
        .Q(hdmi_fs_waddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[4] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [4]),
        .Q(hdmi_fs_waddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[5] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [5]),
        .Q(hdmi_fs_waddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[6] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [6]),
        .Q(hdmi_fs_waddr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[7] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [7]),
        .Q(hdmi_fs_waddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_fs_waddr_reg[8] 
       (.C(hdmi_clk),
        .CE(hdmi_fs_ret_s),
        .D(\vdma_fs_waddr_reg[8] [8]),
        .Q(hdmi_fs_waddr[8]),
        .R(1'b0));
  (* srl_name = "\inst/i_tx_core/hdmi_hs_2d_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    hdmi_hs_2d_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_hs),
        .Q(hdmi_hs_2d_reg_srl2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_10 
       (.I0(hdmi_hl_width_s[10]),
        .I1(\hdmi_vs_count_reg[0]_0 [11]),
        .I2(hdmi_hl_width_s[9]),
        .I3(\hdmi_vs_count_reg[0]_0 [10]),
        .O(\hdmi_hs_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_11 
       (.I0(hdmi_hl_width_s[8]),
        .I1(\hdmi_vs_count_reg[0]_0 [9]),
        .I2(hdmi_hl_width_s[7]),
        .I3(\hdmi_vs_count_reg[0]_0 [8]),
        .O(\hdmi_hs_count[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[0]_i_12 
       (.I0(\hdmi_vs_count_reg[0]_0 [3]),
        .O(\hdmi_hs_count[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[0]_i_13 
       (.I0(\hdmi_vs_count_reg[0]_0 [2]),
        .O(\hdmi_hs_count[0]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[0]_i_14 
       (.I0(\hdmi_vs_count_reg[0]_0 [1]),
        .O(\hdmi_hs_count[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_15 
       (.I0(\hdmi_vs_count_reg[0]_0 [0]),
        .O(\hdmi_hs_count[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_16 
       (.I0(\hdmi_vs_count_reg[0]_0 [7]),
        .I1(hdmi_hl_width_s[6]),
        .I2(\hdmi_vs_count_reg[0]_0 [6]),
        .I3(hdmi_hl_width_s[5]),
        .O(\hdmi_hs_count[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_17 
       (.I0(\hdmi_vs_count_reg[0]_0 [5]),
        .I1(hdmi_hl_width_s[4]),
        .I2(\hdmi_vs_count_reg[0]_0 [4]),
        .I3(hdmi_hl_width_s[3]),
        .O(\hdmi_hs_count[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_18 
       (.I0(\hdmi_vs_count_reg[0]_0 [3]),
        .I1(hdmi_hl_width_s[2]),
        .I2(\hdmi_vs_count_reg[0]_0 [2]),
        .I3(hdmi_hl_width_s[1]),
        .O(\hdmi_hs_count[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h80EA)) 
    \hdmi_hs_count[0]_i_19 
       (.I0(\hdmi_vs_count_reg[0]_0 [1]),
        .I1(\d_data_cntrl_reg[187] [97]),
        .I2(\hdmi_vs_count_reg[0]_0 [0]),
        .I3(hdmi_hl_width_s[0]),
        .O(\hdmi_hs_count[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_20 
       (.I0(hdmi_hl_width_s[6]),
        .I1(\hdmi_vs_count_reg[0]_0 [7]),
        .I2(hdmi_hl_width_s[5]),
        .I3(\hdmi_vs_count_reg[0]_0 [6]),
        .O(\hdmi_hs_count[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_21 
       (.I0(hdmi_hl_width_s[4]),
        .I1(\hdmi_vs_count_reg[0]_0 [5]),
        .I2(hdmi_hl_width_s[3]),
        .I3(\hdmi_vs_count_reg[0]_0 [4]),
        .O(\hdmi_hs_count[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_22 
       (.I0(hdmi_hl_width_s[2]),
        .I1(\hdmi_vs_count_reg[0]_0 [3]),
        .I2(hdmi_hl_width_s[1]),
        .I3(\hdmi_vs_count_reg[0]_0 [2]),
        .O(\hdmi_hs_count[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \hdmi_hs_count[0]_i_23 
       (.I0(\hdmi_vs_count_reg[0]_0 [0]),
        .I1(\d_data_cntrl_reg[187] [97]),
        .I2(hdmi_hl_width_s[0]),
        .I3(\hdmi_vs_count_reg[0]_0 [1]),
        .O(\hdmi_hs_count[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_4 
       (.I0(\hdmi_vs_count_reg[0]_0 [15]),
        .I1(hdmi_hl_width_s[14]),
        .I2(\hdmi_vs_count_reg[0]_0 [14]),
        .I3(hdmi_hl_width_s[13]),
        .O(\hdmi_hs_count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_5 
       (.I0(\hdmi_vs_count_reg[0]_0 [13]),
        .I1(hdmi_hl_width_s[12]),
        .I2(\hdmi_vs_count_reg[0]_0 [12]),
        .I3(hdmi_hl_width_s[11]),
        .O(\hdmi_hs_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_6 
       (.I0(\hdmi_vs_count_reg[0]_0 [11]),
        .I1(hdmi_hl_width_s[10]),
        .I2(\hdmi_vs_count_reg[0]_0 [10]),
        .I3(hdmi_hl_width_s[9]),
        .O(\hdmi_hs_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_hs_count[0]_i_7 
       (.I0(\hdmi_vs_count_reg[0]_0 [9]),
        .I1(hdmi_hl_width_s[8]),
        .I2(\hdmi_vs_count_reg[0]_0 [8]),
        .I3(hdmi_hl_width_s[7]),
        .O(\hdmi_hs_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_8 
       (.I0(hdmi_hl_width_s[14]),
        .I1(\hdmi_vs_count_reg[0]_0 [15]),
        .I2(hdmi_hl_width_s[13]),
        .I3(\hdmi_vs_count_reg[0]_0 [14]),
        .O(\hdmi_hs_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_hs_count[0]_i_9 
       (.I0(hdmi_hl_width_s[12]),
        .I1(\hdmi_vs_count_reg[0]_0 [13]),
        .I2(hdmi_hl_width_s[11]),
        .I3(\hdmi_vs_count_reg[0]_0 [12]),
        .O(\hdmi_hs_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[12]_i_2 
       (.I0(\hdmi_vs_count_reg[0]_0 [15]),
        .O(\hdmi_hs_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[12]_i_3 
       (.I0(\hdmi_vs_count_reg[0]_0 [14]),
        .O(\hdmi_hs_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[12]_i_4 
       (.I0(\hdmi_vs_count_reg[0]_0 [13]),
        .O(\hdmi_hs_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[12]_i_5 
       (.I0(\hdmi_vs_count_reg[0]_0 [12]),
        .O(\hdmi_hs_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[4]_i_2 
       (.I0(\hdmi_vs_count_reg[0]_0 [7]),
        .O(\hdmi_hs_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[4]_i_3 
       (.I0(\hdmi_vs_count_reg[0]_0 [6]),
        .O(\hdmi_hs_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[4]_i_4 
       (.I0(\hdmi_vs_count_reg[0]_0 [5]),
        .O(\hdmi_hs_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[4]_i_5 
       (.I0(\hdmi_vs_count_reg[0]_0 [4]),
        .O(\hdmi_hs_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[8]_i_2 
       (.I0(\hdmi_vs_count_reg[0]_0 [11]),
        .O(\hdmi_hs_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[8]_i_3 
       (.I0(\hdmi_vs_count_reg[0]_0 [10]),
        .O(\hdmi_hs_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[8]_i_4 
       (.I0(\hdmi_vs_count_reg[0]_0 [9]),
        .O(\hdmi_hs_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_hs_count[8]_i_5 
       (.I0(\hdmi_vs_count_reg[0]_0 [8]),
        .O(\hdmi_hs_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[0]_i_2_n_7 ),
        .Q(\hdmi_vs_count_reg[0]_0 [0]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  CARRY4 \hdmi_hs_count_reg[0]_i_1 
       (.CI(\hdmi_hs_count_reg[0]_i_3_n_0 ),
        .CO({\hdmi_hs_count_reg[0]_i_1_n_0 ,\hdmi_hs_count_reg[0]_i_1_n_1 ,\hdmi_hs_count_reg[0]_i_1_n_2 ,\hdmi_hs_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hdmi_hs_count[0]_i_4_n_0 ,\hdmi_hs_count[0]_i_5_n_0 ,\hdmi_hs_count[0]_i_6_n_0 ,\hdmi_hs_count[0]_i_7_n_0 }),
        .O(\NLW_hdmi_hs_count_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({\hdmi_hs_count[0]_i_8_n_0 ,\hdmi_hs_count[0]_i_9_n_0 ,\hdmi_hs_count[0]_i_10_n_0 ,\hdmi_hs_count[0]_i_11_n_0 }));
  CARRY4 \hdmi_hs_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\hdmi_hs_count_reg[0]_i_2_n_0 ,\hdmi_hs_count_reg[0]_i_2_n_1 ,\hdmi_hs_count_reg[0]_i_2_n_2 ,\hdmi_hs_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hdmi_hs_count_reg[0]_i_2_n_4 ,\hdmi_hs_count_reg[0]_i_2_n_5 ,\hdmi_hs_count_reg[0]_i_2_n_6 ,\hdmi_hs_count_reg[0]_i_2_n_7 }),
        .S({\hdmi_hs_count[0]_i_12_n_0 ,\hdmi_hs_count[0]_i_13_n_0 ,\hdmi_hs_count[0]_i_14_n_0 ,\hdmi_hs_count[0]_i_15_n_0 }));
  CARRY4 \hdmi_hs_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\hdmi_hs_count_reg[0]_i_3_n_0 ,\hdmi_hs_count_reg[0]_i_3_n_1 ,\hdmi_hs_count_reg[0]_i_3_n_2 ,\hdmi_hs_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({\hdmi_hs_count[0]_i_16_n_0 ,\hdmi_hs_count[0]_i_17_n_0 ,\hdmi_hs_count[0]_i_18_n_0 ,\hdmi_hs_count[0]_i_19_n_0 }),
        .O(\NLW_hdmi_hs_count_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\hdmi_hs_count[0]_i_20_n_0 ,\hdmi_hs_count[0]_i_21_n_0 ,\hdmi_hs_count[0]_i_22_n_0 ,\hdmi_hs_count[0]_i_23_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[8]_i_1_n_5 ),
        .Q(\hdmi_vs_count_reg[0]_0 [10]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[8]_i_1_n_4 ),
        .Q(\hdmi_vs_count_reg[0]_0 [11]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[12]_i_1_n_7 ),
        .Q(\hdmi_vs_count_reg[0]_0 [12]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  CARRY4 \hdmi_hs_count_reg[12]_i_1 
       (.CI(\hdmi_hs_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_hdmi_hs_count_reg[12]_i_1_CO_UNCONNECTED [3],\hdmi_hs_count_reg[12]_i_1_n_1 ,\hdmi_hs_count_reg[12]_i_1_n_2 ,\hdmi_hs_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_hs_count_reg[12]_i_1_n_4 ,\hdmi_hs_count_reg[12]_i_1_n_5 ,\hdmi_hs_count_reg[12]_i_1_n_6 ,\hdmi_hs_count_reg[12]_i_1_n_7 }),
        .S({\hdmi_hs_count[12]_i_2_n_0 ,\hdmi_hs_count[12]_i_3_n_0 ,\hdmi_hs_count[12]_i_4_n_0 ,\hdmi_hs_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[12]_i_1_n_6 ),
        .Q(\hdmi_vs_count_reg[0]_0 [13]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[12]_i_1_n_5 ),
        .Q(\hdmi_vs_count_reg[0]_0 [14]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[12]_i_1_n_4 ),
        .Q(\hdmi_vs_count_reg[0]_0 [15]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[0]_i_2_n_6 ),
        .Q(\hdmi_vs_count_reg[0]_0 [1]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[0]_i_2_n_5 ),
        .Q(\hdmi_vs_count_reg[0]_0 [2]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[0]_i_2_n_4 ),
        .Q(\hdmi_vs_count_reg[0]_0 [3]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[4]_i_1_n_7 ),
        .Q(\hdmi_vs_count_reg[0]_0 [4]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  CARRY4 \hdmi_hs_count_reg[4]_i_1 
       (.CI(\hdmi_hs_count_reg[0]_i_2_n_0 ),
        .CO({\hdmi_hs_count_reg[4]_i_1_n_0 ,\hdmi_hs_count_reg[4]_i_1_n_1 ,\hdmi_hs_count_reg[4]_i_1_n_2 ,\hdmi_hs_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_hs_count_reg[4]_i_1_n_4 ,\hdmi_hs_count_reg[4]_i_1_n_5 ,\hdmi_hs_count_reg[4]_i_1_n_6 ,\hdmi_hs_count_reg[4]_i_1_n_7 }),
        .S({\hdmi_hs_count[4]_i_2_n_0 ,\hdmi_hs_count[4]_i_3_n_0 ,\hdmi_hs_count[4]_i_4_n_0 ,\hdmi_hs_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[4]_i_1_n_6 ),
        .Q(\hdmi_vs_count_reg[0]_0 [5]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[4]_i_1_n_5 ),
        .Q(\hdmi_vs_count_reg[0]_0 [6]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[4]_i_1_n_4 ),
        .Q(\hdmi_vs_count_reg[0]_0 [7]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[8]_i_1_n_7 ),
        .Q(\hdmi_vs_count_reg[0]_0 [8]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  CARRY4 \hdmi_hs_count_reg[8]_i_1 
       (.CI(\hdmi_hs_count_reg[4]_i_1_n_0 ),
        .CO({\hdmi_hs_count_reg[8]_i_1_n_0 ,\hdmi_hs_count_reg[8]_i_1_n_1 ,\hdmi_hs_count_reg[8]_i_1_n_2 ,\hdmi_hs_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_hs_count_reg[8]_i_1_n_4 ,\hdmi_hs_count_reg[8]_i_1_n_5 ,\hdmi_hs_count_reg[8]_i_1_n_6 ,\hdmi_hs_count_reg[8]_i_1_n_7 }),
        .S({\hdmi_hs_count[8]_i_2_n_0 ,\hdmi_hs_count[8]_i_3_n_0 ,\hdmi_hs_count[8]_i_4_n_0 ,\hdmi_hs_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_hs_count_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_hs_count_reg[8]_i_1_n_6 ),
        .Q(\hdmi_vs_count_reg[0]_0 [9]),
        .R(\hdmi_hs_count_reg[0]_i_1_n_0 ));
  (* srl_name = "\inst/i_tx_core/hdmi_hs_de_2d_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    hdmi_hs_de_2d_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_hs_de),
        .Q(hdmi_hs_de_2d_reg_srl2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hdmi_hs_de_i_1
       (.I0(hdmi_hs_de1),
        .I1(hdmi_hs_de11_in),
        .O(hdmi_hs_de_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_14
       (.I0(\hdmi_vs_count_reg[0]_0 [15]),
        .I1(\d_data_cntrl_reg[187] [64]),
        .I2(\d_data_cntrl_reg[187] [63]),
        .I3(\hdmi_vs_count_reg[0]_0 [14]),
        .O(hdmi_hs_de_i_14_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_15
       (.I0(\hdmi_vs_count_reg[0]_0 [13]),
        .I1(\d_data_cntrl_reg[187] [62]),
        .I2(\d_data_cntrl_reg[187] [61]),
        .I3(\hdmi_vs_count_reg[0]_0 [12]),
        .O(hdmi_hs_de_i_15_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_16
       (.I0(\hdmi_vs_count_reg[0]_0 [11]),
        .I1(\d_data_cntrl_reg[187] [60]),
        .I2(\d_data_cntrl_reg[187] [59]),
        .I3(\hdmi_vs_count_reg[0]_0 [10]),
        .O(hdmi_hs_de_i_16_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_17
       (.I0(\hdmi_vs_count_reg[0]_0 [9]),
        .I1(\d_data_cntrl_reg[187] [58]),
        .I2(\d_data_cntrl_reg[187] [57]),
        .I3(\hdmi_vs_count_reg[0]_0 [8]),
        .O(hdmi_hs_de_i_17_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_22
       (.I0(\hdmi_vs_count_reg[0]_0 [7]),
        .I1(\d_data_cntrl_reg[187] [72]),
        .I2(\hdmi_vs_count_reg[0]_0 [6]),
        .I3(\d_data_cntrl_reg[187] [71]),
        .O(hdmi_hs_de_i_22_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_23
       (.I0(\hdmi_vs_count_reg[0]_0 [5]),
        .I1(\d_data_cntrl_reg[187] [70]),
        .I2(\hdmi_vs_count_reg[0]_0 [4]),
        .I3(\d_data_cntrl_reg[187] [69]),
        .O(hdmi_hs_de_i_23_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_24
       (.I0(\hdmi_vs_count_reg[0]_0 [3]),
        .I1(\d_data_cntrl_reg[187] [68]),
        .I2(\hdmi_vs_count_reg[0]_0 [2]),
        .I3(\d_data_cntrl_reg[187] [67]),
        .O(hdmi_hs_de_i_24_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_25
       (.I0(\hdmi_vs_count_reg[0]_0 [1]),
        .I1(\d_data_cntrl_reg[187] [66]),
        .I2(\hdmi_vs_count_reg[0]_0 [0]),
        .I3(\d_data_cntrl_reg[187] [65]),
        .O(hdmi_hs_de_i_25_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_30
       (.I0(\hdmi_vs_count_reg[0]_0 [7]),
        .I1(\d_data_cntrl_reg[187] [56]),
        .I2(\d_data_cntrl_reg[187] [55]),
        .I3(\hdmi_vs_count_reg[0]_0 [6]),
        .O(hdmi_hs_de_i_30_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_31
       (.I0(\hdmi_vs_count_reg[0]_0 [5]),
        .I1(\d_data_cntrl_reg[187] [54]),
        .I2(\d_data_cntrl_reg[187] [53]),
        .I3(\hdmi_vs_count_reg[0]_0 [4]),
        .O(hdmi_hs_de_i_31_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_32
       (.I0(\hdmi_vs_count_reg[0]_0 [3]),
        .I1(\d_data_cntrl_reg[187] [52]),
        .I2(\d_data_cntrl_reg[187] [51]),
        .I3(\hdmi_vs_count_reg[0]_0 [2]),
        .O(hdmi_hs_de_i_32_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_de_i_33
       (.I0(\hdmi_vs_count_reg[0]_0 [1]),
        .I1(\d_data_cntrl_reg[187] [50]),
        .I2(\d_data_cntrl_reg[187] [49]),
        .I3(\hdmi_vs_count_reg[0]_0 [0]),
        .O(hdmi_hs_de_i_33_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_5
       (.I0(\hdmi_vs_count_reg[0]_0 [15]),
        .I1(\d_data_cntrl_reg[187] [80]),
        .I2(\hdmi_vs_count_reg[0]_0 [14]),
        .I3(\d_data_cntrl_reg[187] [79]),
        .O(hdmi_hs_de_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_6
       (.I0(\hdmi_vs_count_reg[0]_0 [13]),
        .I1(\d_data_cntrl_reg[187] [78]),
        .I2(\hdmi_vs_count_reg[0]_0 [12]),
        .I3(\d_data_cntrl_reg[187] [77]),
        .O(hdmi_hs_de_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_7
       (.I0(\hdmi_vs_count_reg[0]_0 [11]),
        .I1(\d_data_cntrl_reg[187] [76]),
        .I2(\hdmi_vs_count_reg[0]_0 [10]),
        .I3(\d_data_cntrl_reg[187] [75]),
        .O(hdmi_hs_de_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_hs_de_i_8
       (.I0(\hdmi_vs_count_reg[0]_0 [9]),
        .I1(\d_data_cntrl_reg[187] [74]),
        .I2(\hdmi_vs_count_reg[0]_0 [8]),
        .I3(\d_data_cntrl_reg[187] [73]),
        .O(hdmi_hs_de_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_hs_de_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_hs_de_i_1_n_0),
        .Q(hdmi_hs_de),
        .R(hdmi_enable_reg_inv_n_0));
  CARRY4 hdmi_hs_de_reg_i_13
       (.CI(1'b0),
        .CO({hdmi_hs_de_reg_i_13_n_0,hdmi_hs_de_reg_i_13_n_1,hdmi_hs_de_reg_i_13_n_2,hdmi_hs_de_reg_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_hs_de_i_30_n_0,hdmi_hs_de_i_31_n_0,hdmi_hs_de_i_32_n_0,hdmi_hs_de_i_33_n_0}),
        .O(NLW_hdmi_hs_de_reg_i_13_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[87] ));
  CARRY4 hdmi_hs_de_reg_i_2
       (.CI(hdmi_hs_de_reg_i_4_n_0),
        .CO({hdmi_hs_de1,hdmi_hs_de_reg_i_2_n_1,hdmi_hs_de_reg_i_2_n_2,hdmi_hs_de_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_hs_de_i_5_n_0,hdmi_hs_de_i_6_n_0,hdmi_hs_de_i_7_n_0,hdmi_hs_de_i_8_n_0}),
        .O(NLW_hdmi_hs_de_reg_i_2_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[111] ));
  CARRY4 hdmi_hs_de_reg_i_3
       (.CI(hdmi_hs_de_reg_i_13_n_0),
        .CO({hdmi_hs_de11_in,hdmi_hs_de_reg_i_3_n_1,hdmi_hs_de_reg_i_3_n_2,hdmi_hs_de_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_hs_de_i_14_n_0,hdmi_hs_de_i_15_n_0,hdmi_hs_de_i_16_n_0,hdmi_hs_de_i_17_n_0}),
        .O(NLW_hdmi_hs_de_reg_i_3_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[95] ));
  CARRY4 hdmi_hs_de_reg_i_4
       (.CI(1'b0),
        .CO({hdmi_hs_de_reg_i_4_n_0,hdmi_hs_de_reg_i_4_n_1,hdmi_hs_de_reg_i_4_n_2,hdmi_hs_de_reg_i_4_n_3}),
        .CYINIT(1'b1),
        .DI({hdmi_hs_de_i_22_n_0,hdmi_hs_de_i_23_n_0,hdmi_hs_de_i_24_n_0,hdmi_hs_de_i_25_n_0}),
        .O(NLW_hdmi_hs_de_reg_i_4_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[103] ));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_11
       (.I0(\hdmi_vs_count_reg[0]_0 [7]),
        .I1(\d_data_cntrl_reg[187] [88]),
        .I2(\d_data_cntrl_reg[187] [87]),
        .I3(\hdmi_vs_count_reg[0]_0 [6]),
        .O(hdmi_hs_i_11_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_12
       (.I0(\hdmi_vs_count_reg[0]_0 [5]),
        .I1(\d_data_cntrl_reg[187] [86]),
        .I2(\d_data_cntrl_reg[187] [85]),
        .I3(\hdmi_vs_count_reg[0]_0 [4]),
        .O(hdmi_hs_i_12_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_13
       (.I0(\hdmi_vs_count_reg[0]_0 [3]),
        .I1(\d_data_cntrl_reg[187] [84]),
        .I2(\d_data_cntrl_reg[187] [83]),
        .I3(\hdmi_vs_count_reg[0]_0 [2]),
        .O(hdmi_hs_i_13_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_14
       (.I0(\hdmi_vs_count_reg[0]_0 [1]),
        .I1(\d_data_cntrl_reg[187] [82]),
        .I2(\d_data_cntrl_reg[187] [81]),
        .I3(\hdmi_vs_count_reg[0]_0 [0]),
        .O(hdmi_hs_i_14_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_3
       (.I0(\hdmi_vs_count_reg[0]_0 [15]),
        .I1(\d_data_cntrl_reg[187] [96]),
        .I2(\d_data_cntrl_reg[187] [95]),
        .I3(\hdmi_vs_count_reg[0]_0 [14]),
        .O(hdmi_hs_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_4
       (.I0(\hdmi_vs_count_reg[0]_0 [13]),
        .I1(\d_data_cntrl_reg[187] [94]),
        .I2(\d_data_cntrl_reg[187] [93]),
        .I3(\hdmi_vs_count_reg[0]_0 [12]),
        .O(hdmi_hs_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_5
       (.I0(\hdmi_vs_count_reg[0]_0 [11]),
        .I1(\d_data_cntrl_reg[187] [92]),
        .I2(\d_data_cntrl_reg[187] [91]),
        .I3(\hdmi_vs_count_reg[0]_0 [10]),
        .O(hdmi_hs_i_5_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_hs_i_6
       (.I0(\hdmi_vs_count_reg[0]_0 [9]),
        .I1(\d_data_cntrl_reg[187] [90]),
        .I2(\d_data_cntrl_reg[187] [89]),
        .I3(\hdmi_vs_count_reg[0]_0 [8]),
        .O(hdmi_hs_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_hs_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_hs1),
        .Q(hdmi_hs),
        .R(hdmi_enable_reg_inv_n_0));
  CARRY4 hdmi_hs_reg_i_1
       (.CI(hdmi_hs_reg_i_2_n_0),
        .CO({hdmi_hs1,hdmi_hs_reg_i_1_n_1,hdmi_hs_reg_i_1_n_2,hdmi_hs_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_hs_i_3_n_0,hdmi_hs_i_4_n_0,hdmi_hs_i_5_n_0,hdmi_hs_i_6_n_0}),
        .O(NLW_hdmi_hs_reg_i_1_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[127] ));
  CARRY4 hdmi_hs_reg_i_2
       (.CI(1'b0),
        .CO({hdmi_hs_reg_i_2_n_0,hdmi_hs_reg_i_2_n_1,hdmi_hs_reg_i_2_n_2,hdmi_hs_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_hs_i_11_n_0,hdmi_hs_i_12_n_0,hdmi_hs_i_13_n_0,hdmi_hs_i_14_n_0}),
        .O(NLW_hdmi_hs_reg_i_2_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[119] ));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_hsync_data_e_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_hs_de_2d_reg_srl2_n_0),
        .Q(hdmi_hsync_data_e),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_hsync_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_hs_2d_reg_srl2_n_0),
        .Q(hdmi_hsync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \hdmi_raddr[0]_i_1 
       (.I0(\hdmi_raddr_reg_n_0_[0] ),
        .I1(hdmi_vs_de),
        .I2(hdmi_hs_de),
        .I3(hdmi_rst),
        .I4(hdmi_fs_ret),
        .O(\hdmi_raddr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \hdmi_raddr[1]_i_1 
       (.I0(hdmi_fs_waddr[0]),
        .I1(hdmi_fs_ret),
        .I2(\hdmi_raddr_reg_n_0_[1] ),
        .I3(\hdmi_raddr_reg_n_0_[0] ),
        .O(\hdmi_raddr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \hdmi_raddr[2]_i_1 
       (.I0(hdmi_fs_waddr[1]),
        .I1(hdmi_fs_ret),
        .I2(p_1_in),
        .I3(\hdmi_raddr_reg_n_0_[0] ),
        .I4(\hdmi_raddr_reg_n_0_[1] ),
        .O(\hdmi_raddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \hdmi_raddr[3]_i_1 
       (.I0(hdmi_fs_waddr[2]),
        .I1(hdmi_fs_ret),
        .I2(p_2_in),
        .I3(\hdmi_raddr_reg_n_0_[1] ),
        .I4(\hdmi_raddr_reg_n_0_[0] ),
        .I5(p_1_in),
        .O(\hdmi_raddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \hdmi_raddr[4]_i_1 
       (.I0(hdmi_fs_waddr[3]),
        .I1(hdmi_fs_ret),
        .I2(p_3_in),
        .I3(\hdmi_raddr[6]_i_2_n_0 ),
        .O(\hdmi_raddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \hdmi_raddr[5]_i_1 
       (.I0(hdmi_fs_waddr[4]),
        .I1(hdmi_fs_ret),
        .I2(p_4_in),
        .I3(\hdmi_raddr[6]_i_2_n_0 ),
        .I4(p_3_in),
        .O(\hdmi_raddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \hdmi_raddr[6]_i_1 
       (.I0(hdmi_fs_waddr[5]),
        .I1(hdmi_fs_ret),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(\hdmi_raddr[6]_i_2_n_0 ),
        .O(\hdmi_raddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \hdmi_raddr[6]_i_2 
       (.I0(\hdmi_raddr_reg_n_0_[0] ),
        .I1(\hdmi_raddr_reg_n_0_[1] ),
        .I2(p_2_in),
        .I3(p_1_in),
        .O(\hdmi_raddr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \hdmi_raddr[7]_i_1 
       (.I0(hdmi_fs_waddr[6]),
        .I1(hdmi_fs_ret),
        .I2(p_6_in),
        .I3(\hdmi_raddr[9]_i_3_n_0 ),
        .O(\hdmi_raddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \hdmi_raddr[8]_i_1 
       (.I0(hdmi_fs_waddr[7]),
        .I1(hdmi_fs_ret),
        .I2(p_7_in),
        .I3(\hdmi_raddr[9]_i_3_n_0 ),
        .I4(p_6_in),
        .O(\hdmi_raddr[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \hdmi_raddr[9]_i_1 
       (.I0(hdmi_fs_ret),
        .I1(hdmi_hs_de),
        .I2(hdmi_vs_de),
        .O(\hdmi_raddr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB8B8B8B8B8B8)) 
    \hdmi_raddr[9]_i_2 
       (.I0(hdmi_fs_waddr[8]),
        .I1(hdmi_fs_ret),
        .I2(\hdmi_raddr_reg_n_0_[9] ),
        .I3(\hdmi_raddr[9]_i_3_n_0 ),
        .I4(p_6_in),
        .I5(p_7_in),
        .O(\hdmi_raddr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hdmi_raddr[9]_i_3 
       (.I0(p_5_in),
        .I1(p_3_in),
        .I2(p_4_in),
        .I3(\hdmi_raddr[6]_i_2_n_0 ),
        .O(\hdmi_raddr[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[0]_i_1 
       (.I0(\hdmi_raddr_reg_n_0_[1] ),
        .I1(p_1_in),
        .O(b2g_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[1]_i_1 
       (.I0(p_1_in),
        .I1(p_2_in),
        .O(b2g_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[2]_i_1 
       (.I0(p_2_in),
        .I1(p_3_in),
        .O(b2g_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[3]_i_1 
       (.I0(p_3_in),
        .I1(p_4_in),
        .O(b2g_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[4]_i_1 
       (.I0(p_4_in),
        .I1(p_5_in),
        .O(b2g_return[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[5]_i_1 
       (.I0(p_5_in),
        .I1(p_6_in),
        .O(b2g_return[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[6]_i_1 
       (.I0(p_6_in),
        .I1(p_7_in),
        .O(b2g_return[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \hdmi_raddr_g[7]_i_1 
       (.I0(p_7_in),
        .I1(\hdmi_raddr_reg_n_0_[9] ),
        .O(b2g_return[7]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[0]),
        .Q(\vdma_raddr_g_m1_reg[8] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[1]),
        .Q(\vdma_raddr_g_m1_reg[8] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[2]),
        .Q(\vdma_raddr_g_m1_reg[8] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[3]),
        .Q(\vdma_raddr_g_m1_reg[8] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[4]),
        .Q(\vdma_raddr_g_m1_reg[8] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[5]),
        .Q(\vdma_raddr_g_m1_reg[8] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[6]),
        .Q(\vdma_raddr_g_m1_reg[8] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(b2g_return[7]),
        .Q(\vdma_raddr_g_m1_reg[8] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_g_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_raddr_reg_n_0_[9] ),
        .Q(\vdma_raddr_g_m1_reg[8] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_raddr[0]_i_1_n_0 ),
        .Q(\hdmi_raddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[1] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[1]_i_1_n_0 ),
        .Q(\hdmi_raddr_reg_n_0_[1] ),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[2] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[2]_i_1_n_0 ),
        .Q(p_1_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[3] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[3]_i_1_n_0 ),
        .Q(p_2_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[4] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[4]_i_1_n_0 ),
        .Q(p_3_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[5] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[5]_i_1_n_0 ),
        .Q(p_4_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[6] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[6]_i_1_n_0 ),
        .Q(p_5_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[7] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[7]_i_1_n_0 ),
        .Q(p_6_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[8] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[8]_i_1_n_0 ),
        .Q(p_7_in),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_raddr_reg[9] 
       (.C(hdmi_clk),
        .CE(\hdmi_raddr[9]_i_1_n_0 ),
        .D(\hdmi_raddr[9]_i_2_n_0 ),
        .Q(\hdmi_raddr_reg_n_0_[9] ),
        .R(hdmi_rst));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_status_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(hdmi_status_s),
        .R(hdmi_rst));
  LUT2 #(
    .INIT(4'hE)) 
    \hdmi_tpm_data[0]_i_1 
       (.I0(hdmi_fs_ret),
        .I1(hdmi_rst),
        .O(\hdmi_tpm_data[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[0]_i_3 
       (.I0(\hdmi_data_reg[23]_0 [3]),
        .O(\hdmi_tpm_data[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[0]_i_4 
       (.I0(\hdmi_data_reg[23]_0 [2]),
        .O(\hdmi_tpm_data[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[0]_i_5 
       (.I0(\hdmi_data_reg[23]_0 [1]),
        .O(\hdmi_tpm_data[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_tpm_data[0]_i_6 
       (.I0(\hdmi_data_reg[23]_0 [0]),
        .O(\hdmi_tpm_data[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[12]_i_2 
       (.I0(\hdmi_data_reg[23]_0 [15]),
        .O(\hdmi_tpm_data[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[12]_i_3 
       (.I0(\hdmi_data_reg[23]_0 [14]),
        .O(\hdmi_tpm_data[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[12]_i_4 
       (.I0(\hdmi_data_reg[23]_0 [13]),
        .O(\hdmi_tpm_data[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[12]_i_5 
       (.I0(\hdmi_data_reg[23]_0 [12]),
        .O(\hdmi_tpm_data[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[16]_i_2 
       (.I0(\hdmi_data_reg[23]_0 [19]),
        .O(\hdmi_tpm_data[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[16]_i_3 
       (.I0(\hdmi_data_reg[23]_0 [18]),
        .O(\hdmi_tpm_data[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[16]_i_4 
       (.I0(\hdmi_data_reg[23]_0 [17]),
        .O(\hdmi_tpm_data[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[16]_i_5 
       (.I0(\hdmi_data_reg[23]_0 [16]),
        .O(\hdmi_tpm_data[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[20]_i_2 
       (.I0(\hdmi_data_reg[23]_0 [23]),
        .O(\hdmi_tpm_data[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[20]_i_3 
       (.I0(\hdmi_data_reg[23]_0 [22]),
        .O(\hdmi_tpm_data[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[20]_i_4 
       (.I0(\hdmi_data_reg[23]_0 [21]),
        .O(\hdmi_tpm_data[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[20]_i_5 
       (.I0(\hdmi_data_reg[23]_0 [20]),
        .O(\hdmi_tpm_data[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[4]_i_2 
       (.I0(\hdmi_data_reg[23]_0 [7]),
        .O(\hdmi_tpm_data[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[4]_i_3 
       (.I0(\hdmi_data_reg[23]_0 [6]),
        .O(\hdmi_tpm_data[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[4]_i_4 
       (.I0(\hdmi_data_reg[23]_0 [5]),
        .O(\hdmi_tpm_data[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[4]_i_5 
       (.I0(\hdmi_data_reg[23]_0 [4]),
        .O(\hdmi_tpm_data[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[8]_i_2 
       (.I0(\hdmi_data_reg[23]_0 [11]),
        .O(\hdmi_tpm_data[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[8]_i_3 
       (.I0(\hdmi_data_reg[23]_0 [10]),
        .O(\hdmi_tpm_data[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[8]_i_4 
       (.I0(\hdmi_data_reg[23]_0 [9]),
        .O(\hdmi_tpm_data[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_tpm_data[8]_i_5 
       (.I0(\hdmi_data_reg[23]_0 [8]),
        .O(\hdmi_tpm_data[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[0] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[0]_i_2_n_7 ),
        .Q(\hdmi_data_reg[23]_0 [0]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  CARRY4 \hdmi_tpm_data_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\hdmi_tpm_data_reg[0]_i_2_n_0 ,\hdmi_tpm_data_reg[0]_i_2_n_1 ,\hdmi_tpm_data_reg[0]_i_2_n_2 ,\hdmi_tpm_data_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hdmi_tpm_data_reg[0]_i_2_n_4 ,\hdmi_tpm_data_reg[0]_i_2_n_5 ,\hdmi_tpm_data_reg[0]_i_2_n_6 ,\hdmi_tpm_data_reg[0]_i_2_n_7 }),
        .S({\hdmi_tpm_data[0]_i_3_n_0 ,\hdmi_tpm_data[0]_i_4_n_0 ,\hdmi_tpm_data[0]_i_5_n_0 ,\hdmi_tpm_data[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[10] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[8]_i_1_n_5 ),
        .Q(\hdmi_data_reg[23]_0 [10]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[11] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[8]_i_1_n_4 ),
        .Q(\hdmi_data_reg[23]_0 [11]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[12] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[12]_i_1_n_7 ),
        .Q(\hdmi_data_reg[23]_0 [12]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  CARRY4 \hdmi_tpm_data_reg[12]_i_1 
       (.CI(\hdmi_tpm_data_reg[8]_i_1_n_0 ),
        .CO({\hdmi_tpm_data_reg[12]_i_1_n_0 ,\hdmi_tpm_data_reg[12]_i_1_n_1 ,\hdmi_tpm_data_reg[12]_i_1_n_2 ,\hdmi_tpm_data_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_tpm_data_reg[12]_i_1_n_4 ,\hdmi_tpm_data_reg[12]_i_1_n_5 ,\hdmi_tpm_data_reg[12]_i_1_n_6 ,\hdmi_tpm_data_reg[12]_i_1_n_7 }),
        .S({\hdmi_tpm_data[12]_i_2_n_0 ,\hdmi_tpm_data[12]_i_3_n_0 ,\hdmi_tpm_data[12]_i_4_n_0 ,\hdmi_tpm_data[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[13] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[12]_i_1_n_6 ),
        .Q(\hdmi_data_reg[23]_0 [13]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[14] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[12]_i_1_n_5 ),
        .Q(\hdmi_data_reg[23]_0 [14]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[15] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[12]_i_1_n_4 ),
        .Q(\hdmi_data_reg[23]_0 [15]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[16] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[16]_i_1_n_7 ),
        .Q(\hdmi_data_reg[23]_0 [16]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  CARRY4 \hdmi_tpm_data_reg[16]_i_1 
       (.CI(\hdmi_tpm_data_reg[12]_i_1_n_0 ),
        .CO({\hdmi_tpm_data_reg[16]_i_1_n_0 ,\hdmi_tpm_data_reg[16]_i_1_n_1 ,\hdmi_tpm_data_reg[16]_i_1_n_2 ,\hdmi_tpm_data_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_tpm_data_reg[16]_i_1_n_4 ,\hdmi_tpm_data_reg[16]_i_1_n_5 ,\hdmi_tpm_data_reg[16]_i_1_n_6 ,\hdmi_tpm_data_reg[16]_i_1_n_7 }),
        .S({\hdmi_tpm_data[16]_i_2_n_0 ,\hdmi_tpm_data[16]_i_3_n_0 ,\hdmi_tpm_data[16]_i_4_n_0 ,\hdmi_tpm_data[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[17] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[16]_i_1_n_6 ),
        .Q(\hdmi_data_reg[23]_0 [17]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[18] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[16]_i_1_n_5 ),
        .Q(\hdmi_data_reg[23]_0 [18]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[19] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[16]_i_1_n_4 ),
        .Q(\hdmi_data_reg[23]_0 [19]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[1] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[0]_i_2_n_6 ),
        .Q(\hdmi_data_reg[23]_0 [1]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[20] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[20]_i_1_n_7 ),
        .Q(\hdmi_data_reg[23]_0 [20]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  CARRY4 \hdmi_tpm_data_reg[20]_i_1 
       (.CI(\hdmi_tpm_data_reg[16]_i_1_n_0 ),
        .CO({\NLW_hdmi_tpm_data_reg[20]_i_1_CO_UNCONNECTED [3],\hdmi_tpm_data_reg[20]_i_1_n_1 ,\hdmi_tpm_data_reg[20]_i_1_n_2 ,\hdmi_tpm_data_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_tpm_data_reg[20]_i_1_n_4 ,\hdmi_tpm_data_reg[20]_i_1_n_5 ,\hdmi_tpm_data_reg[20]_i_1_n_6 ,\hdmi_tpm_data_reg[20]_i_1_n_7 }),
        .S({\hdmi_tpm_data[20]_i_2_n_0 ,\hdmi_tpm_data[20]_i_3_n_0 ,\hdmi_tpm_data[20]_i_4_n_0 ,\hdmi_tpm_data[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[21] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[20]_i_1_n_6 ),
        .Q(\hdmi_data_reg[23]_0 [21]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[22] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[20]_i_1_n_5 ),
        .Q(\hdmi_data_reg[23]_0 [22]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[23] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[20]_i_1_n_4 ),
        .Q(\hdmi_data_reg[23]_0 [23]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[2] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[0]_i_2_n_5 ),
        .Q(\hdmi_data_reg[23]_0 [2]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[3] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[0]_i_2_n_4 ),
        .Q(\hdmi_data_reg[23]_0 [3]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[4] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[4]_i_1_n_7 ),
        .Q(\hdmi_data_reg[23]_0 [4]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  CARRY4 \hdmi_tpm_data_reg[4]_i_1 
       (.CI(\hdmi_tpm_data_reg[0]_i_2_n_0 ),
        .CO({\hdmi_tpm_data_reg[4]_i_1_n_0 ,\hdmi_tpm_data_reg[4]_i_1_n_1 ,\hdmi_tpm_data_reg[4]_i_1_n_2 ,\hdmi_tpm_data_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_tpm_data_reg[4]_i_1_n_4 ,\hdmi_tpm_data_reg[4]_i_1_n_5 ,\hdmi_tpm_data_reg[4]_i_1_n_6 ,\hdmi_tpm_data_reg[4]_i_1_n_7 }),
        .S({\hdmi_tpm_data[4]_i_2_n_0 ,\hdmi_tpm_data[4]_i_3_n_0 ,\hdmi_tpm_data[4]_i_4_n_0 ,\hdmi_tpm_data[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[5] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[4]_i_1_n_6 ),
        .Q(\hdmi_data_reg[23]_0 [5]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[6] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[4]_i_1_n_5 ),
        .Q(\hdmi_data_reg[23]_0 [6]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[7] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[4]_i_1_n_4 ),
        .Q(\hdmi_data_reg[23]_0 [7]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[8] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[8]_i_1_n_7 ),
        .Q(\hdmi_data_reg[23]_0 [8]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  CARRY4 \hdmi_tpm_data_reg[8]_i_1 
       (.CI(\hdmi_tpm_data_reg[4]_i_1_n_0 ),
        .CO({\hdmi_tpm_data_reg[8]_i_1_n_0 ,\hdmi_tpm_data_reg[8]_i_1_n_1 ,\hdmi_tpm_data_reg[8]_i_1_n_2 ,\hdmi_tpm_data_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_tpm_data_reg[8]_i_1_n_4 ,\hdmi_tpm_data_reg[8]_i_1_n_5 ,\hdmi_tpm_data_reg[8]_i_1_n_6 ,\hdmi_tpm_data_reg[8]_i_1_n_7 }),
        .S({\hdmi_tpm_data[8]_i_2_n_0 ,\hdmi_tpm_data[8]_i_3_n_0 ,\hdmi_tpm_data[8]_i_4_n_0 ,\hdmi_tpm_data[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_tpm_data_reg[9] 
       (.C(hdmi_clk),
        .CE(hdmi_de_2d),
        .D(\hdmi_tpm_data_reg[8]_i_1_n_6 ),
        .Q(\hdmi_data_reg[23]_0 [9]),
        .R(\hdmi_tpm_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_tpm_oos_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(i_mem_n_24),
        .Q(hdmi_tpm_oos_s),
        .R(1'b0));
  (* srl_name = "\inst/i_tx_core/hdmi_vs_2d_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    hdmi_vs_2d_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_vs),
        .Q(hdmi_vs_2d_reg_srl2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \hdmi_vs_count[0]_i_1 
       (.I0(\hdmi_vs_count_reg[0]_i_3_n_0 ),
        .I1(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .O(\hdmi_vs_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_10 
       (.I0(out[13]),
        .I1(hdmi_vf_width_s[12]),
        .I2(out[12]),
        .I3(hdmi_vf_width_s[11]),
        .O(\hdmi_vs_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_11 
       (.I0(out[11]),
        .I1(hdmi_vf_width_s[10]),
        .I2(out[10]),
        .I3(hdmi_vf_width_s[9]),
        .O(\hdmi_vs_count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_12 
       (.I0(out[9]),
        .I1(hdmi_vf_width_s[8]),
        .I2(out[8]),
        .I3(hdmi_vf_width_s[7]),
        .O(\hdmi_vs_count[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_13 
       (.I0(hdmi_vf_width_s[14]),
        .I1(out[15]),
        .I2(hdmi_vf_width_s[13]),
        .I3(out[14]),
        .O(\hdmi_vs_count[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_14 
       (.I0(hdmi_vf_width_s[12]),
        .I1(out[13]),
        .I2(hdmi_vf_width_s[11]),
        .I3(out[12]),
        .O(\hdmi_vs_count[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_15 
       (.I0(hdmi_vf_width_s[10]),
        .I1(out[11]),
        .I2(hdmi_vf_width_s[9]),
        .I3(out[10]),
        .O(\hdmi_vs_count[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_16 
       (.I0(hdmi_vf_width_s[8]),
        .I1(out[9]),
        .I2(hdmi_vf_width_s[7]),
        .I3(out[8]),
        .O(\hdmi_vs_count[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_17 
       (.I0(out[7]),
        .I1(hdmi_vf_width_s[6]),
        .I2(out[6]),
        .I3(hdmi_vf_width_s[5]),
        .O(\hdmi_vs_count[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_18 
       (.I0(out[5]),
        .I1(hdmi_vf_width_s[4]),
        .I2(out[4]),
        .I3(hdmi_vf_width_s[3]),
        .O(\hdmi_vs_count[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_19 
       (.I0(out[3]),
        .I1(hdmi_vf_width_s[2]),
        .I2(out[2]),
        .I3(hdmi_vf_width_s[1]),
        .O(\hdmi_vs_count[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h80EA)) 
    \hdmi_vs_count[0]_i_20 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\d_data_cntrl_reg[187] [48]),
        .I3(hdmi_vf_width_s[0]),
        .O(\hdmi_vs_count[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_21 
       (.I0(hdmi_vf_width_s[6]),
        .I1(out[7]),
        .I2(hdmi_vf_width_s[5]),
        .I3(out[6]),
        .O(\hdmi_vs_count[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_22 
       (.I0(hdmi_vf_width_s[4]),
        .I1(out[5]),
        .I2(hdmi_vf_width_s[3]),
        .I3(out[4]),
        .O(\hdmi_vs_count[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \hdmi_vs_count[0]_i_23 
       (.I0(hdmi_vf_width_s[2]),
        .I1(out[3]),
        .I2(hdmi_vf_width_s[1]),
        .I3(out[2]),
        .O(\hdmi_vs_count[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \hdmi_vs_count[0]_i_24 
       (.I0(\d_data_cntrl_reg[187] [48]),
        .I1(out[0]),
        .I2(hdmi_vf_width_s[0]),
        .I3(out[1]),
        .O(\hdmi_vs_count[0]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[0]_i_4 
       (.I0(out[3]),
        .O(\hdmi_vs_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[0]_i_5 
       (.I0(out[2]),
        .O(\hdmi_vs_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[0]_i_6 
       (.I0(out[1]),
        .O(\hdmi_vs_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_7 
       (.I0(out[0]),
        .O(\hdmi_vs_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \hdmi_vs_count[0]_i_9 
       (.I0(out[15]),
        .I1(hdmi_vf_width_s[14]),
        .I2(out[14]),
        .I3(hdmi_vf_width_s[13]),
        .O(\hdmi_vs_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[12]_i_2 
       (.I0(out[15]),
        .O(\hdmi_vs_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[12]_i_3 
       (.I0(out[14]),
        .O(\hdmi_vs_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[12]_i_4 
       (.I0(out[13]),
        .O(\hdmi_vs_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[12]_i_5 
       (.I0(out[12]),
        .O(\hdmi_vs_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[4]_i_2 
       (.I0(out[7]),
        .O(\hdmi_vs_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[4]_i_3 
       (.I0(out[6]),
        .O(\hdmi_vs_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[4]_i_4 
       (.I0(out[5]),
        .O(\hdmi_vs_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[4]_i_5 
       (.I0(out[4]),
        .O(\hdmi_vs_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[8]_i_2 
       (.I0(out[11]),
        .O(\hdmi_vs_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[8]_i_3 
       (.I0(out[10]),
        .O(\hdmi_vs_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[8]_i_4 
       (.I0(out[9]),
        .O(\hdmi_vs_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \hdmi_vs_count[8]_i_5 
       (.I0(out[8]),
        .O(\hdmi_vs_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[0] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[0]_i_2_n_7 ),
        .Q(out[0]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  CARRY4 \hdmi_vs_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\hdmi_vs_count_reg[0]_i_2_n_0 ,\hdmi_vs_count_reg[0]_i_2_n_1 ,\hdmi_vs_count_reg[0]_i_2_n_2 ,\hdmi_vs_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hdmi_vs_count_reg[0]_i_2_n_4 ,\hdmi_vs_count_reg[0]_i_2_n_5 ,\hdmi_vs_count_reg[0]_i_2_n_6 ,\hdmi_vs_count_reg[0]_i_2_n_7 }),
        .S({\hdmi_vs_count[0]_i_4_n_0 ,\hdmi_vs_count[0]_i_5_n_0 ,\hdmi_vs_count[0]_i_6_n_0 ,\hdmi_vs_count[0]_i_7_n_0 }));
  CARRY4 \hdmi_vs_count_reg[0]_i_3 
       (.CI(\hdmi_vs_count_reg[0]_i_8_n_0 ),
        .CO({\hdmi_vs_count_reg[0]_i_3_n_0 ,\hdmi_vs_count_reg[0]_i_3_n_1 ,\hdmi_vs_count_reg[0]_i_3_n_2 ,\hdmi_vs_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\hdmi_vs_count[0]_i_9_n_0 ,\hdmi_vs_count[0]_i_10_n_0 ,\hdmi_vs_count[0]_i_11_n_0 ,\hdmi_vs_count[0]_i_12_n_0 }),
        .O(\NLW_hdmi_vs_count_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\hdmi_vs_count[0]_i_13_n_0 ,\hdmi_vs_count[0]_i_14_n_0 ,\hdmi_vs_count[0]_i_15_n_0 ,\hdmi_vs_count[0]_i_16_n_0 }));
  CARRY4 \hdmi_vs_count_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\hdmi_vs_count_reg[0]_i_8_n_0 ,\hdmi_vs_count_reg[0]_i_8_n_1 ,\hdmi_vs_count_reg[0]_i_8_n_2 ,\hdmi_vs_count_reg[0]_i_8_n_3 }),
        .CYINIT(1'b1),
        .DI({\hdmi_vs_count[0]_i_17_n_0 ,\hdmi_vs_count[0]_i_18_n_0 ,\hdmi_vs_count[0]_i_19_n_0 ,\hdmi_vs_count[0]_i_20_n_0 }),
        .O(\NLW_hdmi_vs_count_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\hdmi_vs_count[0]_i_21_n_0 ,\hdmi_vs_count[0]_i_22_n_0 ,\hdmi_vs_count[0]_i_23_n_0 ,\hdmi_vs_count[0]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[10] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[8]_i_1_n_5 ),
        .Q(out[10]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[11] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[8]_i_1_n_4 ),
        .Q(out[11]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[12] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[12]_i_1_n_7 ),
        .Q(out[12]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  CARRY4 \hdmi_vs_count_reg[12]_i_1 
       (.CI(\hdmi_vs_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_hdmi_vs_count_reg[12]_i_1_CO_UNCONNECTED [3],\hdmi_vs_count_reg[12]_i_1_n_1 ,\hdmi_vs_count_reg[12]_i_1_n_2 ,\hdmi_vs_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_vs_count_reg[12]_i_1_n_4 ,\hdmi_vs_count_reg[12]_i_1_n_5 ,\hdmi_vs_count_reg[12]_i_1_n_6 ,\hdmi_vs_count_reg[12]_i_1_n_7 }),
        .S({\hdmi_vs_count[12]_i_2_n_0 ,\hdmi_vs_count[12]_i_3_n_0 ,\hdmi_vs_count[12]_i_4_n_0 ,\hdmi_vs_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[13] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[12]_i_1_n_6 ),
        .Q(out[13]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[14] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[12]_i_1_n_5 ),
        .Q(out[14]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[15] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[12]_i_1_n_4 ),
        .Q(out[15]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[1] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[0]_i_2_n_6 ),
        .Q(out[1]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[2] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[0]_i_2_n_5 ),
        .Q(out[2]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[3] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[0]_i_2_n_4 ),
        .Q(out[3]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[4] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[4]_i_1_n_7 ),
        .Q(out[4]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  CARRY4 \hdmi_vs_count_reg[4]_i_1 
       (.CI(\hdmi_vs_count_reg[0]_i_2_n_0 ),
        .CO({\hdmi_vs_count_reg[4]_i_1_n_0 ,\hdmi_vs_count_reg[4]_i_1_n_1 ,\hdmi_vs_count_reg[4]_i_1_n_2 ,\hdmi_vs_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_vs_count_reg[4]_i_1_n_4 ,\hdmi_vs_count_reg[4]_i_1_n_5 ,\hdmi_vs_count_reg[4]_i_1_n_6 ,\hdmi_vs_count_reg[4]_i_1_n_7 }),
        .S({\hdmi_vs_count[4]_i_2_n_0 ,\hdmi_vs_count[4]_i_3_n_0 ,\hdmi_vs_count[4]_i_4_n_0 ,\hdmi_vs_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[5] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[4]_i_1_n_6 ),
        .Q(out[5]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[6] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[4]_i_1_n_5 ),
        .Q(out[6]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[7] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[4]_i_1_n_4 ),
        .Q(out[7]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[8] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[8]_i_1_n_7 ),
        .Q(out[8]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  CARRY4 \hdmi_vs_count_reg[8]_i_1 
       (.CI(\hdmi_vs_count_reg[4]_i_1_n_0 ),
        .CO({\hdmi_vs_count_reg[8]_i_1_n_0 ,\hdmi_vs_count_reg[8]_i_1_n_1 ,\hdmi_vs_count_reg[8]_i_1_n_2 ,\hdmi_vs_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_vs_count_reg[8]_i_1_n_4 ,\hdmi_vs_count_reg[8]_i_1_n_5 ,\hdmi_vs_count_reg[8]_i_1_n_6 ,\hdmi_vs_count_reg[8]_i_1_n_7 }),
        .S({\hdmi_vs_count[8]_i_2_n_0 ,\hdmi_vs_count[8]_i_3_n_0 ,\hdmi_vs_count[8]_i_4_n_0 ,\hdmi_vs_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_vs_count_reg[9] 
       (.C(hdmi_clk),
        .CE(\hdmi_hs_count_reg[0]_i_1_n_0 ),
        .D(\hdmi_vs_count_reg[8]_i_1_n_6 ),
        .Q(out[9]),
        .R(\hdmi_vs_count[0]_i_1_n_0 ));
  (* srl_name = "\inst/i_tx_core/hdmi_vs_de_2d_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    hdmi_vs_de_2d_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmi_clk),
        .D(hdmi_vs_de),
        .Q(hdmi_vs_de_2d_reg_srl2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hdmi_vs_de_i_1
       (.I0(hdmi_vs_de1),
        .I1(hdmi_vs_de10_in),
        .O(hdmi_vs_de_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_14
       (.I0(out[15]),
        .I1(\d_data_cntrl_reg[187] [15]),
        .I2(\d_data_cntrl_reg[187] [14]),
        .I3(out[14]),
        .O(hdmi_vs_de_i_14_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_15
       (.I0(out[13]),
        .I1(\d_data_cntrl_reg[187] [13]),
        .I2(\d_data_cntrl_reg[187] [12]),
        .I3(out[12]),
        .O(hdmi_vs_de_i_15_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_16
       (.I0(out[11]),
        .I1(\d_data_cntrl_reg[187] [11]),
        .I2(\d_data_cntrl_reg[187] [10]),
        .I3(out[10]),
        .O(hdmi_vs_de_i_16_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_17
       (.I0(out[9]),
        .I1(\d_data_cntrl_reg[187] [9]),
        .I2(\d_data_cntrl_reg[187] [8]),
        .I3(out[8]),
        .O(hdmi_vs_de_i_17_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_22
       (.I0(out[7]),
        .I1(\d_data_cntrl_reg[187] [23]),
        .I2(out[6]),
        .I3(\d_data_cntrl_reg[187] [22]),
        .O(hdmi_vs_de_i_22_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_23
       (.I0(out[5]),
        .I1(\d_data_cntrl_reg[187] [21]),
        .I2(out[4]),
        .I3(\d_data_cntrl_reg[187] [20]),
        .O(hdmi_vs_de_i_23_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_24
       (.I0(out[3]),
        .I1(\d_data_cntrl_reg[187] [19]),
        .I2(out[2]),
        .I3(\d_data_cntrl_reg[187] [18]),
        .O(hdmi_vs_de_i_24_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_25
       (.I0(out[1]),
        .I1(\d_data_cntrl_reg[187] [17]),
        .I2(out[0]),
        .I3(\d_data_cntrl_reg[187] [16]),
        .O(hdmi_vs_de_i_25_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_30
       (.I0(out[7]),
        .I1(\d_data_cntrl_reg[187] [7]),
        .I2(\d_data_cntrl_reg[187] [6]),
        .I3(out[6]),
        .O(hdmi_vs_de_i_30_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_31
       (.I0(out[5]),
        .I1(\d_data_cntrl_reg[187] [5]),
        .I2(\d_data_cntrl_reg[187] [4]),
        .I3(out[4]),
        .O(hdmi_vs_de_i_31_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_32
       (.I0(out[3]),
        .I1(\d_data_cntrl_reg[187] [3]),
        .I2(\d_data_cntrl_reg[187] [2]),
        .I3(out[2]),
        .O(hdmi_vs_de_i_32_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    hdmi_vs_de_i_33
       (.I0(out[1]),
        .I1(\d_data_cntrl_reg[187] [1]),
        .I2(\d_data_cntrl_reg[187] [0]),
        .I3(out[0]),
        .O(hdmi_vs_de_i_33_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_5
       (.I0(out[15]),
        .I1(\d_data_cntrl_reg[187] [31]),
        .I2(out[14]),
        .I3(\d_data_cntrl_reg[187] [30]),
        .O(hdmi_vs_de_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_6
       (.I0(out[13]),
        .I1(\d_data_cntrl_reg[187] [29]),
        .I2(out[12]),
        .I3(\d_data_cntrl_reg[187] [28]),
        .O(hdmi_vs_de_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_7
       (.I0(out[11]),
        .I1(\d_data_cntrl_reg[187] [27]),
        .I2(out[10]),
        .I3(\d_data_cntrl_reg[187] [26]),
        .O(hdmi_vs_de_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_de_i_8
       (.I0(out[9]),
        .I1(\d_data_cntrl_reg[187] [25]),
        .I2(out[8]),
        .I3(\d_data_cntrl_reg[187] [24]),
        .O(hdmi_vs_de_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_vs_de_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_vs_de_i_1_n_0),
        .Q(hdmi_vs_de),
        .R(hdmi_enable_reg_inv_n_0));
  CARRY4 hdmi_vs_de_reg_i_13
       (.CI(1'b0),
        .CO({hdmi_vs_de_reg_i_13_n_0,hdmi_vs_de_reg_i_13_n_1,hdmi_vs_de_reg_i_13_n_2,hdmi_vs_de_reg_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_vs_de_i_30_n_0,hdmi_vs_de_i_31_n_0,hdmi_vs_de_i_32_n_0,hdmi_vs_de_i_33_n_0}),
        .O(NLW_hdmi_vs_de_reg_i_13_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[7] ));
  CARRY4 hdmi_vs_de_reg_i_2
       (.CI(hdmi_vs_de_reg_i_4_n_0),
        .CO({hdmi_vs_de1,hdmi_vs_de_reg_i_2_n_1,hdmi_vs_de_reg_i_2_n_2,hdmi_vs_de_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_vs_de_i_5_n_0,hdmi_vs_de_i_6_n_0,hdmi_vs_de_i_7_n_0,hdmi_vs_de_i_8_n_0}),
        .O(NLW_hdmi_vs_de_reg_i_2_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[31] ));
  CARRY4 hdmi_vs_de_reg_i_3
       (.CI(hdmi_vs_de_reg_i_13_n_0),
        .CO({hdmi_vs_de10_in,hdmi_vs_de_reg_i_3_n_1,hdmi_vs_de_reg_i_3_n_2,hdmi_vs_de_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_vs_de_i_14_n_0,hdmi_vs_de_i_15_n_0,hdmi_vs_de_i_16_n_0,hdmi_vs_de_i_17_n_0}),
        .O(NLW_hdmi_vs_de_reg_i_3_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[15] ));
  CARRY4 hdmi_vs_de_reg_i_4
       (.CI(1'b0),
        .CO({hdmi_vs_de_reg_i_4_n_0,hdmi_vs_de_reg_i_4_n_1,hdmi_vs_de_reg_i_4_n_2,hdmi_vs_de_reg_i_4_n_3}),
        .CYINIT(1'b1),
        .DI({hdmi_vs_de_i_22_n_0,hdmi_vs_de_i_23_n_0,hdmi_vs_de_i_24_n_0,hdmi_vs_de_i_25_n_0}),
        .O(NLW_hdmi_vs_de_reg_i_4_O_UNCONNECTED[3:0]),
        .S(\d_data_cntrl_reg[23] ));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_10
       (.I0(out[9]),
        .I1(\d_data_cntrl_reg[187] [41]),
        .I2(out[8]),
        .I3(\d_data_cntrl_reg[187] [40]),
        .O(hdmi_vs_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_15
       (.I0(out[7]),
        .I1(\d_data_cntrl_reg[187] [39]),
        .I2(out[6]),
        .I3(\d_data_cntrl_reg[187] [38]),
        .O(hdmi_vs_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_16
       (.I0(out[5]),
        .I1(\d_data_cntrl_reg[187] [37]),
        .I2(out[4]),
        .I3(\d_data_cntrl_reg[187] [36]),
        .O(hdmi_vs_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_17
       (.I0(out[3]),
        .I1(\d_data_cntrl_reg[187] [35]),
        .I2(out[2]),
        .I3(\d_data_cntrl_reg[187] [34]),
        .O(hdmi_vs_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_18
       (.I0(out[1]),
        .I1(\d_data_cntrl_reg[187] [33]),
        .I2(out[0]),
        .I3(\d_data_cntrl_reg[187] [32]),
        .O(hdmi_vs_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_7
       (.I0(out[15]),
        .I1(\d_data_cntrl_reg[187] [47]),
        .I2(out[14]),
        .I3(\d_data_cntrl_reg[187] [46]),
        .O(hdmi_vs_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_8
       (.I0(out[13]),
        .I1(\d_data_cntrl_reg[187] [45]),
        .I2(out[12]),
        .I3(\d_data_cntrl_reg[187] [44]),
        .O(hdmi_vs_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_i_9
       (.I0(out[11]),
        .I1(\d_data_cntrl_reg[187] [43]),
        .I2(out[10]),
        .I3(\d_data_cntrl_reg[187] [42]),
        .O(hdmi_vs_reg_1[1]));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_vs_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(CO),
        .Q(hdmi_vs),
        .R(hdmi_enable_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_vsync_data_e_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_vs_de_2d_reg_srl2_n_0),
        .Q(hdmi_vsync_data_e),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hdmi_vsync_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(hdmi_vs_2d_reg_srl2_n_0),
        .Q(hdmi_vsync),
        .R(1'b0));
  system_axi_hdmi_core_0_ad_csc_RGB2CrYCb i_csc_RGB2CrYCb
       (.Q(hdmi_data),
        .\d_data_cntrl_reg[186] (\d_data_cntrl_reg[187] [98]),
        .hdmi_24_data_e_reg(i_csc_RGB2CrYCb_n_2),
        .\hdmi_24_data_reg[15] ({i_csc_RGB2CrYCb_n_13,i_csc_RGB2CrYCb_n_14,i_csc_RGB2CrYCb_n_15,i_csc_RGB2CrYCb_n_16,i_csc_RGB2CrYCb_n_17,i_csc_RGB2CrYCb_n_18,i_csc_RGB2CrYCb_n_19,i_csc_RGB2CrYCb_n_20}),
        .\hdmi_24_data_reg[23] (data_p),
        .\hdmi_24_data_reg[7] ({i_csc_RGB2CrYCb_n_5,i_csc_RGB2CrYCb_n_6,i_csc_RGB2CrYCb_n_7,i_csc_RGB2CrYCb_n_8,i_csc_RGB2CrYCb_n_9,i_csc_RGB2CrYCb_n_10,i_csc_RGB2CrYCb_n_11,i_csc_RGB2CrYCb_n_12}),
        .hdmi_24_hsync_reg(i_csc_RGB2CrYCb_n_0),
        .hdmi_24_vsync_reg(i_csc_RGB2CrYCb_n_1),
        .hdmi_clk(hdmi_clk),
        .hdmi_data_e(hdmi_data_e),
        .hdmi_es_hs_de_reg(i_csc_RGB2CrYCb_n_4),
        .hdmi_es_vs_de_reg(i_csc_RGB2CrYCb_n_3),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_hsync_data_e(hdmi_hsync_data_e),
        .hdmi_vsync(hdmi_vsync),
        .hdmi_vsync_data_e(hdmi_vsync_data_e));
  system_axi_hdmi_core_0_ad_mem i_mem
       (.Q({\hdmi_raddr_reg_n_0_[9] ,p_7_in,p_6_in,p_5_in,p_4_in,p_3_in,p_2_in,p_1_in,\hdmi_raddr_reg_n_0_[1] }),
        .hdmi_clk(hdmi_clk),
        .\hdmi_data_reg[0] (\hdmi_data_reg[0]_0 ),
        .\hdmi_data_reg[10] (\hdmi_data_reg[10]_0 ),
        .\hdmi_data_reg[11] (\hdmi_data_reg[11]_0 ),
        .\hdmi_data_reg[12] (\hdmi_data_reg[12]_0 ),
        .\hdmi_data_reg[13] (\hdmi_data_reg[13]_0 ),
        .\hdmi_data_reg[14] (\hdmi_data_reg[14]_0 ),
        .\hdmi_data_reg[15] (\hdmi_data_reg[15]_0 ),
        .\hdmi_data_reg[16] (\hdmi_data_reg[16]_0 ),
        .\hdmi_data_reg[17] (\hdmi_data_reg[17]_0 ),
        .\hdmi_data_reg[18] (\hdmi_data_reg[18]_0 ),
        .\hdmi_data_reg[19] (\hdmi_data_reg[19]_0 ),
        .\hdmi_data_reg[1] (\hdmi_data_reg[1]_0 ),
        .\hdmi_data_reg[20] (\hdmi_data_reg[20]_0 ),
        .\hdmi_data_reg[21] (\hdmi_data_reg[21]_0 ),
        .\hdmi_data_reg[22] (\hdmi_data_reg[22]_0 ),
        .\hdmi_data_reg[23] (\hdmi_data_reg[23]_1 ),
        .\hdmi_data_reg[2] (\hdmi_data_reg[2]_0 ),
        .\hdmi_data_reg[3] (\hdmi_data_reg[3]_0 ),
        .\hdmi_data_reg[4] (\hdmi_data_reg[4]_0 ),
        .\hdmi_data_reg[5] (\hdmi_data_reg[5]_0 ),
        .\hdmi_data_reg[6] (\hdmi_data_reg[6]_0 ),
        .\hdmi_data_reg[7] (\hdmi_data_reg[7]_0 ),
        .\hdmi_data_reg[8] (\hdmi_data_reg[8]_0 ),
        .\hdmi_data_reg[9] (\hdmi_data_reg[9]_0 ),
        .hdmi_data_sel_2d(hdmi_data_sel_2d),
        .hdmi_de_2d(hdmi_de_2d),
        .\hdmi_tpm_data_reg[23] (\hdmi_data_reg[23]_0 ),
        .hdmi_tpm_oos_reg(i_mem_n_24),
        .m_axis_mm2s_clk(m_axis_mm2s_clk),
        .vdma_waddr(vdma_waddr),
        .\vdma_wdata_reg[47] (Q),
        .vdma_wr(vdma_wr));
  system_axi_hdmi_core_0_ad_ss_444to422 i_ss_444to422
       (.E(E),
        .Q({i_ss_444to422_n_5,i_ss_444to422_n_6,i_ss_444to422_n_7,i_ss_444to422_n_8,i_ss_444to422_n_9,i_ss_444to422_n_10,i_ss_444to422_n_11,i_ss_444to422_n_12,i_ss_444to422_n_13,i_ss_444to422_n_14,i_ss_444to422_n_15,i_ss_444to422_n_16,i_ss_444to422_n_17,i_ss_444to422_n_18,i_ss_444to422_n_19,i_ss_444to422_n_20}),
        .\d_data_cntrl_reg[187] (\d_data_cntrl_reg[187] [99]),
        .hdmi_16_data_e_reg(i_ss_444to422_n_4),
        .hdmi_16_hsync_reg(i_ss_444to422_n_0),
        .hdmi_16_vsync_reg(i_ss_444to422_n_1),
        .hdmi_36_data(hdmi_36_data),
        .hdmi_36_hsync(hdmi_36_hsync),
        .hdmi_36_vsync(hdmi_36_vsync),
        .hdmi_clk(hdmi_clk),
        .\hdmi_es_data_reg[0] (i_ss_444to422_n_23),
        .\hdmi_es_data_reg[0]_0 (i_ss_444to422_n_37),
        .\hdmi_es_data_reg[10] (i_ss_444to422_n_33),
        .\hdmi_es_data_reg[11] (i_ss_444to422_n_34),
        .\hdmi_es_data_reg[12] (i_ss_444to422_n_35),
        .\hdmi_es_data_reg[13] (i_ss_444to422_n_29),
        .\hdmi_es_data_reg[14] (i_ss_444to422_n_30),
        .\hdmi_es_data_reg[15] (i_ss_444to422_n_36),
        .\hdmi_es_data_reg[1] (i_ss_444to422_n_24),
        .\hdmi_es_data_reg[3] (i_ss_444to422_n_28),
        .\hdmi_es_data_reg[5] (i_ss_444to422_n_21),
        .\hdmi_es_data_reg[6] (i_ss_444to422_n_22),
        .\hdmi_es_data_reg[8] (i_ss_444to422_n_31),
        .\hdmi_es_data_reg[9] (i_ss_444to422_n_32),
        .hdmi_es_hs_de_reg(i_ss_444to422_n_3),
        .hdmi_es_vs_de_reg(i_ss_444to422_n_2),
        .hdmi_hsync_data_e_reg(i_csc_RGB2CrYCb_n_4),
        .hdmi_vsync_data_e_reg(i_csc_RGB2CrYCb_n_3),
        .p_5_out({p_5_out[7],p_5_out[4],p_5_out[2]}));
endmodule

(* ORIG_REF_NAME = "axi_hdmi_tx_vdma" *) 
module system_axi_hdmi_core_0_axi_hdmi_tx_vdma
   (m_axis_mm2s_fsync,
    E,
    vdma_fs_ret_toggle_s,
    m_axis_mm2s_tready,
    vdma_tpm_oos_s,
    vdma_ovf_s,
    vdma_unf_s,
    Q,
    m_ram_reg,
    \hdmi_fs_waddr_reg[8] ,
    SR,
    hdmi_fs_toggle_s,
    m_axis_mm2s_clk,
    m_axis_mm2s_fsync_ret,
    m_axis_mm2s_tvalid,
    D,
    m_axis_mm2s_tdata,
    clear);
  output m_axis_mm2s_fsync;
  output [0:0]E;
  output vdma_fs_ret_toggle_s;
  output m_axis_mm2s_tready;
  output vdma_tpm_oos_s;
  output vdma_ovf_s;
  output vdma_unf_s;
  output [8:0]Q;
  output [47:0]m_ram_reg;
  output [8:0]\hdmi_fs_waddr_reg[8] ;
  input [0:0]SR;
  input hdmi_fs_toggle_s;
  input m_axis_mm2s_clk;
  input m_axis_mm2s_fsync_ret;
  input m_axis_mm2s_tvalid;
  input [8:0]D;
  input [47:0]m_axis_mm2s_tdata;
  input clear;

  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire clear;
  wire [7:0]g2b_return;
  wire hdmi_fs_toggle_s;
  wire [8:0]\hdmi_fs_waddr_reg[8] ;
  wire m_axis_mm2s_clk;
  wire m_axis_mm2s_fsync;
  wire m_axis_mm2s_fsync_ret;
  wire [47:0]m_axis_mm2s_tdata;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire [47:0]m_ram_reg;
  wire [8:0]p_0_in;
  wire p_0_in1_in;
  wire p_1_in;
  wire p_2_in4_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in11_in;
  wire p_6_in;
  wire [8:0]vdma_addr_diff;
  wire \vdma_addr_diff[3]_i_2_n_0 ;
  wire \vdma_addr_diff[3]_i_3_n_0 ;
  wire \vdma_addr_diff[3]_i_4_n_0 ;
  wire \vdma_addr_diff[3]_i_5_n_0 ;
  wire \vdma_addr_diff[7]_i_2_n_0 ;
  wire \vdma_addr_diff[7]_i_3_n_0 ;
  wire \vdma_addr_diff[7]_i_4_n_0 ;
  wire \vdma_addr_diff[7]_i_5_n_0 ;
  wire \vdma_addr_diff[8]_i_2_n_0 ;
  wire \vdma_addr_diff_reg[3]_i_1_n_0 ;
  wire \vdma_addr_diff_reg[3]_i_1_n_1 ;
  wire \vdma_addr_diff_reg[3]_i_1_n_2 ;
  wire \vdma_addr_diff_reg[3]_i_1_n_3 ;
  wire \vdma_addr_diff_reg[7]_i_1_n_0 ;
  wire \vdma_addr_diff_reg[7]_i_1_n_1 ;
  wire \vdma_addr_diff_reg[7]_i_1_n_2 ;
  wire \vdma_addr_diff_reg[7]_i_1_n_3 ;
  wire [8:0]vdma_addr_diff_s;
  wire vdma_almost_empty;
  wire vdma_almost_empty_i_1_n_0;
  wire vdma_almost_full;
  wire vdma_almost_full_i_1_n_0;
  wire vdma_fs0;
  wire vdma_fs_ret_toggle_i_1_n_0;
  wire vdma_fs_ret_toggle_s;
  wire vdma_fs_toggle_m1;
  wire vdma_fs_toggle_m2;
  wire vdma_fs_toggle_m3;
  wire vdma_ovf_i_1_n_0;
  wire vdma_ovf_s;
  wire [8:0]vdma_raddr;
  wire [8:0]vdma_raddr_g_m1;
  wire \vdma_raddr_g_m2_reg_n_0_[0] ;
  wire \vdma_raddr_g_m2_reg_n_0_[7] ;
  wire vdma_ready_i_1_n_0;
  wire vdma_ready_i_2_n_0;
  wire vdma_ready_i_3_n_0;
  wire vdma_ready_i_4_n_0;
  wire \vdma_tpm_data[0]_i_3_n_0 ;
  wire \vdma_tpm_data[0]_i_4_n_0 ;
  wire \vdma_tpm_data[0]_i_5_n_0 ;
  wire \vdma_tpm_data[0]_i_6_n_0 ;
  wire \vdma_tpm_data[12]_i_2_n_0 ;
  wire \vdma_tpm_data[12]_i_3_n_0 ;
  wire \vdma_tpm_data[12]_i_4_n_0 ;
  wire \vdma_tpm_data[12]_i_5_n_0 ;
  wire \vdma_tpm_data[16]_i_2_n_0 ;
  wire \vdma_tpm_data[16]_i_3_n_0 ;
  wire \vdma_tpm_data[16]_i_4_n_0 ;
  wire \vdma_tpm_data[16]_i_5_n_0 ;
  wire \vdma_tpm_data[20]_i_2_n_0 ;
  wire \vdma_tpm_data[20]_i_3_n_0 ;
  wire \vdma_tpm_data[20]_i_4_n_0 ;
  wire \vdma_tpm_data[4]_i_2_n_0 ;
  wire \vdma_tpm_data[4]_i_3_n_0 ;
  wire \vdma_tpm_data[4]_i_4_n_0 ;
  wire \vdma_tpm_data[4]_i_5_n_0 ;
  wire \vdma_tpm_data[8]_i_2_n_0 ;
  wire \vdma_tpm_data[8]_i_3_n_0 ;
  wire \vdma_tpm_data[8]_i_4_n_0 ;
  wire \vdma_tpm_data[8]_i_5_n_0 ;
  wire [22:0]vdma_tpm_data_reg;
  wire \vdma_tpm_data_reg[0]_i_2_n_0 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_1 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_2 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_3 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_4 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_5 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_6 ;
  wire \vdma_tpm_data_reg[0]_i_2_n_7 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_0 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_1 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_2 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_3 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_4 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_5 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_6 ;
  wire \vdma_tpm_data_reg[12]_i_1_n_7 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_0 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_1 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_2 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_3 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_4 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_5 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_6 ;
  wire \vdma_tpm_data_reg[16]_i_1_n_7 ;
  wire \vdma_tpm_data_reg[20]_i_1_n_2 ;
  wire \vdma_tpm_data_reg[20]_i_1_n_3 ;
  wire \vdma_tpm_data_reg[20]_i_1_n_5 ;
  wire \vdma_tpm_data_reg[20]_i_1_n_6 ;
  wire \vdma_tpm_data_reg[20]_i_1_n_7 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_0 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_1 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_2 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_3 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_4 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_5 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_6 ;
  wire \vdma_tpm_data_reg[4]_i_1_n_7 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_0 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_1 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_2 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_3 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_4 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_5 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_6 ;
  wire \vdma_tpm_data_reg[8]_i_1_n_7 ;
  wire vdma_tpm_oos0;
  wire vdma_tpm_oos_i_10_n_0;
  wire vdma_tpm_oos_i_11_n_0;
  wire vdma_tpm_oos_i_12_n_0;
  wire vdma_tpm_oos_i_14_n_0;
  wire vdma_tpm_oos_i_15_n_0;
  wire vdma_tpm_oos_i_16_n_0;
  wire vdma_tpm_oos_i_17_n_0;
  wire vdma_tpm_oos_i_18_n_0;
  wire vdma_tpm_oos_i_19_n_0;
  wire vdma_tpm_oos_i_1_n_0;
  wire vdma_tpm_oos_i_20_n_0;
  wire vdma_tpm_oos_i_21_n_0;
  wire vdma_tpm_oos_i_4_n_0;
  wire vdma_tpm_oos_i_5_n_0;
  wire vdma_tpm_oos_i_6_n_0;
  wire vdma_tpm_oos_i_7_n_0;
  wire vdma_tpm_oos_i_9_n_0;
  wire vdma_tpm_oos_reg_i_13_n_0;
  wire vdma_tpm_oos_reg_i_13_n_1;
  wire vdma_tpm_oos_reg_i_13_n_2;
  wire vdma_tpm_oos_reg_i_13_n_3;
  wire vdma_tpm_oos_reg_i_2_n_1;
  wire vdma_tpm_oos_reg_i_2_n_2;
  wire vdma_tpm_oos_reg_i_2_n_3;
  wire vdma_tpm_oos_reg_i_3_n_0;
  wire vdma_tpm_oos_reg_i_3_n_1;
  wire vdma_tpm_oos_reg_i_3_n_2;
  wire vdma_tpm_oos_reg_i_3_n_3;
  wire vdma_tpm_oos_reg_i_8_n_0;
  wire vdma_tpm_oos_reg_i_8_n_1;
  wire vdma_tpm_oos_reg_i_8_n_2;
  wire vdma_tpm_oos_reg_i_8_n_3;
  wire vdma_tpm_oos_s;
  wire vdma_unf_i_1_n_0;
  wire vdma_unf_s;
  wire \vdma_waddr[8]_i_2_n_0 ;
  wire vdma_wr0;
  wire [3:0]\NLW_vdma_addr_diff_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_vdma_addr_diff_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_vdma_tpm_data_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_vdma_tpm_data_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_vdma_tpm_oos_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_vdma_tpm_oos_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_vdma_tpm_oos_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_vdma_tpm_oos_reg_i_8_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[3]_i_2 
       (.I0(Q[3]),
        .I1(vdma_raddr[3]),
        .O(\vdma_addr_diff[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[3]_i_3 
       (.I0(Q[2]),
        .I1(vdma_raddr[2]),
        .O(\vdma_addr_diff[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[3]_i_4 
       (.I0(Q[1]),
        .I1(vdma_raddr[1]),
        .O(\vdma_addr_diff[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[3]_i_5 
       (.I0(Q[0]),
        .I1(vdma_raddr[0]),
        .O(\vdma_addr_diff[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[7]_i_2 
       (.I0(Q[7]),
        .I1(vdma_raddr[7]),
        .O(\vdma_addr_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[7]_i_3 
       (.I0(Q[6]),
        .I1(vdma_raddr[6]),
        .O(\vdma_addr_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[7]_i_4 
       (.I0(Q[5]),
        .I1(vdma_raddr[5]),
        .O(\vdma_addr_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[7]_i_5 
       (.I0(Q[4]),
        .I1(vdma_raddr[4]),
        .O(\vdma_addr_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \vdma_addr_diff[8]_i_2 
       (.I0(Q[8]),
        .I1(vdma_raddr[8]),
        .O(\vdma_addr_diff[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[0]),
        .Q(vdma_addr_diff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[1]),
        .Q(vdma_addr_diff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[2]),
        .Q(vdma_addr_diff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[3]),
        .Q(vdma_addr_diff[3]),
        .R(1'b0));
  CARRY4 \vdma_addr_diff_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\vdma_addr_diff_reg[3]_i_1_n_0 ,\vdma_addr_diff_reg[3]_i_1_n_1 ,\vdma_addr_diff_reg[3]_i_1_n_2 ,\vdma_addr_diff_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(vdma_addr_diff_s[3:0]),
        .S({\vdma_addr_diff[3]_i_2_n_0 ,\vdma_addr_diff[3]_i_3_n_0 ,\vdma_addr_diff[3]_i_4_n_0 ,\vdma_addr_diff[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[4]),
        .Q(vdma_addr_diff[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[5]),
        .Q(vdma_addr_diff[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[6]),
        .Q(vdma_addr_diff[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[7]),
        .Q(vdma_addr_diff[7]),
        .R(1'b0));
  CARRY4 \vdma_addr_diff_reg[7]_i_1 
       (.CI(\vdma_addr_diff_reg[3]_i_1_n_0 ),
        .CO({\vdma_addr_diff_reg[7]_i_1_n_0 ,\vdma_addr_diff_reg[7]_i_1_n_1 ,\vdma_addr_diff_reg[7]_i_1_n_2 ,\vdma_addr_diff_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(vdma_addr_diff_s[7:4]),
        .S({\vdma_addr_diff[7]_i_2_n_0 ,\vdma_addr_diff[7]_i_3_n_0 ,\vdma_addr_diff[7]_i_4_n_0 ,\vdma_addr_diff[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_addr_diff_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_addr_diff_s[8]),
        .Q(vdma_addr_diff[8]),
        .R(1'b0));
  CARRY4 \vdma_addr_diff_reg[8]_i_1 
       (.CI(\vdma_addr_diff_reg[7]_i_1_n_0 ),
        .CO(\NLW_vdma_addr_diff_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_vdma_addr_diff_reg[8]_i_1_O_UNCONNECTED [3:1],vdma_addr_diff_s[8]}),
        .S({1'b0,1'b0,1'b0,\vdma_addr_diff[8]_i_2_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    vdma_almost_empty_i_1
       (.I0(vdma_addr_diff[8]),
        .I1(vdma_addr_diff[7]),
        .I2(vdma_addr_diff[6]),
        .I3(vdma_ready_i_3_n_0),
        .O(vdma_almost_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_almost_empty_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_almost_empty_i_1_n_0),
        .Q(vdma_almost_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    vdma_almost_full_i_1
       (.I0(vdma_addr_diff[1]),
        .I1(vdma_addr_diff[2]),
        .I2(vdma_addr_diff[3]),
        .I3(vdma_ready_i_4_n_0),
        .O(vdma_almost_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_almost_full_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_almost_full_i_1_n_0),
        .Q(vdma_almost_full),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    vdma_fs_i_1
       (.I0(vdma_fs_toggle_m2),
        .I1(vdma_fs_toggle_m3),
        .O(vdma_fs0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_fs_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_fs0),
        .Q(m_axis_mm2s_fsync),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    vdma_fs_ret_toggle_i_1
       (.I0(vdma_fs_ret_toggle_s),
        .O(vdma_fs_ret_toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_fs_ret_toggle_reg
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(vdma_fs_ret_toggle_i_1_n_0),
        .Q(vdma_fs_ret_toggle_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_fs_toggle_m1_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(hdmi_fs_toggle_s),
        .Q(vdma_fs_toggle_m1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    vdma_fs_toggle_m2_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_fs_toggle_m1),
        .Q(vdma_fs_toggle_m2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    vdma_fs_toggle_m3_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_fs_toggle_m2),
        .Q(vdma_fs_toggle_m3),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[0]),
        .Q(\hdmi_fs_waddr_reg[8] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[1]),
        .Q(\hdmi_fs_waddr_reg[8] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[2]),
        .Q(\hdmi_fs_waddr_reg[8] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[3]),
        .Q(\hdmi_fs_waddr_reg[8] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[4]),
        .Q(\hdmi_fs_waddr_reg[8] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[5]),
        .Q(\hdmi_fs_waddr_reg[8] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[6]),
        .Q(\hdmi_fs_waddr_reg[8] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[7]),
        .Q(\hdmi_fs_waddr_reg[8] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_fs_waddr_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(m_axis_mm2s_fsync_ret),
        .D(Q[8]),
        .Q(\hdmi_fs_waddr_reg[8] [8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    vdma_ovf_i_1
       (.I0(vdma_almost_full),
        .I1(vdma_ready_i_3_n_0),
        .I2(vdma_addr_diff[8]),
        .I3(vdma_addr_diff[7]),
        .I4(vdma_addr_diff[6]),
        .O(vdma_ovf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_ovf_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_ovf_i_1_n_0),
        .Q(vdma_ovf_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \vdma_raddr[0]_i_1 
       (.I0(\vdma_raddr_g_m2_reg_n_0_[0] ),
        .I1(p_6_in),
        .I2(p_5_in11_in),
        .I3(g2b_return[3]),
        .O(g2b_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \vdma_raddr[1]_i_1 
       (.I0(p_5_in11_in),
        .I1(p_6_in),
        .I2(g2b_return[3]),
        .O(g2b_return[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \vdma_raddr[2]_i_1 
       (.I0(g2b_return[3]),
        .I1(p_5_in11_in),
        .O(g2b_return[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \vdma_raddr[3]_i_1 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in1_in),
        .I3(\vdma_raddr_g_m2_reg_n_0_[7] ),
        .I4(p_2_in4_in),
        .I5(p_4_in),
        .O(g2b_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \vdma_raddr[4]_i_1 
       (.I0(p_2_in4_in),
        .I1(\vdma_raddr_g_m2_reg_n_0_[7] ),
        .I2(p_0_in1_in),
        .I3(p_1_in),
        .I4(p_3_in),
        .O(g2b_return[4]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \vdma_raddr[5]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in1_in),
        .I2(\vdma_raddr_g_m2_reg_n_0_[7] ),
        .I3(p_2_in4_in),
        .O(g2b_return[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \vdma_raddr[6]_i_1 
       (.I0(\vdma_raddr_g_m2_reg_n_0_[7] ),
        .I1(p_0_in1_in),
        .I2(p_1_in),
        .O(g2b_return[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vdma_raddr[7]_i_1 
       (.I0(p_0_in1_in),
        .I1(\vdma_raddr_g_m2_reg_n_0_[7] ),
        .O(g2b_return[7]));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(vdma_raddr_g_m1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(vdma_raddr_g_m1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(vdma_raddr_g_m1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(vdma_raddr_g_m1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(vdma_raddr_g_m1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(vdma_raddr_g_m1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(vdma_raddr_g_m1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(vdma_raddr_g_m1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m1_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(vdma_raddr_g_m1[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[0]),
        .Q(\vdma_raddr_g_m2_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[1]),
        .Q(p_6_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[2]),
        .Q(p_5_in11_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[3]),
        .Q(p_4_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[4]),
        .Q(p_3_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[5]),
        .Q(p_2_in4_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[6]),
        .Q(p_1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[7]),
        .Q(\vdma_raddr_g_m2_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_g_m2_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_raddr_g_m1[8]),
        .Q(p_0_in1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[0]),
        .Q(vdma_raddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[1]),
        .Q(vdma_raddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[2]),
        .Q(vdma_raddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[3]),
        .Q(vdma_raddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[4]),
        .Q(vdma_raddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[5]),
        .Q(vdma_raddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[6]),
        .Q(vdma_raddr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(g2b_return[7]),
        .Q(vdma_raddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_raddr_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(vdma_raddr[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEF00EF00EF00EFEF)) 
    vdma_ready_i_1
       (.I0(m_axis_mm2s_tready),
        .I1(vdma_ready_i_2_n_0),
        .I2(vdma_ready_i_3_n_0),
        .I3(vdma_ready_i_4_n_0),
        .I4(vdma_addr_diff[2]),
        .I5(vdma_addr_diff[3]),
        .O(vdma_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    vdma_ready_i_2
       (.I0(vdma_addr_diff[8]),
        .I1(vdma_addr_diff[7]),
        .I2(vdma_addr_diff[6]),
        .O(vdma_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    vdma_ready_i_3
       (.I0(vdma_addr_diff[0]),
        .I1(vdma_addr_diff[1]),
        .I2(vdma_addr_diff[2]),
        .I3(vdma_addr_diff[3]),
        .I4(vdma_addr_diff[5]),
        .I5(vdma_addr_diff[4]),
        .O(vdma_ready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    vdma_ready_i_4
       (.I0(vdma_addr_diff[5]),
        .I1(vdma_addr_diff[4]),
        .I2(vdma_addr_diff[6]),
        .I3(vdma_addr_diff[7]),
        .I4(vdma_addr_diff[8]),
        .O(vdma_ready_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_ready_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_ready_i_1_n_0),
        .Q(m_axis_mm2s_tready),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[0]_i_3 
       (.I0(vdma_tpm_data_reg[3]),
        .O(\vdma_tpm_data[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[0]_i_4 
       (.I0(vdma_tpm_data_reg[2]),
        .O(\vdma_tpm_data[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[0]_i_5 
       (.I0(vdma_tpm_data_reg[1]),
        .O(\vdma_tpm_data[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vdma_tpm_data[0]_i_6 
       (.I0(vdma_tpm_data_reg[0]),
        .O(\vdma_tpm_data[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[12]_i_2 
       (.I0(vdma_tpm_data_reg[15]),
        .O(\vdma_tpm_data[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[12]_i_3 
       (.I0(vdma_tpm_data_reg[14]),
        .O(\vdma_tpm_data[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[12]_i_4 
       (.I0(vdma_tpm_data_reg[13]),
        .O(\vdma_tpm_data[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[12]_i_5 
       (.I0(vdma_tpm_data_reg[12]),
        .O(\vdma_tpm_data[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[16]_i_2 
       (.I0(vdma_tpm_data_reg[19]),
        .O(\vdma_tpm_data[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[16]_i_3 
       (.I0(vdma_tpm_data_reg[18]),
        .O(\vdma_tpm_data[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[16]_i_4 
       (.I0(vdma_tpm_data_reg[17]),
        .O(\vdma_tpm_data[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[16]_i_5 
       (.I0(vdma_tpm_data_reg[16]),
        .O(\vdma_tpm_data[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[20]_i_2 
       (.I0(vdma_tpm_data_reg[22]),
        .O(\vdma_tpm_data[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[20]_i_3 
       (.I0(vdma_tpm_data_reg[21]),
        .O(\vdma_tpm_data[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[20]_i_4 
       (.I0(vdma_tpm_data_reg[20]),
        .O(\vdma_tpm_data[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[4]_i_2 
       (.I0(vdma_tpm_data_reg[7]),
        .O(\vdma_tpm_data[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[4]_i_3 
       (.I0(vdma_tpm_data_reg[6]),
        .O(\vdma_tpm_data[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[4]_i_4 
       (.I0(vdma_tpm_data_reg[5]),
        .O(\vdma_tpm_data[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[4]_i_5 
       (.I0(vdma_tpm_data_reg[4]),
        .O(\vdma_tpm_data[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[8]_i_2 
       (.I0(vdma_tpm_data_reg[11]),
        .O(\vdma_tpm_data[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[8]_i_3 
       (.I0(vdma_tpm_data_reg[10]),
        .O(\vdma_tpm_data[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[8]_i_4 
       (.I0(vdma_tpm_data_reg[9]),
        .O(\vdma_tpm_data[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vdma_tpm_data[8]_i_5 
       (.I0(vdma_tpm_data_reg[8]),
        .O(\vdma_tpm_data[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[0]_i_2_n_7 ),
        .Q(vdma_tpm_data_reg[0]),
        .R(clear));
  CARRY4 \vdma_tpm_data_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\vdma_tpm_data_reg[0]_i_2_n_0 ,\vdma_tpm_data_reg[0]_i_2_n_1 ,\vdma_tpm_data_reg[0]_i_2_n_2 ,\vdma_tpm_data_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vdma_tpm_data_reg[0]_i_2_n_4 ,\vdma_tpm_data_reg[0]_i_2_n_5 ,\vdma_tpm_data_reg[0]_i_2_n_6 ,\vdma_tpm_data_reg[0]_i_2_n_7 }),
        .S({\vdma_tpm_data[0]_i_3_n_0 ,\vdma_tpm_data[0]_i_4_n_0 ,\vdma_tpm_data[0]_i_5_n_0 ,\vdma_tpm_data[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[10] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[8]_i_1_n_5 ),
        .Q(vdma_tpm_data_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[11] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[8]_i_1_n_4 ),
        .Q(vdma_tpm_data_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[12] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[12]_i_1_n_7 ),
        .Q(vdma_tpm_data_reg[12]),
        .R(clear));
  CARRY4 \vdma_tpm_data_reg[12]_i_1 
       (.CI(\vdma_tpm_data_reg[8]_i_1_n_0 ),
        .CO({\vdma_tpm_data_reg[12]_i_1_n_0 ,\vdma_tpm_data_reg[12]_i_1_n_1 ,\vdma_tpm_data_reg[12]_i_1_n_2 ,\vdma_tpm_data_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vdma_tpm_data_reg[12]_i_1_n_4 ,\vdma_tpm_data_reg[12]_i_1_n_5 ,\vdma_tpm_data_reg[12]_i_1_n_6 ,\vdma_tpm_data_reg[12]_i_1_n_7 }),
        .S({\vdma_tpm_data[12]_i_2_n_0 ,\vdma_tpm_data[12]_i_3_n_0 ,\vdma_tpm_data[12]_i_4_n_0 ,\vdma_tpm_data[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[13] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[12]_i_1_n_6 ),
        .Q(vdma_tpm_data_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[14] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[12]_i_1_n_5 ),
        .Q(vdma_tpm_data_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[15] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[12]_i_1_n_4 ),
        .Q(vdma_tpm_data_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[16] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[16]_i_1_n_7 ),
        .Q(vdma_tpm_data_reg[16]),
        .R(clear));
  CARRY4 \vdma_tpm_data_reg[16]_i_1 
       (.CI(\vdma_tpm_data_reg[12]_i_1_n_0 ),
        .CO({\vdma_tpm_data_reg[16]_i_1_n_0 ,\vdma_tpm_data_reg[16]_i_1_n_1 ,\vdma_tpm_data_reg[16]_i_1_n_2 ,\vdma_tpm_data_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vdma_tpm_data_reg[16]_i_1_n_4 ,\vdma_tpm_data_reg[16]_i_1_n_5 ,\vdma_tpm_data_reg[16]_i_1_n_6 ,\vdma_tpm_data_reg[16]_i_1_n_7 }),
        .S({\vdma_tpm_data[16]_i_2_n_0 ,\vdma_tpm_data[16]_i_3_n_0 ,\vdma_tpm_data[16]_i_4_n_0 ,\vdma_tpm_data[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[17] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[16]_i_1_n_6 ),
        .Q(vdma_tpm_data_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[18] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[16]_i_1_n_5 ),
        .Q(vdma_tpm_data_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[19] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[16]_i_1_n_4 ),
        .Q(vdma_tpm_data_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[0]_i_2_n_6 ),
        .Q(vdma_tpm_data_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[20] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[20]_i_1_n_7 ),
        .Q(vdma_tpm_data_reg[20]),
        .R(clear));
  CARRY4 \vdma_tpm_data_reg[20]_i_1 
       (.CI(\vdma_tpm_data_reg[16]_i_1_n_0 ),
        .CO({\NLW_vdma_tpm_data_reg[20]_i_1_CO_UNCONNECTED [3:2],\vdma_tpm_data_reg[20]_i_1_n_2 ,\vdma_tpm_data_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_vdma_tpm_data_reg[20]_i_1_O_UNCONNECTED [3],\vdma_tpm_data_reg[20]_i_1_n_5 ,\vdma_tpm_data_reg[20]_i_1_n_6 ,\vdma_tpm_data_reg[20]_i_1_n_7 }),
        .S({1'b0,\vdma_tpm_data[20]_i_2_n_0 ,\vdma_tpm_data[20]_i_3_n_0 ,\vdma_tpm_data[20]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[21] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[20]_i_1_n_6 ),
        .Q(vdma_tpm_data_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[22] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[20]_i_1_n_5 ),
        .Q(vdma_tpm_data_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[0]_i_2_n_5 ),
        .Q(vdma_tpm_data_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[0]_i_2_n_4 ),
        .Q(vdma_tpm_data_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[4]_i_1_n_7 ),
        .Q(vdma_tpm_data_reg[4]),
        .R(clear));
  CARRY4 \vdma_tpm_data_reg[4]_i_1 
       (.CI(\vdma_tpm_data_reg[0]_i_2_n_0 ),
        .CO({\vdma_tpm_data_reg[4]_i_1_n_0 ,\vdma_tpm_data_reg[4]_i_1_n_1 ,\vdma_tpm_data_reg[4]_i_1_n_2 ,\vdma_tpm_data_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vdma_tpm_data_reg[4]_i_1_n_4 ,\vdma_tpm_data_reg[4]_i_1_n_5 ,\vdma_tpm_data_reg[4]_i_1_n_6 ,\vdma_tpm_data_reg[4]_i_1_n_7 }),
        .S({\vdma_tpm_data[4]_i_2_n_0 ,\vdma_tpm_data[4]_i_3_n_0 ,\vdma_tpm_data[4]_i_4_n_0 ,\vdma_tpm_data[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[4]_i_1_n_6 ),
        .Q(vdma_tpm_data_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[4]_i_1_n_5 ),
        .Q(vdma_tpm_data_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[4]_i_1_n_4 ),
        .Q(vdma_tpm_data_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[8]_i_1_n_7 ),
        .Q(vdma_tpm_data_reg[8]),
        .R(clear));
  CARRY4 \vdma_tpm_data_reg[8]_i_1 
       (.CI(\vdma_tpm_data_reg[4]_i_1_n_0 ),
        .CO({\vdma_tpm_data_reg[8]_i_1_n_0 ,\vdma_tpm_data_reg[8]_i_1_n_1 ,\vdma_tpm_data_reg[8]_i_1_n_2 ,\vdma_tpm_data_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vdma_tpm_data_reg[8]_i_1_n_4 ,\vdma_tpm_data_reg[8]_i_1_n_5 ,\vdma_tpm_data_reg[8]_i_1_n_6 ,\vdma_tpm_data_reg[8]_i_1_n_7 }),
        .S({\vdma_tpm_data[8]_i_2_n_0 ,\vdma_tpm_data[8]_i_3_n_0 ,\vdma_tpm_data[8]_i_4_n_0 ,\vdma_tpm_data[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_tpm_data_reg[9] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(\vdma_tpm_data_reg[8]_i_1_n_6 ),
        .Q(vdma_tpm_data_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h0000002E)) 
    vdma_tpm_oos_i_1
       (.I0(vdma_tpm_oos_s),
        .I1(E),
        .I2(vdma_tpm_oos0),
        .I3(SR),
        .I4(m_axis_mm2s_fsync_ret),
        .O(vdma_tpm_oos_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_10
       (.I0(m_ram_reg[31]),
        .I1(vdma_tpm_data_reg[6]),
        .I2(m_ram_reg[30]),
        .I3(vdma_tpm_data_reg[5]),
        .I4(vdma_tpm_data_reg[7]),
        .I5(m_ram_reg[32]),
        .O(vdma_tpm_oos_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_11
       (.I0(m_ram_reg[28]),
        .I1(vdma_tpm_data_reg[3]),
        .I2(m_ram_reg[27]),
        .I3(vdma_tpm_data_reg[2]),
        .I4(vdma_tpm_data_reg[4]),
        .I5(m_ram_reg[29]),
        .O(vdma_tpm_oos_i_11_n_0));
  LUT5 #(
    .INIT(32'h82000082)) 
    vdma_tpm_oos_i_12
       (.I0(m_ram_reg[24]),
        .I1(m_ram_reg[25]),
        .I2(vdma_tpm_data_reg[0]),
        .I3(vdma_tpm_data_reg[1]),
        .I4(m_ram_reg[26]),
        .O(vdma_tpm_oos_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_14
       (.I0(m_ram_reg[22]),
        .I1(vdma_tpm_data_reg[21]),
        .I2(m_ram_reg[21]),
        .I3(vdma_tpm_data_reg[20]),
        .I4(vdma_tpm_data_reg[22]),
        .I5(m_ram_reg[23]),
        .O(vdma_tpm_oos_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_15
       (.I0(m_ram_reg[19]),
        .I1(vdma_tpm_data_reg[18]),
        .I2(m_ram_reg[18]),
        .I3(vdma_tpm_data_reg[17]),
        .I4(vdma_tpm_data_reg[19]),
        .I5(m_ram_reg[20]),
        .O(vdma_tpm_oos_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_16
       (.I0(m_ram_reg[16]),
        .I1(vdma_tpm_data_reg[15]),
        .I2(m_ram_reg[15]),
        .I3(vdma_tpm_data_reg[14]),
        .I4(vdma_tpm_data_reg[16]),
        .I5(m_ram_reg[17]),
        .O(vdma_tpm_oos_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_17
       (.I0(m_ram_reg[13]),
        .I1(vdma_tpm_data_reg[12]),
        .I2(m_ram_reg[12]),
        .I3(vdma_tpm_data_reg[11]),
        .I4(vdma_tpm_data_reg[13]),
        .I5(m_ram_reg[14]),
        .O(vdma_tpm_oos_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_18
       (.I0(m_ram_reg[10]),
        .I1(vdma_tpm_data_reg[9]),
        .I2(m_ram_reg[9]),
        .I3(vdma_tpm_data_reg[8]),
        .I4(vdma_tpm_data_reg[10]),
        .I5(m_ram_reg[11]),
        .O(vdma_tpm_oos_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_19
       (.I0(m_ram_reg[7]),
        .I1(vdma_tpm_data_reg[6]),
        .I2(m_ram_reg[6]),
        .I3(vdma_tpm_data_reg[5]),
        .I4(vdma_tpm_data_reg[7]),
        .I5(m_ram_reg[8]),
        .O(vdma_tpm_oos_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_20
       (.I0(m_ram_reg[4]),
        .I1(vdma_tpm_data_reg[3]),
        .I2(m_ram_reg[3]),
        .I3(vdma_tpm_data_reg[2]),
        .I4(vdma_tpm_data_reg[4]),
        .I5(m_ram_reg[5]),
        .O(vdma_tpm_oos_i_20_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    vdma_tpm_oos_i_21
       (.I0(m_ram_reg[0]),
        .I1(m_ram_reg[1]),
        .I2(vdma_tpm_data_reg[0]),
        .I3(vdma_tpm_data_reg[1]),
        .I4(m_ram_reg[2]),
        .O(vdma_tpm_oos_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_4
       (.I0(m_ram_reg[46]),
        .I1(vdma_tpm_data_reg[21]),
        .I2(m_ram_reg[45]),
        .I3(vdma_tpm_data_reg[20]),
        .I4(vdma_tpm_data_reg[22]),
        .I5(m_ram_reg[47]),
        .O(vdma_tpm_oos_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_5
       (.I0(m_ram_reg[43]),
        .I1(vdma_tpm_data_reg[18]),
        .I2(m_ram_reg[42]),
        .I3(vdma_tpm_data_reg[17]),
        .I4(vdma_tpm_data_reg[19]),
        .I5(m_ram_reg[44]),
        .O(vdma_tpm_oos_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_6
       (.I0(m_ram_reg[40]),
        .I1(vdma_tpm_data_reg[15]),
        .I2(m_ram_reg[39]),
        .I3(vdma_tpm_data_reg[14]),
        .I4(vdma_tpm_data_reg[16]),
        .I5(m_ram_reg[41]),
        .O(vdma_tpm_oos_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_7
       (.I0(m_ram_reg[37]),
        .I1(vdma_tpm_data_reg[12]),
        .I2(m_ram_reg[36]),
        .I3(vdma_tpm_data_reg[11]),
        .I4(vdma_tpm_data_reg[13]),
        .I5(m_ram_reg[38]),
        .O(vdma_tpm_oos_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    vdma_tpm_oos_i_9
       (.I0(m_ram_reg[34]),
        .I1(vdma_tpm_data_reg[9]),
        .I2(m_ram_reg[33]),
        .I3(vdma_tpm_data_reg[8]),
        .I4(vdma_tpm_data_reg[10]),
        .I5(m_ram_reg[35]),
        .O(vdma_tpm_oos_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_tpm_oos_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_tpm_oos_i_1_n_0),
        .Q(vdma_tpm_oos_s),
        .R(1'b0));
  CARRY4 vdma_tpm_oos_reg_i_13
       (.CI(1'b0),
        .CO({vdma_tpm_oos_reg_i_13_n_0,vdma_tpm_oos_reg_i_13_n_1,vdma_tpm_oos_reg_i_13_n_2,vdma_tpm_oos_reg_i_13_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vdma_tpm_oos_reg_i_13_O_UNCONNECTED[3:0]),
        .S({vdma_tpm_oos_i_18_n_0,vdma_tpm_oos_i_19_n_0,vdma_tpm_oos_i_20_n_0,vdma_tpm_oos_i_21_n_0}));
  CARRY4 vdma_tpm_oos_reg_i_2
       (.CI(vdma_tpm_oos_reg_i_3_n_0),
        .CO({vdma_tpm_oos0,vdma_tpm_oos_reg_i_2_n_1,vdma_tpm_oos_reg_i_2_n_2,vdma_tpm_oos_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vdma_tpm_oos_reg_i_2_O_UNCONNECTED[3:0]),
        .S({vdma_tpm_oos_i_4_n_0,vdma_tpm_oos_i_5_n_0,vdma_tpm_oos_i_6_n_0,vdma_tpm_oos_i_7_n_0}));
  CARRY4 vdma_tpm_oos_reg_i_3
       (.CI(vdma_tpm_oos_reg_i_8_n_0),
        .CO({vdma_tpm_oos_reg_i_3_n_0,vdma_tpm_oos_reg_i_3_n_1,vdma_tpm_oos_reg_i_3_n_2,vdma_tpm_oos_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vdma_tpm_oos_reg_i_3_O_UNCONNECTED[3:0]),
        .S({vdma_tpm_oos_i_9_n_0,vdma_tpm_oos_i_10_n_0,vdma_tpm_oos_i_11_n_0,vdma_tpm_oos_i_12_n_0}));
  CARRY4 vdma_tpm_oos_reg_i_8
       (.CI(vdma_tpm_oos_reg_i_13_n_0),
        .CO({vdma_tpm_oos_reg_i_8_n_0,vdma_tpm_oos_reg_i_8_n_1,vdma_tpm_oos_reg_i_8_n_2,vdma_tpm_oos_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vdma_tpm_oos_reg_i_8_O_UNCONNECTED[3:0]),
        .S({vdma_tpm_oos_i_14_n_0,vdma_tpm_oos_i_15_n_0,vdma_tpm_oos_i_16_n_0,vdma_tpm_oos_i_17_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    vdma_unf_i_1
       (.I0(vdma_almost_empty),
        .I1(vdma_ready_i_4_n_0),
        .I2(vdma_addr_diff[3]),
        .I3(vdma_addr_diff[1]),
        .I4(vdma_addr_diff[2]),
        .O(vdma_unf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_unf_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_unf_i_1_n_0),
        .Q(vdma_unf_s),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \vdma_waddr[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vdma_waddr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vdma_waddr[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vdma_waddr[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vdma_waddr[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vdma_waddr[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \vdma_waddr[6]_i_1 
       (.I0(\vdma_waddr[8]_i_2_n_0 ),
        .I1(Q[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vdma_waddr[7]_i_1 
       (.I0(\vdma_waddr[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vdma_waddr[8]_i_1 
       (.I0(Q[6]),
        .I1(\vdma_waddr[8]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vdma_waddr[8]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\vdma_waddr[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_waddr_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(E),
        .D(p_0_in[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[0] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[0]),
        .Q(m_ram_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[10] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[10]),
        .Q(m_ram_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[11] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[11]),
        .Q(m_ram_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[12] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[12]),
        .Q(m_ram_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[13] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[13]),
        .Q(m_ram_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[14] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[14]),
        .Q(m_ram_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[15] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[15]),
        .Q(m_ram_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[16] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[16]),
        .Q(m_ram_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[17] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[17]),
        .Q(m_ram_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[18] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[18]),
        .Q(m_ram_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[19] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[19]),
        .Q(m_ram_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[1] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[1]),
        .Q(m_ram_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[20] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[20]),
        .Q(m_ram_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[21] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[21]),
        .Q(m_ram_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[22] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[22]),
        .Q(m_ram_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[23] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[23]),
        .Q(m_ram_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[24] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[24]),
        .Q(m_ram_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[25] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[25]),
        .Q(m_ram_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[26] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[26]),
        .Q(m_ram_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[27] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[27]),
        .Q(m_ram_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[28] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[28]),
        .Q(m_ram_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[29] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[29]),
        .Q(m_ram_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[2] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[2]),
        .Q(m_ram_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[30] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[30]),
        .Q(m_ram_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[31] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[31]),
        .Q(m_ram_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[32] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[32]),
        .Q(m_ram_reg[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[33] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[33]),
        .Q(m_ram_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[34] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[34]),
        .Q(m_ram_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[35] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[35]),
        .Q(m_ram_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[36] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[36]),
        .Q(m_ram_reg[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[37] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[37]),
        .Q(m_ram_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[38] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[38]),
        .Q(m_ram_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[39] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[39]),
        .Q(m_ram_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[3] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[3]),
        .Q(m_ram_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[40] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[40]),
        .Q(m_ram_reg[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[41] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[41]),
        .Q(m_ram_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[42] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[42]),
        .Q(m_ram_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[43] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[43]),
        .Q(m_ram_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[44] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[44]),
        .Q(m_ram_reg[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[45] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[45]),
        .Q(m_ram_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[46] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[46]),
        .Q(m_ram_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[47] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[47]),
        .Q(m_ram_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[4] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[4]),
        .Q(m_ram_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[5] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[5]),
        .Q(m_ram_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[6] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[6]),
        .Q(m_ram_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[7] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[7]),
        .Q(m_ram_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[8] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[8]),
        .Q(m_ram_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vdma_wdata_reg[9] 
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(m_axis_mm2s_tdata[9]),
        .Q(m_ram_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    vdma_wr_i_1
       (.I0(m_axis_mm2s_tvalid),
        .I1(m_axis_mm2s_tready),
        .O(vdma_wr0));
  FDRE #(
    .INIT(1'b0)) 
    vdma_wr_reg
       (.C(m_axis_mm2s_clk),
        .CE(1'b1),
        .D(vdma_wr0),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "up_axi" *) 
module system_axi_hdmi_core_0_up_axi
   (s_axi_rvalid,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    \up_rdata_reg[23] ,
    \up_rdata_reg[0] ,
    \up_rdata_reg[0]_0 ,
    \up_rdata_reg[0]_1 ,
    \up_rdata_reg[0]_2 ,
    \up_rdata_reg[5] ,
    \up_rdata_reg[16] ,
    \up_rdata_reg[0]_3 ,
    \up_srcsel_reg[1] ,
    \up_ve_max_reg[15] ,
    \up_srcsel_reg[0] ,
    \up_vs_width_reg[15] ,
    \up_hs_width_reg[15] ,
    \up_const_rgb_reg[23] ,
    \up_vf_width_reg[15] ,
    \up_hl_width_reg[15] ,
    E,
    \up_he_min_reg[15] ,
    \up_scratch_reg[31] ,
    up_wreq_s,
    up_rreq_s,
    \up_rdata_reg[24] ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[26] ,
    \up_rdata_reg[27] ,
    \up_rdata_reg[28] ,
    \up_rdata_reg[29] ,
    \up_rdata_reg[30] ,
    \up_rdata_reg[31] ,
    \up_rdata_reg[24]_0 ,
    up_resetn_reg,
    up_vdma_unf_reg,
    up_vdma_ovf_reg,
    up_vdma_tpm_oos_reg,
    up_hdmi_tpm_oos_reg,
    \up_axi_rdata_reg[0]_0 ,
    up_full_range_reg,
    up_csc_bypass_reg,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_aresetn_0,
    s_axi_aresetn_1,
    s_axi_rready,
    Q,
    D,
    \up_vs_width_reg[1] ,
    \up_d_count_reg[2] ,
    \up_d_count_reg[3] ,
    \up_d_count_reg[4] ,
    \up_d_count_reg[7] ,
    \up_d_count_reg[8] ,
    \up_d_count_reg[9] ,
    \up_d_count_reg[10] ,
    \up_d_count_reg[11] ,
    \up_d_count_reg[12] ,
    \up_d_count_reg[13] ,
    \up_d_count_reg[14] ,
    \up_d_count_reg[15] ,
    \up_scratch_reg[23] ,
    \up_d_count_reg[16] ,
    \up_d_count_reg[17] ,
    \up_d_count_reg[18] ,
    \up_d_count_reg[19] ,
    \up_d_count_reg[20] ,
    \up_d_count_reg[21] ,
    \up_d_count_reg[22] ,
    \up_d_count_reg[23] ,
    up_resetn,
    \up_vf_active_reg[7] ,
    \up_hl_active_reg[7] ,
    s_axi_arvalid,
    \up_rdata_reg[31]_0 ,
    up_rack_s,
    \up_srcsel_reg[0]_0 ,
    \up_data_status_reg[1] ,
    p_8_in,
    p_7_in,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    up_wack_s,
    up_vdma_unf_s,
    up_vdma_ovf_s,
    \up_data_status_reg[0] ,
    \up_data_status_reg[0]_0 ,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_aresetn_2,
    s_axi_aresetn_3,
    s_axi_araddr);
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output [23:0]\up_rdata_reg[23] ;
  output \up_rdata_reg[0] ;
  output \up_rdata_reg[0]_0 ;
  output [2:0]\up_rdata_reg[0]_1 ;
  output \up_rdata_reg[0]_2 ;
  output \up_rdata_reg[5] ;
  output \up_rdata_reg[16] ;
  output \up_rdata_reg[0]_3 ;
  output \up_srcsel_reg[1] ;
  output [31:0]\up_ve_max_reg[15] ;
  output \up_srcsel_reg[0] ;
  output [0:0]\up_vs_width_reg[15] ;
  output [0:0]\up_hs_width_reg[15] ;
  output [0:0]\up_const_rgb_reg[23] ;
  output [0:0]\up_vf_width_reg[15] ;
  output [0:0]\up_hl_width_reg[15] ;
  output [0:0]E;
  output [0:0]\up_he_min_reg[15] ;
  output [0:0]\up_scratch_reg[31] ;
  output up_wreq_s;
  output up_rreq_s;
  output \up_rdata_reg[24] ;
  output \up_rdata_reg[25] ;
  output \up_rdata_reg[26] ;
  output \up_rdata_reg[27] ;
  output \up_rdata_reg[28] ;
  output \up_rdata_reg[29] ;
  output \up_rdata_reg[30] ;
  output \up_rdata_reg[31] ;
  output \up_rdata_reg[24]_0 ;
  output up_resetn_reg;
  output up_vdma_unf_reg;
  output up_vdma_ovf_reg;
  output up_vdma_tpm_oos_reg;
  output up_hdmi_tpm_oos_reg;
  output \up_axi_rdata_reg[0]_0 ;
  output up_full_range_reg;
  output up_csc_bypass_reg;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_aresetn_0;
  input s_axi_aresetn_1;
  input s_axi_rready;
  input [11:0]Q;
  input [117:0]D;
  input \up_vs_width_reg[1] ;
  input \up_d_count_reg[2] ;
  input \up_d_count_reg[3] ;
  input \up_d_count_reg[4] ;
  input \up_d_count_reg[7] ;
  input \up_d_count_reg[8] ;
  input \up_d_count_reg[9] ;
  input \up_d_count_reg[10] ;
  input \up_d_count_reg[11] ;
  input \up_d_count_reg[12] ;
  input \up_d_count_reg[13] ;
  input \up_d_count_reg[14] ;
  input \up_d_count_reg[15] ;
  input [23:0]\up_scratch_reg[23] ;
  input \up_d_count_reg[16] ;
  input \up_d_count_reg[17] ;
  input \up_d_count_reg[18] ;
  input \up_d_count_reg[19] ;
  input \up_d_count_reg[20] ;
  input \up_d_count_reg[21] ;
  input \up_d_count_reg[22] ;
  input \up_d_count_reg[23] ;
  input up_resetn;
  input [7:0]\up_vf_active_reg[7] ;
  input [7:0]\up_hl_active_reg[7] ;
  input s_axi_arvalid;
  input [31:0]\up_rdata_reg[31]_0 ;
  input up_rack_s;
  input \up_srcsel_reg[0]_0 ;
  input \up_data_status_reg[1] ;
  input [1:0]p_8_in;
  input [1:0]p_7_in;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input up_wack_s;
  input up_vdma_unf_s;
  input up_vdma_ovf_s;
  input \up_data_status_reg[0] ;
  input \up_data_status_reg[0]_0 ;
  input s_axi_aresetn;
  input [13:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn_2;
  input s_axi_aresetn_3;
  input [13:0]s_axi_araddr;

  wire [117:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire p_0_in;
  wire [31:0]p_0_in__0;
  wire p_1_in;
  wire p_5_in;
  wire [1:0]p_7_in;
  wire [1:0]p_8_in;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire s_axi_aresetn_3;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_axi_arready_i_1_n_0;
  wire up_axi_awready_i_1_n_0;
  wire up_axi_bvalid_i_1_n_0;
  wire \up_axi_rdata[0]_i_1_n_0 ;
  wire \up_axi_rdata[10]_i_1_n_0 ;
  wire \up_axi_rdata[11]_i_1_n_0 ;
  wire \up_axi_rdata[12]_i_1_n_0 ;
  wire \up_axi_rdata[13]_i_1_n_0 ;
  wire \up_axi_rdata[14]_i_1_n_0 ;
  wire \up_axi_rdata[15]_i_1_n_0 ;
  wire \up_axi_rdata[16]_i_1_n_0 ;
  wire \up_axi_rdata[17]_i_1_n_0 ;
  wire \up_axi_rdata[18]_i_1_n_0 ;
  wire \up_axi_rdata[19]_i_1_n_0 ;
  wire \up_axi_rdata[1]_i_1_n_0 ;
  wire \up_axi_rdata[20]_i_1_n_0 ;
  wire \up_axi_rdata[21]_i_1_n_0 ;
  wire \up_axi_rdata[22]_i_1_n_0 ;
  wire \up_axi_rdata[23]_i_1_n_0 ;
  wire \up_axi_rdata[24]_i_1_n_0 ;
  wire \up_axi_rdata[25]_i_1_n_0 ;
  wire \up_axi_rdata[26]_i_1_n_0 ;
  wire \up_axi_rdata[27]_i_1_n_0 ;
  wire \up_axi_rdata[28]_i_1_n_0 ;
  wire \up_axi_rdata[29]_i_1_n_0 ;
  wire \up_axi_rdata[2]_i_1_n_0 ;
  wire \up_axi_rdata[30]_i_1_n_0 ;
  wire \up_axi_rdata[31]_i_1_n_0 ;
  wire \up_axi_rdata[3]_i_1_n_0 ;
  wire \up_axi_rdata[4]_i_1_n_0 ;
  wire \up_axi_rdata[5]_i_1_n_0 ;
  wire \up_axi_rdata[6]_i_1_n_0 ;
  wire \up_axi_rdata[7]_i_1_n_0 ;
  wire \up_axi_rdata[8]_i_1_n_0 ;
  wire \up_axi_rdata[9]_i_1_n_0 ;
  wire \up_axi_rdata_reg[0]_0 ;
  wire up_axi_rvalid_i_1_n_0;
  wire up_axi_rvalid_i_2_n_0;
  wire up_axi_rvalid_i_3_n_0;
  wire up_axi_wready_i_1_n_0;
  wire [0:0]\up_const_rgb_reg[23] ;
  wire up_csc_bypass_reg;
  wire \up_d_count_reg[10] ;
  wire \up_d_count_reg[11] ;
  wire \up_d_count_reg[12] ;
  wire \up_d_count_reg[13] ;
  wire \up_d_count_reg[14] ;
  wire \up_d_count_reg[15] ;
  wire \up_d_count_reg[16] ;
  wire \up_d_count_reg[17] ;
  wire \up_d_count_reg[18] ;
  wire \up_d_count_reg[19] ;
  wire \up_d_count_reg[20] ;
  wire \up_d_count_reg[21] ;
  wire \up_d_count_reg[22] ;
  wire \up_d_count_reg[23] ;
  wire \up_d_count_reg[2] ;
  wire \up_d_count_reg[3] ;
  wire \up_d_count_reg[4] ;
  wire \up_d_count_reg[7] ;
  wire \up_d_count_reg[8] ;
  wire \up_d_count_reg[9] ;
  wire \up_data_status_reg[0] ;
  wire \up_data_status_reg[0]_0 ;
  wire \up_data_status_reg[1] ;
  wire up_full_range_reg;
  wire up_hdmi_tpm_oos_reg;
  wire [0:0]\up_he_min_reg[15] ;
  wire [7:0]\up_hl_active_reg[7] ;
  wire [0:0]\up_hl_width_reg[15] ;
  wire [0:0]\up_hs_width_reg[15] ;
  wire up_rack_int;
  wire up_rack_int_d;
  wire up_rack_int_i_1_n_0;
  wire up_rack_s;
  wire [13:2]up_raddr_s;
  wire \up_rcount[0]_i_1_n_0 ;
  wire \up_rcount[1]_i_1_n_0 ;
  wire \up_rcount[2]_i_1_n_0 ;
  wire \up_rcount[3]_i_1_n_0 ;
  wire \up_rcount[3]_i_2_n_0 ;
  wire \up_rcount_reg_n_0_[0] ;
  wire \up_rcount_reg_n_0_[1] ;
  wire \up_rcount_reg_n_0_[2] ;
  wire \up_rdata[0]_i_10_n_0 ;
  wire \up_rdata[0]_i_11_n_0 ;
  wire \up_rdata[0]_i_2_n_0 ;
  wire \up_rdata[0]_i_3_n_0 ;
  wire \up_rdata[0]_i_4_n_0 ;
  wire \up_rdata[0]_i_5_n_0 ;
  wire \up_rdata[0]_i_6_n_0 ;
  wire \up_rdata[0]_i_7_n_0 ;
  wire \up_rdata[0]_i_8_n_0 ;
  wire \up_rdata[0]_i_9_n_0 ;
  wire \up_rdata[10]_i_2_n_0 ;
  wire \up_rdata[10]_i_4_n_0 ;
  wire \up_rdata[10]_i_5_n_0 ;
  wire \up_rdata[11]_i_2_n_0 ;
  wire \up_rdata[11]_i_4_n_0 ;
  wire \up_rdata[11]_i_5_n_0 ;
  wire \up_rdata[12]_i_2_n_0 ;
  wire \up_rdata[12]_i_4_n_0 ;
  wire \up_rdata[12]_i_5_n_0 ;
  wire \up_rdata[13]_i_2_n_0 ;
  wire \up_rdata[13]_i_4_n_0 ;
  wire \up_rdata[13]_i_5_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[14]_i_4_n_0 ;
  wire \up_rdata[14]_i_5_n_0 ;
  wire \up_rdata[15]_i_10_n_0 ;
  wire \up_rdata[15]_i_11_n_0 ;
  wire \up_rdata[15]_i_2_n_0 ;
  wire \up_rdata[15]_i_4_n_0 ;
  wire \up_rdata[15]_i_5_n_0 ;
  wire \up_rdata[15]_i_6_n_0 ;
  wire \up_rdata[15]_i_8_n_0 ;
  wire \up_rdata[15]_i_9_n_0 ;
  wire \up_rdata[16]_i_2_n_0 ;
  wire \up_rdata[16]_i_4_n_0 ;
  wire \up_rdata[17]_i_2_n_0 ;
  wire \up_rdata[17]_i_4_n_0 ;
  wire \up_rdata[18]_i_2_n_0 ;
  wire \up_rdata[18]_i_4_n_0 ;
  wire \up_rdata[18]_i_5_n_0 ;
  wire \up_rdata[18]_i_6_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[19]_i_4_n_0 ;
  wire \up_rdata[1]_i_10_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[1]_i_4_n_0 ;
  wire \up_rdata[1]_i_5_n_0 ;
  wire \up_rdata[1]_i_6_n_0 ;
  wire \up_rdata[1]_i_7_n_0 ;
  wire \up_rdata[1]_i_8_n_0 ;
  wire \up_rdata[1]_i_9_n_0 ;
  wire \up_rdata[20]_i_2_n_0 ;
  wire \up_rdata[20]_i_4_n_0 ;
  wire \up_rdata[21]_i_2_n_0 ;
  wire \up_rdata[21]_i_4_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[22]_i_4_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire \up_rdata[23]_i_4_n_0 ;
  wire \up_rdata[23]_i_6_n_0 ;
  wire \up_rdata[23]_i_7_n_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[2]_i_4_n_0 ;
  wire \up_rdata[2]_i_5_n_0 ;
  wire \up_rdata[31]_i_7_n_0 ;
  wire \up_rdata[31]_i_9_n_0 ;
  wire \up_rdata[3]_i_2_n_0 ;
  wire \up_rdata[3]_i_4_n_0 ;
  wire \up_rdata[3]_i_5_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[4]_i_4_n_0 ;
  wire \up_rdata[4]_i_5_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[5]_i_3_n_0 ;
  wire \up_rdata[5]_i_4_n_0 ;
  wire \up_rdata[5]_i_5_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[6]_i_4_n_0 ;
  wire \up_rdata[6]_i_5_n_0 ;
  wire \up_rdata[6]_i_6_n_0 ;
  wire \up_rdata[6]_i_7_n_0 ;
  wire \up_rdata[6]_i_8_n_0 ;
  wire \up_rdata[6]_i_9_n_0 ;
  wire \up_rdata[7]_i_2_n_0 ;
  wire \up_rdata[7]_i_4_n_0 ;
  wire \up_rdata[7]_i_5_n_0 ;
  wire \up_rdata[8]_i_2_n_0 ;
  wire \up_rdata[8]_i_4_n_0 ;
  wire \up_rdata[8]_i_5_n_0 ;
  wire \up_rdata[9]_i_2_n_0 ;
  wire \up_rdata[9]_i_4_n_0 ;
  wire \up_rdata[9]_i_5_n_0 ;
  wire [31:0]up_rdata_int;
  wire [31:0]up_rdata_int_d;
  wire \up_rdata_reg[0] ;
  wire \up_rdata_reg[0]_0 ;
  wire [2:0]\up_rdata_reg[0]_1 ;
  wire \up_rdata_reg[0]_2 ;
  wire \up_rdata_reg[0]_3 ;
  wire \up_rdata_reg[16] ;
  wire [23:0]\up_rdata_reg[23] ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[24]_0 ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[28] ;
  wire \up_rdata_reg[29] ;
  wire \up_rdata_reg[30] ;
  wire \up_rdata_reg[31] ;
  wire [31:0]\up_rdata_reg[31]_0 ;
  wire \up_rdata_reg[5] ;
  wire up_resetn;
  wire up_resetn_reg;
  wire up_rreq_i_1_n_0;
  wire up_rreq_s;
  wire up_rreq_s__0;
  wire up_rsel_i_1_n_0;
  wire up_rsel_reg_n_0;
  wire [23:0]\up_scratch_reg[23] ;
  wire [0:0]\up_scratch_reg[31] ;
  wire \up_srcsel_reg[0] ;
  wire \up_srcsel_reg[0]_0 ;
  wire \up_srcsel_reg[1] ;
  wire up_vdma_ovf_reg;
  wire up_vdma_ovf_s;
  wire up_vdma_tpm_oos_i_2_n_0;
  wire up_vdma_tpm_oos_reg;
  wire up_vdma_unf_i_2_n_0;
  wire up_vdma_unf_i_3_n_0;
  wire up_vdma_unf_reg;
  wire up_vdma_unf_s;
  wire [31:0]\up_ve_max_reg[15] ;
  wire \up_ve_min[15]_i_2_n_0 ;
  wire \up_ve_min[15]_i_3_n_0 ;
  wire \up_ve_min[15]_i_4_n_0 ;
  wire [7:0]\up_vf_active_reg[7] ;
  wire \up_vf_width[15]_i_2_n_0 ;
  wire [0:0]\up_vf_width_reg[15] ;
  wire \up_vs_width[15]_i_2_n_0 ;
  wire [0:0]\up_vs_width_reg[15] ;
  wire \up_vs_width_reg[1] ;
  wire up_wack_int;
  wire up_wack_int_i_1_n_0;
  wire up_wack_s;
  wire [13:0]up_waddr_s;
  wire [2:0]up_wcount;
  wire \up_wcount[0]_i_1_n_0 ;
  wire \up_wcount[1]_i_1_n_0 ;
  wire \up_wcount[2]_i_1_n_0 ;
  wire up_wreq_s;
  wire up_wreq_s__0;
  wire up_wsel;
  wire up_wsel_i_1_n_0;
  wire up_wsel_reg_n_0;

  LUT2 #(
    .INIT(4'h4)) 
    up_axi_arready_i_1
       (.I0(s_axi_arready),
        .I1(up_rack_int),
        .O(up_axi_arready_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_axi_arready_i_1_n_0),
        .Q(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_awready_i_1
       (.I0(s_axi_awready),
        .I1(up_wack_int),
        .O(up_axi_awready_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_axi_awready_i_1_n_0),
        .Q(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h72)) 
    up_axi_bvalid_i_1
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(up_wack_int),
        .O(up_axi_bvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[0]_i_1 
       (.I0(up_rdata_int_d[0]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[10]_i_1 
       (.I0(up_rdata_int_d[10]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[11]_i_1 
       (.I0(up_rdata_int_d[11]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[12]_i_1 
       (.I0(up_rdata_int_d[12]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[13]_i_1 
       (.I0(up_rdata_int_d[13]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[14]_i_1 
       (.I0(up_rdata_int_d[14]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[15]_i_1 
       (.I0(up_rdata_int_d[15]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[16]_i_1 
       (.I0(up_rdata_int_d[16]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[17]_i_1 
       (.I0(up_rdata_int_d[17]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[18]_i_1 
       (.I0(up_rdata_int_d[18]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[19]_i_1 
       (.I0(up_rdata_int_d[19]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[1]_i_1 
       (.I0(up_rdata_int_d[1]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[20]_i_1 
       (.I0(up_rdata_int_d[20]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[21]_i_1 
       (.I0(up_rdata_int_d[21]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[22]_i_1 
       (.I0(up_rdata_int_d[22]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[23]_i_1 
       (.I0(up_rdata_int_d[23]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[24]_i_1 
       (.I0(up_rdata_int_d[24]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[25]_i_1 
       (.I0(up_rdata_int_d[25]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[26]_i_1 
       (.I0(up_rdata_int_d[26]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[27]_i_1 
       (.I0(up_rdata_int_d[27]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[28]_i_1 
       (.I0(up_rdata_int_d[28]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[29]_i_1 
       (.I0(up_rdata_int_d[29]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[2]_i_1 
       (.I0(up_rdata_int_d[2]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[30]_i_1 
       (.I0(up_rdata_int_d[30]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[31]_i_1 
       (.I0(up_rdata_int_d[31]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_axi_rdata[31]_i_2 
       (.I0(s_axi_aresetn),
        .O(\up_axi_rdata_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[3]_i_1 
       (.I0(up_rdata_int_d[3]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[4]_i_1 
       (.I0(up_rdata_int_d[4]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[5]_i_1 
       (.I0(up_rdata_int_d[5]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[6]_i_1 
       (.I0(up_rdata_int_d[6]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[7]_i_1 
       (.I0(up_rdata_int_d[7]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[8]_i_1 
       (.I0(up_rdata_int_d[8]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \up_axi_rdata[9]_i_1 
       (.I0(up_rdata_int_d[9]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(\up_axi_rdata[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[31]_i_1_n_0 ),
        .Q(s_axi_rdata[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(\up_axi_rdata_reg[0]_0 ),
        .D(\up_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]));
  LUT3 #(
    .INIT(8'hF8)) 
    up_axi_rvalid_i_1
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(up_rack_int_d),
        .O(up_axi_rvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    up_axi_rvalid_i_2
       (.I0(up_rack_int_d),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .O(up_axi_rvalid_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_rvalid_i_3
       (.I0(s_axi_aresetn),
        .O(up_axi_rvalid_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(up_axi_rvalid_i_1_n_0),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_axi_rvalid_i_2_n_0),
        .Q(s_axi_rvalid));
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_wready_i_1
       (.I0(s_axi_wready),
        .I1(up_wack_int),
        .O(up_axi_wready_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_axi_wready_i_1_n_0),
        .Q(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \up_const_rgb[23]_i_1 
       (.I0(up_waddr_s[1]),
        .I1(up_waddr_s[4]),
        .I2(up_waddr_s[8]),
        .I3(\up_vs_width[15]_i_2_n_0 ),
        .O(\up_const_rgb_reg[23] ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    up_csc_bypass_i_1
       (.I0(\up_ve_max_reg[15] [0]),
        .I1(\up_vs_width[15]_i_2_n_0 ),
        .I2(up_waddr_s[8]),
        .I3(up_waddr_s[4]),
        .I4(up_waddr_s[1]),
        .I5(D[116]),
        .O(up_csc_bypass_reg));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    up_full_range_i_1
       (.I0(\up_ve_max_reg[15] [1]),
        .I1(\up_vs_width[15]_i_2_n_0 ),
        .I2(up_waddr_s[8]),
        .I3(up_waddr_s[4]),
        .I4(up_waddr_s[1]),
        .I5(D[117]),
        .O(up_full_range_reg));
  LUT4 #(
    .INIT(16'hF7F0)) 
    up_hdmi_tpm_oos_i_1
       (.I0(\up_ve_max_reg[15] [1]),
        .I1(up_vdma_tpm_oos_i_2_n_0),
        .I2(\up_data_status_reg[0]_0 ),
        .I3(p_7_in[1]),
        .O(up_hdmi_tpm_oos_reg));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \up_he_min[15]_i_1 
       (.I0(up_waddr_s[4]),
        .I1(up_waddr_s[8]),
        .I2(\up_ve_min[15]_i_2_n_0 ),
        .O(\up_he_min_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \up_hl_width[15]_i_1 
       (.I0(up_waddr_s[1]),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(\up_vf_width[15]_i_2_n_0 ),
        .O(\up_hl_width_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \up_hs_width[15]_i_1 
       (.I0(up_waddr_s[1]),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(\up_vs_width[15]_i_2_n_0 ),
        .O(\up_hs_width_reg[15] ));
  LUT3 #(
    .INIT(8'h10)) 
    up_rack_i_1
       (.I0(up_raddr_s[13]),
        .I1(up_raddr_s[12]),
        .I2(up_rreq_s__0),
        .O(up_rreq_s));
  FDCE #(
    .INIT(1'b0)) 
    up_rack_int_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_rack_int),
        .Q(up_rack_int_d));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    up_rack_int_i_1
       (.I0(up_rack_s),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(up_rack_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_rack_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_rack_int_i_1_n_0),
        .Q(up_rack_int));
  LUT1 #(
    .INIT(2'h1)) 
    \up_raddr[13]_i_1 
       (.I0(up_rsel_reg_n_0),
        .O(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[0]),
        .Q(\up_rdata_reg[0]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[10]),
        .Q(up_raddr_s[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[11]),
        .Q(up_raddr_s[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[12]),
        .Q(up_raddr_s[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[13]),
        .Q(up_raddr_s[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[1]),
        .Q(\up_rdata_reg[0]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[2]),
        .Q(up_raddr_s[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[3]),
        .Q(up_raddr_s[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[4]),
        .Q(\up_rdata_reg[0]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[5]),
        .Q(up_raddr_s[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[6]),
        .Q(up_raddr_s[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[7]),
        .Q(up_raddr_s[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[8]),
        .Q(up_raddr_s[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_raddr_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_araddr[9]),
        .Q(up_raddr_s[9]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \up_rcount[0]_i_1 
       (.I0(up_rack_int),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[0] ),
        .O(\up_rcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \up_rcount[1]_i_1 
       (.I0(p_0_in),
        .I1(up_rack_int),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \up_rcount[2]_i_1 
       (.I0(\up_rcount_reg_n_0_[0] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(up_rack_int),
        .I3(p_0_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_rcount[3]_i_1 
       (.I0(up_rack_int),
        .I1(up_rreq_s__0),
        .I2(p_0_in),
        .O(\up_rcount[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \up_rcount[3]_i_2 
       (.I0(\up_rcount_reg_n_0_[0] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(up_rack_int),
        .O(\up_rcount[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_rcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[3]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\up_rcount[0]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \up_rcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[3]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\up_rcount[1]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \up_rcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[3]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\up_rcount[2]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \up_rcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[3]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\up_rcount[3]_i_2_n_0 ),
        .Q(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \up_rdata[0]_i_1 
       (.I0(\up_rdata[0]_i_2_n_0 ),
        .I1(\up_rdata[0]_i_3_n_0 ),
        .I2(\up_rdata[0]_i_4_n_0 ),
        .I3(\up_rdata[0]_i_5_n_0 ),
        .I4(\up_rdata[0]_i_6_n_0 ),
        .I5(\up_rdata[0]_i_7_n_0 ),
        .O(\up_rdata_reg[23] [0]));
  LUT6 #(
    .INIT(64'h3000200020002000)) 
    \up_rdata[0]_i_10 
       (.I0(\up_srcsel_reg[0]_0 ),
        .I1(up_raddr_s[3]),
        .I2(up_rreq_s),
        .I3(\up_rdata[6]_i_7_n_0 ),
        .I4(up_raddr_s[2]),
        .I5(\up_data_status_reg[1] ),
        .O(\up_rdata[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \up_rdata[0]_i_11 
       (.I0(p_8_in[0]),
        .I1(p_7_in[0]),
        .I2(up_raddr_s[8]),
        .I3(\up_rdata_reg[0]_1 [0]),
        .I4(\up_rdata_reg[0]_1 [1]),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \up_rdata[0]_i_2 
       (.I0(D[55]),
        .I1(D[39]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_1 [2]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \up_rdata[0]_i_3 
       (.I0(\up_rdata[0]_i_8_n_0 ),
        .I1(\up_rdata_reg[0] ),
        .I2(Q[0]),
        .I3(\up_rdata_reg[0]_0 ),
        .I4(D[110]),
        .I5(\up_rdata[0]_i_9_n_0 ),
        .O(\up_rdata[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[0]_i_4 
       (.I0(\up_rdata_reg[0]_3 ),
        .I1(D[24]),
        .O(\up_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF200220000000000)) 
    \up_rdata[0]_i_5 
       (.I0(\up_rdata[0]_i_10_n_0 ),
        .I1(up_raddr_s[8]),
        .I2(D[0]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC0A000A000000000)) 
    \up_rdata[0]_i_6 
       (.I0(D[95]),
        .I1(D[79]),
        .I2(\up_rdata[31]_i_7_n_0 ),
        .I3(\up_rdata_reg[0]_1 [0]),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata[15]_i_9_n_0 ),
        .O(\up_rdata[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h40CC4044)) 
    \up_rdata[0]_i_7 
       (.I0(\up_rdata_reg[0]_1 [2]),
        .I1(\up_rdata[6]_i_8_n_0 ),
        .I2(\up_scratch_reg[23] [0]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(up_resetn),
        .O(\up_rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \up_rdata[0]_i_8 
       (.I0(up_rreq_s),
        .I1(\up_rdata[6]_i_7_n_0 ),
        .I2(up_raddr_s[3]),
        .I3(up_raddr_s[2]),
        .I4(\up_rdata[0]_i_11_n_0 ),
        .O(\up_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \up_rdata[0]_i_9 
       (.I0(D[116]),
        .I1(\up_rdata[31]_i_9_n_0 ),
        .I2(up_raddr_s[2]),
        .I3(\up_rdata[6]_i_7_n_0 ),
        .I4(up_rreq_s),
        .I5(up_raddr_s[3]),
        .O(\up_rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[10]_i_1 
       (.I0(\up_rdata[10]_i_2_n_0 ),
        .I1(\up_d_count_reg[10] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[49]),
        .I4(\up_rdata[10]_i_4_n_0 ),
        .I5(\up_rdata[10]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [10]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[10]_i_2 
       (.I0(D[33]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[10]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[10]_i_4 
       (.I0(D[65]),
        .I1(\up_scratch_reg[23] [10]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[10]_i_5 
       (.I0(D[89]),
        .I1(D[104]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[11]_i_1 
       (.I0(\up_rdata[11]_i_2_n_0 ),
        .I1(\up_d_count_reg[11] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[50]),
        .I4(\up_rdata[11]_i_4_n_0 ),
        .I5(\up_rdata[11]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [11]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[11]_i_2 
       (.I0(D[34]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[11]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[11]_i_4 
       (.I0(D[66]),
        .I1(\up_scratch_reg[23] [11]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[11]_i_5 
       (.I0(D[90]),
        .I1(D[105]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[12]_i_2_n_0 ),
        .I1(\up_d_count_reg[12] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[51]),
        .I4(\up_rdata[12]_i_4_n_0 ),
        .I5(\up_rdata[12]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [12]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[12]_i_2 
       (.I0(D[35]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[12]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[12]_i_4 
       (.I0(D[67]),
        .I1(\up_scratch_reg[23] [12]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[12]_i_5 
       (.I0(D[91]),
        .I1(D[106]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[13]_i_1 
       (.I0(\up_rdata[13]_i_2_n_0 ),
        .I1(\up_d_count_reg[13] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[52]),
        .I4(\up_rdata[13]_i_4_n_0 ),
        .I5(\up_rdata[13]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [13]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[13]_i_2 
       (.I0(D[36]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[13]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[13]_i_4 
       (.I0(D[68]),
        .I1(\up_scratch_reg[23] [13]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[13]_i_5 
       (.I0(D[92]),
        .I1(D[107]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata[14]_i_2_n_0 ),
        .I1(\up_d_count_reg[14] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[53]),
        .I4(\up_rdata[14]_i_4_n_0 ),
        .I5(\up_rdata[14]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [14]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[14]_i_2 
       (.I0(D[37]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[14]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[14]_i_4 
       (.I0(D[69]),
        .I1(\up_scratch_reg[23] [14]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[14]_i_5 
       (.I0(D[93]),
        .I1(D[108]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[15]_i_2_n_0 ),
        .I1(\up_d_count_reg[15] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[54]),
        .I4(\up_rdata[15]_i_5_n_0 ),
        .I5(\up_rdata[15]_i_6_n_0 ),
        .O(\up_rdata_reg[23] [15]));
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[15]_i_10 
       (.I0(\up_rdata_reg[0]_1 [0]),
        .I1(up_raddr_s[8]),
        .O(\up_rdata[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[15]_i_11 
       (.I0(\up_rdata_reg[0]_1 [2]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[15]_i_2 
       (.I0(D[38]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[15]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \up_rdata[15]_i_4 
       (.I0(\up_rdata_reg[0]_1 [1]),
        .I1(\up_rdata_reg[0]_1 [2]),
        .I2(up_raddr_s[8]),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .I4(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[15]_i_5 
       (.I0(D[70]),
        .I1(\up_scratch_reg[23] [15]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[15]_i_6 
       (.I0(D[94]),
        .I1(D[109]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \up_rdata[15]_i_7 
       (.I0(up_raddr_s[3]),
        .I1(up_rreq_s),
        .I2(\up_rdata[6]_i_7_n_0 ),
        .I3(up_raddr_s[2]),
        .I4(\up_rdata[15]_i_10_n_0 ),
        .I5(\up_rdata[15]_i_11_n_0 ),
        .O(\up_rdata_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \up_rdata[15]_i_8 
       (.I0(up_raddr_s[2]),
        .I1(\up_rdata[6]_i_7_n_0 ),
        .I2(up_rreq_s),
        .I3(up_raddr_s[3]),
        .I4(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \up_rdata[15]_i_9 
       (.I0(\up_rdata_reg[0]_1 [1]),
        .I1(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[16]_i_1 
       (.I0(\up_rdata[16]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [16]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[16] ),
        .I4(\up_rdata[16]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [16]));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[16]_i_2 
       (.I0(\up_vf_active_reg[7] [0]),
        .I1(\up_hl_active_reg[7] [0]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[16]_i_4 
       (.I0(D[71]),
        .I1(D[16]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[17]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [17]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[17] ),
        .I4(\up_rdata[17]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [17]));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[17]_i_2 
       (.I0(\up_vf_active_reg[7] [1]),
        .I1(\up_hl_active_reg[7] [1]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[17]_i_4 
       (.I0(D[72]),
        .I1(D[17]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[18]_i_1 
       (.I0(\up_rdata[18]_i_2_n_0 ),
        .I1(\up_d_count_reg[18] ),
        .I2(\up_rdata[18]_i_4_n_0 ),
        .I3(D[73]),
        .I4(\up_rdata[18]_i_5_n_0 ),
        .I5(\up_rdata[18]_i_6_n_0 ),
        .O(\up_rdata_reg[23] [18]));
  LUT5 #(
    .INIT(32'hCA000000)) 
    \up_rdata[18]_i_2 
       (.I0(\up_vf_active_reg[7] [2]),
        .I1(D[18]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \up_rdata[18]_i_4 
       (.I0(\up_rdata_reg[0]_1 [1]),
        .I1(\up_rdata_reg[0]_1 [0]),
        .I2(\up_rdata[31]_i_7_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000D00)) 
    \up_rdata[18]_i_5 
       (.I0(\up_rdata_reg[0]_1 [1]),
        .I1(\up_scratch_reg[23] [18]),
        .I2(up_raddr_s[8]),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .I4(\up_rdata_reg[0]_1 [0]),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \up_rdata[18]_i_6 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_rdata_reg[0]_1 [0]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_1 [2]),
        .I4(\up_hl_active_reg[7] [2]),
        .O(\up_rdata[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [19]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[19] ),
        .I4(\up_rdata[19]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [19]));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[19]_i_2 
       (.I0(\up_vf_active_reg[7] [3]),
        .I1(\up_hl_active_reg[7] [3]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[19]_i_4 
       (.I0(D[74]),
        .I1(D[19]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \up_rdata[1]_i_1 
       (.I0(\up_rdata[1]_i_2_n_0 ),
        .I1(\up_vs_width_reg[1] ),
        .I2(\up_rdata[1]_i_4_n_0 ),
        .I3(\up_rdata[1]_i_5_n_0 ),
        .I4(\up_rdata[1]_i_6_n_0 ),
        .I5(\up_rdata[1]_i_7_n_0 ),
        .O(\up_rdata_reg[23] [1]));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \up_rdata[1]_i_10 
       (.I0(p_8_in[1]),
        .I1(p_7_in[1]),
        .I2(up_raddr_s[8]),
        .I3(\up_rdata_reg[0]_1 [0]),
        .I4(\up_rdata_reg[0]_1 [1]),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8800000000F00000)) 
    \up_rdata[1]_i_2 
       (.I0(D[1]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(\up_scratch_reg[23] [1]),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[15]_i_8_n_0 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A00C000)) 
    \up_rdata[1]_i_4 
       (.I0(D[40]),
        .I1(D[56]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \up_rdata[1]_i_5 
       (.I0(D[115]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \up_rdata[1]_i_6 
       (.I0(\up_rdata[1]_i_8_n_0 ),
        .I1(\up_rdata_reg[0]_0 ),
        .I2(D[111]),
        .I3(\up_rdata_reg[0] ),
        .I4(Q[1]),
        .I5(\up_rdata[1]_i_9_n_0 ),
        .O(\up_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000800C)) 
    \up_rdata[1]_i_7 
       (.I0(D[80]),
        .I1(\up_rdata[31]_i_7_n_0 ),
        .I2(\up_rdata_reg[0]_1 [0]),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata_reg[0]_1 [2]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \up_rdata[1]_i_8 
       (.I0(up_rreq_s),
        .I1(\up_rdata[6]_i_7_n_0 ),
        .I2(up_raddr_s[3]),
        .I3(up_raddr_s[2]),
        .I4(\up_rdata[1]_i_10_n_0 ),
        .O(\up_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \up_rdata[1]_i_9 
       (.I0(D[117]),
        .I1(\up_rdata[31]_i_9_n_0 ),
        .I2(up_raddr_s[2]),
        .I3(\up_rdata[6]_i_7_n_0 ),
        .I4(up_rreq_s),
        .I5(up_raddr_s[3]),
        .O(\up_rdata[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[20]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [20]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[20] ),
        .I4(\up_rdata[20]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [20]));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[20]_i_2 
       (.I0(\up_vf_active_reg[7] [4]),
        .I1(\up_hl_active_reg[7] [4]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[20]_i_4 
       (.I0(D[75]),
        .I1(D[20]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[21]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [21]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[21] ),
        .I4(\up_rdata[21]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [21]));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[21]_i_2 
       (.I0(\up_vf_active_reg[7] [5]),
        .I1(\up_hl_active_reg[7] [5]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[21]_i_4 
       (.I0(D[76]),
        .I1(D[21]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata[22]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [22]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[22] ),
        .I4(\up_rdata[22]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [22]));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[22]_i_2 
       (.I0(\up_vf_active_reg[7] [6]),
        .I1(\up_hl_active_reg[7] [6]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[22]_i_4 
       (.I0(D[77]),
        .I1(D[22]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[23]_i_2_n_0 ),
        .I1(\up_scratch_reg[23] [23]),
        .I2(\up_rdata_reg[16] ),
        .I3(\up_d_count_reg[23] ),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata_reg[23] [23]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \up_rdata[23]_i_2 
       (.I0(\up_vf_active_reg[7] [7]),
        .I1(\up_hl_active_reg[7] [7]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .O(\up_rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hC000A000)) 
    \up_rdata[23]_i_4 
       (.I0(D[78]),
        .I1(D[23]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \up_rdata[23]_i_5 
       (.I0(\up_rdata[23]_i_6_n_0 ),
        .I1(\up_rdata[23]_i_7_n_0 ),
        .I2(up_raddr_s[2]),
        .I3(\up_rdata[6]_i_7_n_0 ),
        .I4(up_rreq_s),
        .I5(up_raddr_s[3]),
        .O(\up_rdata_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[23]_i_6 
       (.I0(\up_rdata_reg[0]_1 [0]),
        .I1(up_raddr_s[8]),
        .O(\up_rdata[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[23]_i_7 
       (.I0(\up_rdata_reg[0]_1 [1]),
        .I1(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[24]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[4]),
        .O(\up_rdata_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[25]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[5]),
        .O(\up_rdata_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[26]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[6]),
        .O(\up_rdata_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[27]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[7]),
        .O(\up_rdata_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[28]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[8]),
        .O(\up_rdata_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[29]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[9]),
        .O(\up_rdata_reg[29] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[2]_i_1 
       (.I0(\up_rdata[2]_i_2_n_0 ),
        .I1(\up_d_count_reg[2] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[41]),
        .I4(\up_rdata[2]_i_4_n_0 ),
        .I5(\up_rdata[2]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [2]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[2]_i_2 
       (.I0(D[25]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[2]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[2]_i_4 
       (.I0(D[57]),
        .I1(\up_scratch_reg[23] [2]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[2]_i_5 
       (.I0(D[81]),
        .I1(D[96]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[30]_i_3 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[10]),
        .O(\up_rdata_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \up_rdata[31]_i_3 
       (.I0(\up_rdata_reg[0]_1 [2]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(up_raddr_s[8]),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .I4(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[31]_i_4 
       (.I0(\up_rdata_reg[0] ),
        .I1(Q[11]),
        .O(\up_rdata_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \up_rdata[31]_i_5 
       (.I0(\up_rdata_reg[0]_1 [2]),
        .I1(\up_rdata_reg[0]_1 [0]),
        .I2(\up_rdata[31]_i_7_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata_reg[16] ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \up_rdata[31]_i_6 
       (.I0(\up_rdata_reg[0]_1 [0]),
        .I1(up_raddr_s[3]),
        .I2(up_rreq_s),
        .I3(\up_rdata[6]_i_7_n_0 ),
        .I4(up_raddr_s[2]),
        .I5(up_raddr_s[8]),
        .O(\up_rdata_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \up_rdata[31]_i_7 
       (.I0(up_raddr_s[3]),
        .I1(up_rreq_s__0),
        .I2(up_raddr_s[12]),
        .I3(up_raddr_s[13]),
        .I4(\up_rdata[6]_i_7_n_0 ),
        .I5(up_raddr_s[2]),
        .O(\up_rdata[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \up_rdata[31]_i_8 
       (.I0(up_raddr_s[2]),
        .I1(\up_rdata[6]_i_7_n_0 ),
        .I2(up_rreq_s),
        .I3(up_raddr_s[3]),
        .I4(\up_rdata[31]_i_9_n_0 ),
        .O(\up_rdata_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \up_rdata[31]_i_9 
       (.I0(up_raddr_s[8]),
        .I1(\up_rdata_reg[0]_1 [0]),
        .I2(\up_rdata_reg[0]_1 [1]),
        .I3(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[3]_i_1 
       (.I0(\up_rdata[3]_i_2_n_0 ),
        .I1(\up_d_count_reg[3] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[42]),
        .I4(\up_rdata[3]_i_4_n_0 ),
        .I5(\up_rdata[3]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [3]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[3]_i_2 
       (.I0(D[26]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[3]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[3]_i_4 
       (.I0(D[58]),
        .I1(\up_scratch_reg[23] [3]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[3]_i_5 
       (.I0(D[82]),
        .I1(D[97]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[4]_i_1 
       (.I0(\up_rdata[4]_i_2_n_0 ),
        .I1(\up_d_count_reg[4] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[43]),
        .I4(\up_rdata[4]_i_4_n_0 ),
        .I5(\up_rdata[4]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [4]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[4]_i_2 
       (.I0(D[27]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[4]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[4]_i_4 
       (.I0(D[59]),
        .I1(\up_scratch_reg[23] [4]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[4]_i_5 
       (.I0(D[83]),
        .I1(D[98]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \up_rdata[5]_i_1 
       (.I0(\up_rdata[5]_i_2_n_0 ),
        .I1(\up_rdata_reg[5] ),
        .I2(D[99]),
        .I3(\up_rdata[5]_i_3_n_0 ),
        .I4(\up_rdata[5]_i_4_n_0 ),
        .I5(\up_rdata[5]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [5]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[5]_i_2 
       (.I0(D[28]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[5]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088F00000)) 
    \up_rdata[5]_i_3 
       (.I0(D[60]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(\up_scratch_reg[23] [5]),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[15]_i_8_n_0 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[5]_i_4 
       (.I0(\up_rdata[15]_i_9_n_0 ),
        .I1(\up_rdata[6]_i_8_n_0 ),
        .I2(\up_rdata_reg[0] ),
        .I3(Q[2]),
        .I4(\up_rdata_reg[0]_0 ),
        .I5(D[112]),
        .O(\up_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \up_rdata[5]_i_5 
       (.I0(D[44]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(D[84]),
        .I5(\up_rdata[6]_i_9_n_0 ),
        .O(\up_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \up_rdata[6]_i_1 
       (.I0(\up_rdata[6]_i_2_n_0 ),
        .I1(\up_rdata_reg[5] ),
        .I2(D[100]),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata[6]_i_5_n_0 ),
        .I5(\up_rdata[6]_i_6_n_0 ),
        .O(\up_rdata_reg[23] [6]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[6]_i_2 
       (.I0(D[29]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[6]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \up_rdata[6]_i_3 
       (.I0(\up_rdata[15]_i_9_n_0 ),
        .I1(\up_rdata_reg[0]_1 [0]),
        .I2(up_raddr_s[3]),
        .I3(up_rreq_s),
        .I4(\up_rdata[6]_i_7_n_0 ),
        .I5(up_raddr_s[2]),
        .O(\up_rdata_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000088F00000)) 
    \up_rdata[6]_i_4 
       (.I0(D[61]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(\up_scratch_reg[23] [6]),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[15]_i_8_n_0 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[6]_i_5 
       (.I0(\up_rdata[15]_i_9_n_0 ),
        .I1(\up_rdata[6]_i_8_n_0 ),
        .I2(\up_rdata_reg[0] ),
        .I3(Q[3]),
        .I4(\up_rdata_reg[0]_0 ),
        .I5(D[113]),
        .O(\up_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \up_rdata[6]_i_6 
       (.I0(D[45]),
        .I1(\up_rdata_reg[0]_1 [1]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata_reg[0]_2 ),
        .I4(D[85]),
        .I5(\up_rdata[6]_i_9_n_0 ),
        .O(\up_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \up_rdata[6]_i_7 
       (.I0(up_raddr_s[6]),
        .I1(up_raddr_s[5]),
        .I2(up_raddr_s[7]),
        .I3(up_raddr_s[9]),
        .I4(up_raddr_s[10]),
        .I5(up_raddr_s[11]),
        .O(\up_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \up_rdata[6]_i_8 
       (.I0(\up_rdata_reg[0]_1 [0]),
        .I1(up_raddr_s[3]),
        .I2(up_rreq_s),
        .I3(\up_rdata[6]_i_7_n_0 ),
        .I4(up_raddr_s[2]),
        .I5(up_raddr_s[8]),
        .O(\up_rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \up_rdata[6]_i_9 
       (.I0(up_raddr_s[3]),
        .I1(up_rreq_s),
        .I2(\up_rdata[6]_i_7_n_0 ),
        .I3(up_raddr_s[2]),
        .I4(\up_rdata[15]_i_10_n_0 ),
        .I5(\up_rdata[15]_i_9_n_0 ),
        .O(\up_rdata[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[7]_i_1 
       (.I0(\up_rdata[7]_i_2_n_0 ),
        .I1(\up_d_count_reg[7] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[46]),
        .I4(\up_rdata[7]_i_4_n_0 ),
        .I5(\up_rdata[7]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [7]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[7]_i_2 
       (.I0(D[30]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[7]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[7]_i_4 
       (.I0(D[62]),
        .I1(\up_scratch_reg[23] [7]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[7]_i_5 
       (.I0(D[86]),
        .I1(D[101]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[8]_i_1 
       (.I0(\up_rdata[8]_i_2_n_0 ),
        .I1(\up_d_count_reg[8] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[47]),
        .I4(\up_rdata[8]_i_4_n_0 ),
        .I5(\up_rdata[8]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [8]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[8]_i_2 
       (.I0(D[31]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[8]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[8]_i_4 
       (.I0(D[63]),
        .I1(\up_scratch_reg[23] [8]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[8]_i_5 
       (.I0(D[87]),
        .I1(D[102]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \up_rdata[9]_i_1 
       (.I0(\up_rdata[9]_i_2_n_0 ),
        .I1(\up_d_count_reg[9] ),
        .I2(\up_rdata[15]_i_4_n_0 ),
        .I3(D[48]),
        .I4(\up_rdata[9]_i_4_n_0 ),
        .I5(\up_rdata[9]_i_5_n_0 ),
        .O(\up_rdata_reg[23] [9]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \up_rdata[9]_i_2 
       (.I0(D[32]),
        .I1(\up_rdata_reg[0]_3 ),
        .I2(D[9]),
        .I3(\up_rdata_reg[0]_1 [1]),
        .I4(\up_rdata_reg[0]_2 ),
        .I5(\up_rdata_reg[0]_1 [2]),
        .O(\up_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \up_rdata[9]_i_4 
       (.I0(D[64]),
        .I1(\up_scratch_reg[23] [9]),
        .I2(\up_rdata_reg[0]_1 [2]),
        .I3(\up_rdata[15]_i_8_n_0 ),
        .I4(up_raddr_s[8]),
        .I5(\up_rdata_reg[0]_1 [1]),
        .O(\up_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \up_rdata[9]_i_5 
       (.I0(D[88]),
        .I1(D[103]),
        .I2(\up_rdata[15]_i_9_n_0 ),
        .I3(up_raddr_s[8]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata_reg[0]_1 [0]),
        .O(\up_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[0]_i_1 
       (.I0(\up_rdata_reg[31]_0 [0]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[10]_i_1 
       (.I0(\up_rdata_reg[31]_0 [10]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[11]_i_1 
       (.I0(\up_rdata_reg[31]_0 [11]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[11]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[12]_i_1 
       (.I0(\up_rdata_reg[31]_0 [12]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[12]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[13]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [13]),
        .O(p_0_in__0[13]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[14]_i_1 
       (.I0(\up_rdata_reg[31]_0 [14]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[14]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[15]_i_1 
       (.I0(\up_rdata_reg[31]_0 [15]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[15]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[16]_i_1 
       (.I0(\up_rdata_reg[31]_0 [16]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[16]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[17]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [17]),
        .O(p_0_in__0[17]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[18]_i_1 
       (.I0(\up_rdata_reg[31]_0 [18]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[18]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[19]_i_1 
       (.I0(\up_rdata_reg[31]_0 [19]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[19]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[1]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[20]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [20]),
        .O(p_0_in__0[20]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[21]_i_1 
       (.I0(\up_rdata_reg[31]_0 [21]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[21]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[22]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [22]),
        .O(p_0_in__0[22]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[23]_i_1 
       (.I0(\up_rdata_reg[31]_0 [23]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[23]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[24]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [24]),
        .O(p_0_in__0[24]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[25]_i_1 
       (.I0(\up_rdata_reg[31]_0 [25]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[25]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[26]_i_1 
       (.I0(\up_rdata_reg[31]_0 [26]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[26]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[27]_i_1 
       (.I0(\up_rdata_reg[31]_0 [27]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[27]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[28]_i_1 
       (.I0(\up_rdata_reg[31]_0 [28]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[28]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[29]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [29]),
        .O(p_0_in__0[29]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[2]_i_1 
       (.I0(\up_rdata_reg[31]_0 [2]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[30]_i_1 
       (.I0(\up_rdata_reg[31]_0 [30]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[30]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[31]_i_1 
       (.I0(\up_rdata_reg[31]_0 [31]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[31]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[3]_i_1 
       (.I0(\up_rdata_reg[31]_0 [3]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[4]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[5]_i_1 
       (.I0(\up_rdata_reg[31]_0 [5]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[6]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [6]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[7]_i_1 
       (.I0(\up_rdata_reg[31]_0 [7]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \up_rdata_int[8]_i_1 
       (.I0(up_rack_s),
        .I1(p_0_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[0] ),
        .I5(\up_rdata_reg[31]_0 [8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \up_rdata_int[9]_i_1 
       (.I0(\up_rdata_reg[31]_0 [9]),
        .I1(up_rack_s),
        .I2(p_0_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[0] ),
        .O(p_0_in__0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[0]),
        .Q(up_rdata_int_d[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[10]),
        .Q(up_rdata_int_d[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[11]),
        .Q(up_rdata_int_d[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[12]),
        .Q(up_rdata_int_d[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[13]),
        .Q(up_rdata_int_d[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[14]),
        .Q(up_rdata_int_d[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[15]),
        .Q(up_rdata_int_d[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[16]),
        .Q(up_rdata_int_d[16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[17]),
        .Q(up_rdata_int_d[17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[18]),
        .Q(up_rdata_int_d[18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[19]),
        .Q(up_rdata_int_d[19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[1]),
        .Q(up_rdata_int_d[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[20]),
        .Q(up_rdata_int_d[20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[21]),
        .Q(up_rdata_int_d[21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[22]),
        .Q(up_rdata_int_d[22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[23]),
        .Q(up_rdata_int_d[23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[24]),
        .Q(up_rdata_int_d[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[25]),
        .Q(up_rdata_int_d[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[26]),
        .Q(up_rdata_int_d[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[27]),
        .Q(up_rdata_int_d[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[28]),
        .Q(up_rdata_int_d[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[29]),
        .Q(up_rdata_int_d[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[2]),
        .Q(up_rdata_int_d[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[30]),
        .Q(up_rdata_int_d[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[31]),
        .Q(up_rdata_int_d[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[3]),
        .Q(up_rdata_int_d[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[4]),
        .Q(up_rdata_int_d[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[5]),
        .Q(up_rdata_int_d[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[6]),
        .Q(up_rdata_int_d[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[7]),
        .Q(up_rdata_int_d[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[8]),
        .Q(up_rdata_int_d[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rdata_int[9]),
        .Q(up_rdata_int_d[9]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[0]),
        .Q(up_rdata_int[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[10]),
        .Q(up_rdata_int[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[11]),
        .Q(up_rdata_int[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[12]),
        .Q(up_rdata_int[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[13]),
        .Q(up_rdata_int[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[14]),
        .Q(up_rdata_int[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[15]),
        .Q(up_rdata_int[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[16]),
        .Q(up_rdata_int[16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[17]),
        .Q(up_rdata_int[17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[18]),
        .Q(up_rdata_int[18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[19]),
        .Q(up_rdata_int[19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[1]),
        .Q(up_rdata_int[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[20]),
        .Q(up_rdata_int[20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[21]),
        .Q(up_rdata_int[21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[22]),
        .Q(up_rdata_int[22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[23]),
        .Q(up_rdata_int[23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[24]),
        .Q(up_rdata_int[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[25]),
        .Q(up_rdata_int[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[26]),
        .Q(up_rdata_int[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[27]),
        .Q(up_rdata_int[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[28]),
        .Q(up_rdata_int[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[29]),
        .Q(up_rdata_int[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[2]),
        .Q(up_rdata_int[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[30]),
        .Q(up_rdata_int[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[31]),
        .Q(up_rdata_int[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[3]),
        .Q(up_rdata_int[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[4]),
        .Q(up_rdata_int[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[5]),
        .Q(up_rdata_int[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[6]),
        .Q(up_rdata_int[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[7]),
        .Q(up_rdata_int[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[8]),
        .Q(up_rdata_int[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(p_0_in__0[9]),
        .Q(up_rdata_int[9]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    up_resetn_i_1
       (.I0(\up_ve_max_reg[15] [0]),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(up_waddr_s[1]),
        .I4(\up_vf_width[15]_i_2_n_0 ),
        .I5(up_resetn),
        .O(up_resetn_reg));
  LUT2 #(
    .INIT(4'h2)) 
    up_rreq_i_1
       (.I0(s_axi_arvalid),
        .I1(up_rsel_reg_n_0),
        .O(up_rreq_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_rreq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_rreq_i_1_n_0),
        .Q(up_rreq_s__0));
  LUT4 #(
    .INIT(16'h3FAA)) 
    up_rsel_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(up_rsel_reg_n_0),
        .O(up_rsel_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_rsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_axi_rvalid_i_3_n_0),
        .D(up_rsel_i_1_n_0),
        .Q(up_rsel_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \up_scratch[31]_i_1 
       (.I0(up_waddr_s[8]),
        .I1(up_waddr_s[4]),
        .I2(\up_ve_min[15]_i_2_n_0 ),
        .O(\up_scratch_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \up_srcsel[0]_i_1 
       (.I0(\up_ve_max_reg[15] [0]),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(\up_ve_min[15]_i_2_n_0 ),
        .I4(D[114]),
        .O(\up_srcsel_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \up_srcsel[1]_i_1 
       (.I0(\up_ve_max_reg[15] [1]),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(\up_ve_min[15]_i_2_n_0 ),
        .I4(D[115]),
        .O(\up_srcsel_reg[1] ));
  LUT4 #(
    .INIT(16'hF7F0)) 
    up_vdma_ovf_i_1
       (.I0(\up_ve_max_reg[15] [1]),
        .I1(up_vdma_unf_i_2_n_0),
        .I2(up_vdma_ovf_s),
        .I3(p_8_in[1]),
        .O(up_vdma_ovf_reg));
  LUT4 #(
    .INIT(16'hF7F0)) 
    up_vdma_tpm_oos_i_1
       (.I0(\up_ve_max_reg[15] [0]),
        .I1(up_vdma_tpm_oos_i_2_n_0),
        .I2(\up_data_status_reg[0] ),
        .I3(p_7_in[0]),
        .O(up_vdma_tpm_oos_reg));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    up_vdma_tpm_oos_i_2
       (.I0(up_vdma_unf_i_3_n_0),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(up_waddr_s[1]),
        .I4(up_waddr_s[3]),
        .I5(up_waddr_s[0]),
        .O(up_vdma_tpm_oos_i_2_n_0));
  LUT4 #(
    .INIT(16'hF7F0)) 
    up_vdma_unf_i_1
       (.I0(\up_ve_max_reg[15] [0]),
        .I1(up_vdma_unf_i_2_n_0),
        .I2(up_vdma_unf_s),
        .I3(p_8_in[0]),
        .O(up_vdma_unf_reg));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    up_vdma_unf_i_2
       (.I0(up_vdma_unf_i_3_n_0),
        .I1(up_waddr_s[8]),
        .I2(up_waddr_s[4]),
        .I3(up_waddr_s[1]),
        .I4(up_waddr_s[3]),
        .I5(up_waddr_s[0]),
        .O(up_vdma_unf_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    up_vdma_unf_i_3
       (.I0(up_waddr_s[11]),
        .I1(up_waddr_s[12]),
        .I2(up_wreq_s__0),
        .I3(up_waddr_s[13]),
        .I4(\up_ve_min[15]_i_4_n_0 ),
        .O(up_vdma_unf_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \up_ve_min[15]_i_1 
       (.I0(up_waddr_s[8]),
        .I1(up_waddr_s[4]),
        .I2(\up_ve_min[15]_i_2_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \up_ve_min[15]_i_2 
       (.I0(up_waddr_s[0]),
        .I1(\up_ve_min[15]_i_3_n_0 ),
        .I2(up_waddr_s[1]),
        .O(\up_ve_min[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \up_ve_min[15]_i_3 
       (.I0(\up_ve_min[15]_i_4_n_0 ),
        .I1(up_waddr_s[13]),
        .I2(up_wreq_s__0),
        .I3(up_waddr_s[12]),
        .I4(up_waddr_s[11]),
        .I5(up_waddr_s[3]),
        .O(\up_ve_min[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \up_ve_min[15]_i_4 
       (.I0(up_waddr_s[5]),
        .I1(up_waddr_s[2]),
        .I2(up_waddr_s[6]),
        .I3(up_waddr_s[7]),
        .I4(up_waddr_s[9]),
        .I5(up_waddr_s[10]),
        .O(\up_ve_min[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \up_vf_width[15]_i_1 
       (.I0(up_waddr_s[8]),
        .I1(up_waddr_s[4]),
        .I2(up_waddr_s[1]),
        .I3(\up_vf_width[15]_i_2_n_0 ),
        .O(\up_vf_width_reg[15] ));
  LUT2 #(
    .INIT(4'h2)) 
    \up_vf_width[15]_i_2 
       (.I0(\up_ve_min[15]_i_3_n_0 ),
        .I1(up_waddr_s[0]),
        .O(\up_vf_width[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \up_vs_width[15]_i_1 
       (.I0(up_waddr_s[8]),
        .I1(up_waddr_s[4]),
        .I2(up_waddr_s[1]),
        .I3(\up_vs_width[15]_i_2_n_0 ),
        .O(\up_vs_width_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_vs_width[15]_i_2 
       (.I0(\up_ve_min[15]_i_3_n_0 ),
        .I1(up_waddr_s[0]),
        .O(\up_vs_width[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h04)) 
    up_wack_i_1
       (.I0(up_waddr_s[12]),
        .I1(up_wreq_s__0),
        .I2(up_waddr_s[13]),
        .O(up_wreq_s));
  LUT6 #(
    .INIT(64'hF8F0FFFFF8F00800)) 
    up_wack_int_i_1
       (.I0(up_wcount[1]),
        .I1(up_wcount[0]),
        .I2(up_wack_s),
        .I3(up_wcount[2]),
        .I4(up_wsel_reg_n_0),
        .I5(up_wack_int),
        .O(up_wack_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_wack_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_wack_int_i_1_n_0),
        .Q(up_wack_int));
  LUT1 #(
    .INIT(2'h1)) 
    \up_waddr[13]_i_1 
       (.I0(up_wsel_reg_n_0),
        .O(p_5_in));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[0]),
        .Q(up_waddr_s[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[10]),
        .Q(up_waddr_s[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_awaddr[11]),
        .Q(up_waddr_s[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_awaddr[12]),
        .Q(up_waddr_s[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_awaddr[13]),
        .Q(up_waddr_s[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[1]),
        .Q(up_waddr_s[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[2]),
        .Q(up_waddr_s[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[3]),
        .Q(up_waddr_s[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[4]),
        .Q(up_waddr_s[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[5]),
        .Q(up_waddr_s[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[6]),
        .Q(up_waddr_s[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[7]),
        .Q(up_waddr_s[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[8]),
        .Q(up_waddr_s[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_waddr_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_awaddr[9]),
        .Q(up_waddr_s[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \up_wcount[0]_i_1 
       (.I0(up_wsel_reg_n_0),
        .I1(up_wcount[0]),
        .O(\up_wcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \up_wcount[1]_i_1 
       (.I0(up_wsel_reg_n_0),
        .I1(up_wcount[1]),
        .I2(up_wcount[0]),
        .O(\up_wcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \up_wcount[2]_i_1 
       (.I0(up_wsel_reg_n_0),
        .I1(up_wcount[2]),
        .I2(up_wcount[1]),
        .I3(up_wcount[0]),
        .O(\up_wcount[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_wcount[0]_i_1_n_0 ),
        .Q(up_wcount[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_wcount[1]_i_1_n_0 ),
        .Q(up_wcount[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_wcount[2]_i_1_n_0 ),
        .Q(up_wcount[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_0),
        .D(s_axi_wdata[0]),
        .Q(\up_ve_max_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[10]),
        .Q(\up_ve_max_reg[15] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[11]),
        .Q(\up_ve_max_reg[15] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[12]),
        .Q(\up_ve_max_reg[15] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[13]),
        .Q(\up_ve_max_reg[15] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[14]),
        .Q(\up_ve_max_reg[15] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[15]),
        .Q(\up_ve_max_reg[15] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[16]),
        .Q(\up_ve_max_reg[15] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[17]),
        .Q(\up_ve_max_reg[15] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[18]),
        .Q(\up_ve_max_reg[15] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[19]),
        .Q(\up_ve_max_reg[15] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[1]),
        .Q(\up_ve_max_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[20]),
        .Q(\up_ve_max_reg[15] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[21]),
        .Q(\up_ve_max_reg[15] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[22]),
        .Q(\up_ve_max_reg[15] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[23]),
        .Q(\up_ve_max_reg[15] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[24]),
        .Q(\up_ve_max_reg[15] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[25]),
        .Q(\up_ve_max_reg[15] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[26]),
        .Q(\up_ve_max_reg[15] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[27]),
        .Q(\up_ve_max_reg[15] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[28]),
        .Q(\up_ve_max_reg[15] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[29]),
        .Q(\up_ve_max_reg[15] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[2]),
        .Q(\up_ve_max_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[30]),
        .Q(\up_ve_max_reg[15] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_2),
        .D(s_axi_wdata[31]),
        .Q(\up_ve_max_reg[15] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[3]),
        .Q(\up_ve_max_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[4]),
        .Q(\up_ve_max_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[5]),
        .Q(\up_ve_max_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[6]),
        .Q(\up_ve_max_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[7]),
        .Q(\up_ve_max_reg[15] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_3),
        .D(s_axi_wdata[8]),
        .Q(\up_ve_max_reg[15] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_wdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .CLR(s_axi_aresetn_1),
        .D(s_axi_wdata[9]),
        .Q(\up_ve_max_reg[15] [9]));
  LUT3 #(
    .INIT(8'h20)) 
    up_wreq_i_1
       (.I0(s_axi_awvalid),
        .I1(up_wsel_reg_n_0),
        .I2(s_axi_wvalid),
        .O(up_wsel));
  FDCE #(
    .INIT(1'b0)) 
    up_wreq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_1),
        .D(up_wsel),
        .Q(up_wreq_s__0));
  LUT5 #(
    .INIT(32'h0FFF8888)) 
    up_wsel_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(up_wsel_reg_n_0),
        .O(up_wsel_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_wsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_wsel_i_1_n_0),
        .Q(up_wsel_reg_n_0));
endmodule

(* ORIG_REF_NAME = "up_clock_mon" *) 
module system_axi_hdmi_core_0_up_clock_mon
   (\up_d_count_reg[2]_0 ,
    \up_rdata_reg[2] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[4] ,
    \up_rdata_reg[7] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[9] ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[12] ,
    \up_rdata_reg[13] ,
    \up_rdata_reg[14] ,
    \up_rdata_reg[15] ,
    \up_rdata_reg[16] ,
    \up_rdata_reg[17] ,
    \up_rdata_reg[18] ,
    \up_rdata_reg[19] ,
    \up_rdata_reg[20] ,
    \up_rdata_reg[21] ,
    \up_rdata_reg[22] ,
    \up_rdata_reg[23] ,
    \up_rdata_reg[31] ,
    rst_reg,
    hdmi_clk,
    s_axi_aclk,
    s_axi_aresetn_0,
    \up_raddr_reg[2] ,
    Q,
    \up_raddr_reg[2]_0 ,
    s_axi_aresetn,
    s_axi_aresetn_1);
  output \up_d_count_reg[2]_0 ;
  output \up_rdata_reg[2] ;
  output \up_rdata_reg[3] ;
  output \up_rdata_reg[4] ;
  output \up_rdata_reg[7] ;
  output \up_rdata_reg[8] ;
  output \up_rdata_reg[9] ;
  output \up_rdata_reg[10] ;
  output \up_rdata_reg[11] ;
  output \up_rdata_reg[12] ;
  output \up_rdata_reg[13] ;
  output \up_rdata_reg[14] ;
  output \up_rdata_reg[15] ;
  output \up_rdata_reg[16] ;
  output \up_rdata_reg[17] ;
  output \up_rdata_reg[18] ;
  output \up_rdata_reg[19] ;
  output \up_rdata_reg[20] ;
  output \up_rdata_reg[21] ;
  output \up_rdata_reg[22] ;
  output \up_rdata_reg[23] ;
  output [11:0]\up_rdata_reg[31] ;
  input rst_reg;
  input hdmi_clk;
  input s_axi_aclk;
  input s_axi_aresetn_0;
  input \up_raddr_reg[2] ;
  input [19:0]Q;
  input \up_raddr_reg[2]_0 ;
  input s_axi_aresetn;
  input s_axi_aresetn_1;

  wire [19:0]Q;
  wire \d_count[0]_i_2_n_0 ;
  wire \d_count[0]_i_3_n_0 ;
  wire \d_count[0]_i_4_n_0 ;
  wire \d_count[0]_i_5_n_0 ;
  wire \d_count[0]_i_6_n_0 ;
  wire \d_count[12]_i_2_n_0 ;
  wire \d_count[12]_i_3_n_0 ;
  wire \d_count[12]_i_4_n_0 ;
  wire \d_count[12]_i_5_n_0 ;
  wire \d_count[16]_i_2_n_0 ;
  wire \d_count[16]_i_3_n_0 ;
  wire \d_count[16]_i_4_n_0 ;
  wire \d_count[16]_i_5_n_0 ;
  wire \d_count[20]_i_2_n_0 ;
  wire \d_count[20]_i_3_n_0 ;
  wire \d_count[20]_i_4_n_0 ;
  wire \d_count[20]_i_5_n_0 ;
  wire \d_count[24]_i_2_n_0 ;
  wire \d_count[24]_i_3_n_0 ;
  wire \d_count[24]_i_4_n_0 ;
  wire \d_count[24]_i_5_n_0 ;
  wire \d_count[28]_i_2_n_0 ;
  wire \d_count[28]_i_3_n_0 ;
  wire \d_count[28]_i_4_n_0 ;
  wire \d_count[28]_i_5_n_0 ;
  wire \d_count[32]_i_2_n_0 ;
  wire \d_count[4]_i_2_n_0 ;
  wire \d_count[4]_i_3_n_0 ;
  wire \d_count[4]_i_4_n_0 ;
  wire \d_count[4]_i_5_n_0 ;
  wire \d_count[8]_i_2_n_0 ;
  wire \d_count[8]_i_3_n_0 ;
  wire \d_count[8]_i_4_n_0 ;
  wire \d_count[8]_i_5_n_0 ;
  wire [31:0]d_count_hold;
  wire \d_count_reg[0]_i_1_n_0 ;
  wire \d_count_reg[0]_i_1_n_1 ;
  wire \d_count_reg[0]_i_1_n_2 ;
  wire \d_count_reg[0]_i_1_n_3 ;
  wire \d_count_reg[0]_i_1_n_4 ;
  wire \d_count_reg[0]_i_1_n_5 ;
  wire \d_count_reg[0]_i_1_n_6 ;
  wire \d_count_reg[0]_i_1_n_7 ;
  wire \d_count_reg[12]_i_1_n_0 ;
  wire \d_count_reg[12]_i_1_n_1 ;
  wire \d_count_reg[12]_i_1_n_2 ;
  wire \d_count_reg[12]_i_1_n_3 ;
  wire \d_count_reg[12]_i_1_n_4 ;
  wire \d_count_reg[12]_i_1_n_5 ;
  wire \d_count_reg[12]_i_1_n_6 ;
  wire \d_count_reg[12]_i_1_n_7 ;
  wire \d_count_reg[16]_i_1_n_0 ;
  wire \d_count_reg[16]_i_1_n_1 ;
  wire \d_count_reg[16]_i_1_n_2 ;
  wire \d_count_reg[16]_i_1_n_3 ;
  wire \d_count_reg[16]_i_1_n_4 ;
  wire \d_count_reg[16]_i_1_n_5 ;
  wire \d_count_reg[16]_i_1_n_6 ;
  wire \d_count_reg[16]_i_1_n_7 ;
  wire \d_count_reg[20]_i_1_n_0 ;
  wire \d_count_reg[20]_i_1_n_1 ;
  wire \d_count_reg[20]_i_1_n_2 ;
  wire \d_count_reg[20]_i_1_n_3 ;
  wire \d_count_reg[20]_i_1_n_4 ;
  wire \d_count_reg[20]_i_1_n_5 ;
  wire \d_count_reg[20]_i_1_n_6 ;
  wire \d_count_reg[20]_i_1_n_7 ;
  wire \d_count_reg[24]_i_1_n_0 ;
  wire \d_count_reg[24]_i_1_n_1 ;
  wire \d_count_reg[24]_i_1_n_2 ;
  wire \d_count_reg[24]_i_1_n_3 ;
  wire \d_count_reg[24]_i_1_n_4 ;
  wire \d_count_reg[24]_i_1_n_5 ;
  wire \d_count_reg[24]_i_1_n_6 ;
  wire \d_count_reg[24]_i_1_n_7 ;
  wire \d_count_reg[28]_i_1_n_0 ;
  wire \d_count_reg[28]_i_1_n_1 ;
  wire \d_count_reg[28]_i_1_n_2 ;
  wire \d_count_reg[28]_i_1_n_3 ;
  wire \d_count_reg[28]_i_1_n_4 ;
  wire \d_count_reg[28]_i_1_n_5 ;
  wire \d_count_reg[28]_i_1_n_6 ;
  wire \d_count_reg[28]_i_1_n_7 ;
  wire \d_count_reg[32]_i_1_n_7 ;
  wire \d_count_reg[4]_i_1_n_0 ;
  wire \d_count_reg[4]_i_1_n_1 ;
  wire \d_count_reg[4]_i_1_n_2 ;
  wire \d_count_reg[4]_i_1_n_3 ;
  wire \d_count_reg[4]_i_1_n_4 ;
  wire \d_count_reg[4]_i_1_n_5 ;
  wire \d_count_reg[4]_i_1_n_6 ;
  wire \d_count_reg[4]_i_1_n_7 ;
  wire \d_count_reg[8]_i_1_n_0 ;
  wire \d_count_reg[8]_i_1_n_1 ;
  wire \d_count_reg[8]_i_1_n_2 ;
  wire \d_count_reg[8]_i_1_n_3 ;
  wire \d_count_reg[8]_i_1_n_4 ;
  wire \d_count_reg[8]_i_1_n_5 ;
  wire \d_count_reg[8]_i_1_n_6 ;
  wire \d_count_reg[8]_i_1_n_7 ;
  wire \d_count_reg_n_0_[0] ;
  wire \d_count_reg_n_0_[10] ;
  wire \d_count_reg_n_0_[11] ;
  wire \d_count_reg_n_0_[12] ;
  wire \d_count_reg_n_0_[13] ;
  wire \d_count_reg_n_0_[14] ;
  wire \d_count_reg_n_0_[15] ;
  wire \d_count_reg_n_0_[16] ;
  wire \d_count_reg_n_0_[17] ;
  wire \d_count_reg_n_0_[18] ;
  wire \d_count_reg_n_0_[19] ;
  wire \d_count_reg_n_0_[1] ;
  wire \d_count_reg_n_0_[20] ;
  wire \d_count_reg_n_0_[21] ;
  wire \d_count_reg_n_0_[22] ;
  wire \d_count_reg_n_0_[23] ;
  wire \d_count_reg_n_0_[24] ;
  wire \d_count_reg_n_0_[25] ;
  wire \d_count_reg_n_0_[26] ;
  wire \d_count_reg_n_0_[27] ;
  wire \d_count_reg_n_0_[28] ;
  wire \d_count_reg_n_0_[29] ;
  wire \d_count_reg_n_0_[2] ;
  wire \d_count_reg_n_0_[30] ;
  wire \d_count_reg_n_0_[31] ;
  wire \d_count_reg_n_0_[32] ;
  wire \d_count_reg_n_0_[3] ;
  wire \d_count_reg_n_0_[4] ;
  wire \d_count_reg_n_0_[5] ;
  wire \d_count_reg_n_0_[6] ;
  wire \d_count_reg_n_0_[7] ;
  wire \d_count_reg_n_0_[8] ;
  wire \d_count_reg_n_0_[9] ;
  wire d_count_toggle;
  wire d_count_toggle_i_2_n_0;
  wire d_count_toggle_m1;
  wire d_count_toggle_m2;
  wire d_count_toggle_m3;
  wire d_count_toggle_s;
  wire hdmi_clk;
  wire rst_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire \up_count[0]_i_2_n_0 ;
  wire \up_count[0]_i_3_n_0 ;
  wire \up_count[0]_i_4_n_0 ;
  wire \up_count[0]_i_5_n_0 ;
  wire \up_count[12]_i_2_n_0 ;
  wire \up_count[12]_i_3_n_0 ;
  wire \up_count[12]_i_4_n_0 ;
  wire \up_count[12]_i_5_n_0 ;
  wire \up_count[4]_i_2_n_0 ;
  wire \up_count[4]_i_3_n_0 ;
  wire \up_count[4]_i_4_n_0 ;
  wire \up_count[4]_i_5_n_0 ;
  wire \up_count[8]_i_2_n_0 ;
  wire \up_count[8]_i_3_n_0 ;
  wire \up_count[8]_i_4_n_0 ;
  wire \up_count[8]_i_5_n_0 ;
  wire [15:0]up_count_reg;
  wire \up_count_reg[0]_i_1_n_0 ;
  wire \up_count_reg[0]_i_1_n_1 ;
  wire \up_count_reg[0]_i_1_n_2 ;
  wire \up_count_reg[0]_i_1_n_3 ;
  wire \up_count_reg[0]_i_1_n_4 ;
  wire \up_count_reg[0]_i_1_n_5 ;
  wire \up_count_reg[0]_i_1_n_6 ;
  wire \up_count_reg[0]_i_1_n_7 ;
  wire \up_count_reg[12]_i_1_n_1 ;
  wire \up_count_reg[12]_i_1_n_2 ;
  wire \up_count_reg[12]_i_1_n_3 ;
  wire \up_count_reg[12]_i_1_n_4 ;
  wire \up_count_reg[12]_i_1_n_5 ;
  wire \up_count_reg[12]_i_1_n_6 ;
  wire \up_count_reg[12]_i_1_n_7 ;
  wire \up_count_reg[4]_i_1_n_0 ;
  wire \up_count_reg[4]_i_1_n_1 ;
  wire \up_count_reg[4]_i_1_n_2 ;
  wire \up_count_reg[4]_i_1_n_3 ;
  wire \up_count_reg[4]_i_1_n_4 ;
  wire \up_count_reg[4]_i_1_n_5 ;
  wire \up_count_reg[4]_i_1_n_6 ;
  wire \up_count_reg[4]_i_1_n_7 ;
  wire \up_count_reg[8]_i_1_n_0 ;
  wire \up_count_reg[8]_i_1_n_1 ;
  wire \up_count_reg[8]_i_1_n_2 ;
  wire \up_count_reg[8]_i_1_n_3 ;
  wire \up_count_reg[8]_i_1_n_4 ;
  wire \up_count_reg[8]_i_1_n_5 ;
  wire \up_count_reg[8]_i_1_n_6 ;
  wire \up_count_reg[8]_i_1_n_7 ;
  wire up_count_toggle;
  wire up_count_toggle_i_1_n_0;
  wire up_count_toggle_i_2_n_0;
  wire up_count_toggle_i_3_n_0;
  wire up_count_toggle_i_4_n_0;
  wire up_count_toggle_m1;
  wire up_count_toggle_m2;
  wire up_count_toggle_m3;
  wire up_count_toggle_s;
  wire [23:2]up_d_count;
  wire \up_d_count_reg[2]_0 ;
  wire \up_raddr_reg[2] ;
  wire \up_raddr_reg[2]_0 ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[12] ;
  wire \up_rdata_reg[13] ;
  wire \up_rdata_reg[14] ;
  wire \up_rdata_reg[15] ;
  wire \up_rdata_reg[16] ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[18] ;
  wire \up_rdata_reg[19] ;
  wire \up_rdata_reg[20] ;
  wire \up_rdata_reg[21] ;
  wire \up_rdata_reg[22] ;
  wire \up_rdata_reg[23] ;
  wire \up_rdata_reg[2] ;
  wire [11:0]\up_rdata_reg[31] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[4] ;
  wire \up_rdata_reg[7] ;
  wire \up_rdata_reg[8] ;
  wire \up_rdata_reg[9] ;
  wire [3:0]\NLW_d_count_reg[32]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_d_count_reg[32]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_up_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \d_count[0]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[0] ),
        .O(\d_count[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[0]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[3] ),
        .O(\d_count[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[0]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[2] ),
        .O(\d_count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[0]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[1] ),
        .O(\d_count[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \d_count[0]_i_6 
       (.I0(\d_count_reg_n_0_[0] ),
        .I1(\d_count_reg_n_0_[32] ),
        .O(\d_count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[12]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[15] ),
        .O(\d_count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[12]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[14] ),
        .O(\d_count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[12]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[13] ),
        .O(\d_count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[12]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[12] ),
        .O(\d_count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[16]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[19] ),
        .O(\d_count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[16]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[18] ),
        .O(\d_count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[16]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[17] ),
        .O(\d_count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[16]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[16] ),
        .O(\d_count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[20]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[23] ),
        .O(\d_count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[20]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[22] ),
        .O(\d_count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[20]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[21] ),
        .O(\d_count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[20]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[20] ),
        .O(\d_count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[24]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[27] ),
        .O(\d_count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[24]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[26] ),
        .O(\d_count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[24]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[25] ),
        .O(\d_count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[24]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[24] ),
        .O(\d_count[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[28]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[31] ),
        .O(\d_count[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[28]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[30] ),
        .O(\d_count[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[28]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[29] ),
        .O(\d_count[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[28]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[28] ),
        .O(\d_count[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \d_count[32]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .O(\d_count[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[4]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[7] ),
        .O(\d_count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[4]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[6] ),
        .O(\d_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[4]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[5] ),
        .O(\d_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[4]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[4] ),
        .O(\d_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[8]_i_2 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[11] ),
        .O(\d_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[8]_i_3 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[10] ),
        .O(\d_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[8]_i_4 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[9] ),
        .O(\d_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_count[8]_i_5 
       (.I0(\d_count_reg_n_0_[32] ),
        .I1(\d_count_reg_n_0_[8] ),
        .O(\d_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[0] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[0] ),
        .Q(d_count_hold[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[10] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[10] ),
        .Q(d_count_hold[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[11] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[11] ),
        .Q(d_count_hold[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[12] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[12] ),
        .Q(d_count_hold[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[13] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[13] ),
        .Q(d_count_hold[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[14] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[14] ),
        .Q(d_count_hold[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[15] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[15] ),
        .Q(d_count_hold[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[16] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[16] ),
        .Q(d_count_hold[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[17] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[17] ),
        .Q(d_count_hold[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[18] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[18] ),
        .Q(d_count_hold[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[19] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[19] ),
        .Q(d_count_hold[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[1] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[1] ),
        .Q(d_count_hold[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[20] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[20] ),
        .Q(d_count_hold[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[21] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[21] ),
        .Q(d_count_hold[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[22] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[22] ),
        .Q(d_count_hold[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[23] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[23] ),
        .Q(d_count_hold[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[24] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[24] ),
        .Q(d_count_hold[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[25] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[25] ),
        .Q(d_count_hold[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[26] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[26] ),
        .Q(d_count_hold[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[27] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[27] ),
        .Q(d_count_hold[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[28] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[28] ),
        .Q(d_count_hold[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[29] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[29] ),
        .Q(d_count_hold[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[2] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[2] ),
        .Q(d_count_hold[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[30] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[30] ),
        .Q(d_count_hold[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[31] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[31] ),
        .Q(d_count_hold[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[3] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[3] ),
        .Q(d_count_hold[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[4] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[4] ),
        .Q(d_count_hold[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[5] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[5] ),
        .Q(d_count_hold[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[6] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[6] ),
        .Q(d_count_hold[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[7] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[7] ),
        .Q(d_count_hold[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[8] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[8] ),
        .Q(d_count_hold[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_hold_reg[9] 
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(\d_count_reg_n_0_[9] ),
        .Q(d_count_hold[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \d_count_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[0]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[0] ),
        .S(d_count_toggle_s));
  CARRY4 \d_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\d_count_reg[0]_i_1_n_0 ,\d_count_reg[0]_i_1_n_1 ,\d_count_reg[0]_i_1_n_2 ,\d_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\d_count[0]_i_2_n_0 }),
        .O({\d_count_reg[0]_i_1_n_4 ,\d_count_reg[0]_i_1_n_5 ,\d_count_reg[0]_i_1_n_6 ,\d_count_reg[0]_i_1_n_7 }),
        .S({\d_count[0]_i_3_n_0 ,\d_count[0]_i_4_n_0 ,\d_count[0]_i_5_n_0 ,\d_count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[8]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[10] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[8]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[11] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[12]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[12] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[12]_i_1 
       (.CI(\d_count_reg[8]_i_1_n_0 ),
        .CO({\d_count_reg[12]_i_1_n_0 ,\d_count_reg[12]_i_1_n_1 ,\d_count_reg[12]_i_1_n_2 ,\d_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[12]_i_1_n_4 ,\d_count_reg[12]_i_1_n_5 ,\d_count_reg[12]_i_1_n_6 ,\d_count_reg[12]_i_1_n_7 }),
        .S({\d_count[12]_i_2_n_0 ,\d_count[12]_i_3_n_0 ,\d_count[12]_i_4_n_0 ,\d_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[12]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[13] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[12]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[14] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[12]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[15] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[16]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[16] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[16]_i_1 
       (.CI(\d_count_reg[12]_i_1_n_0 ),
        .CO({\d_count_reg[16]_i_1_n_0 ,\d_count_reg[16]_i_1_n_1 ,\d_count_reg[16]_i_1_n_2 ,\d_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[16]_i_1_n_4 ,\d_count_reg[16]_i_1_n_5 ,\d_count_reg[16]_i_1_n_6 ,\d_count_reg[16]_i_1_n_7 }),
        .S({\d_count[16]_i_2_n_0 ,\d_count[16]_i_3_n_0 ,\d_count[16]_i_4_n_0 ,\d_count[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[16]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[17] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[16]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[18] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[16]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[19] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[0]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[1] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[20]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[20] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[20]_i_1 
       (.CI(\d_count_reg[16]_i_1_n_0 ),
        .CO({\d_count_reg[20]_i_1_n_0 ,\d_count_reg[20]_i_1_n_1 ,\d_count_reg[20]_i_1_n_2 ,\d_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[20]_i_1_n_4 ,\d_count_reg[20]_i_1_n_5 ,\d_count_reg[20]_i_1_n_6 ,\d_count_reg[20]_i_1_n_7 }),
        .S({\d_count[20]_i_2_n_0 ,\d_count[20]_i_3_n_0 ,\d_count[20]_i_4_n_0 ,\d_count[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[20]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[21] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[20]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[22] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[20]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[23] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[24]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[24] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[24]_i_1 
       (.CI(\d_count_reg[20]_i_1_n_0 ),
        .CO({\d_count_reg[24]_i_1_n_0 ,\d_count_reg[24]_i_1_n_1 ,\d_count_reg[24]_i_1_n_2 ,\d_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[24]_i_1_n_4 ,\d_count_reg[24]_i_1_n_5 ,\d_count_reg[24]_i_1_n_6 ,\d_count_reg[24]_i_1_n_7 }),
        .S({\d_count[24]_i_2_n_0 ,\d_count[24]_i_3_n_0 ,\d_count[24]_i_4_n_0 ,\d_count[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[25] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[24]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[25] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[26] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[24]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[26] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[27] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[24]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[27] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[28] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[28]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[28] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[28]_i_1 
       (.CI(\d_count_reg[24]_i_1_n_0 ),
        .CO({\d_count_reg[28]_i_1_n_0 ,\d_count_reg[28]_i_1_n_1 ,\d_count_reg[28]_i_1_n_2 ,\d_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[28]_i_1_n_4 ,\d_count_reg[28]_i_1_n_5 ,\d_count_reg[28]_i_1_n_6 ,\d_count_reg[28]_i_1_n_7 }),
        .S({\d_count[28]_i_2_n_0 ,\d_count[28]_i_3_n_0 ,\d_count[28]_i_4_n_0 ,\d_count[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[29] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[28]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[29] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[0]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[2] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[30] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[28]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[30] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[31] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[28]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[31] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[32] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[32]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[32] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[32]_i_1 
       (.CI(\d_count_reg[28]_i_1_n_0 ),
        .CO(\NLW_d_count_reg[32]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_d_count_reg[32]_i_1_O_UNCONNECTED [3:1],\d_count_reg[32]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\d_count[32]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[0]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[3] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[4]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[4] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[4]_i_1 
       (.CI(\d_count_reg[0]_i_1_n_0 ),
        .CO({\d_count_reg[4]_i_1_n_0 ,\d_count_reg[4]_i_1_n_1 ,\d_count_reg[4]_i_1_n_2 ,\d_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[4]_i_1_n_4 ,\d_count_reg[4]_i_1_n_5 ,\d_count_reg[4]_i_1_n_6 ,\d_count_reg[4]_i_1_n_7 }),
        .S({\d_count[4]_i_2_n_0 ,\d_count[4]_i_3_n_0 ,\d_count[4]_i_4_n_0 ,\d_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[4]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[5] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[4]_i_1_n_5 ),
        .Q(\d_count_reg_n_0_[6] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[4]_i_1_n_4 ),
        .Q(\d_count_reg_n_0_[7] ),
        .R(d_count_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[8]_i_1_n_7 ),
        .Q(\d_count_reg_n_0_[8] ),
        .R(d_count_toggle_s));
  CARRY4 \d_count_reg[8]_i_1 
       (.CI(\d_count_reg[4]_i_1_n_0 ),
        .CO({\d_count_reg[8]_i_1_n_0 ,\d_count_reg[8]_i_1_n_1 ,\d_count_reg[8]_i_1_n_2 ,\d_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\d_count_reg[8]_i_1_n_4 ,\d_count_reg[8]_i_1_n_5 ,\d_count_reg[8]_i_1_n_6 ,\d_count_reg[8]_i_1_n_7 }),
        .S({\d_count[8]_i_2_n_0 ,\d_count[8]_i_3_n_0 ,\d_count[8]_i_4_n_0 ,\d_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_count_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_count_reg[8]_i_1_n_6 ),
        .Q(\d_count_reg_n_0_[9] ),
        .R(d_count_toggle_s));
  LUT2 #(
    .INIT(4'h6)) 
    d_count_toggle_i_1
       (.I0(d_count_toggle_m2),
        .I1(d_count_toggle_m3),
        .O(d_count_toggle_s));
  LUT1 #(
    .INIT(2'h1)) 
    d_count_toggle_i_2
       (.I0(d_count_toggle),
        .O(d_count_toggle_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_count_toggle_m1_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(up_count_toggle),
        .Q(d_count_toggle_m1),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_count_toggle_m2_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_count_toggle_m1),
        .Q(d_count_toggle_m2),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_count_toggle_m3_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_count_toggle_m2),
        .Q(d_count_toggle_m3),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_count_toggle_reg
       (.C(hdmi_clk),
        .CE(d_count_toggle_s),
        .D(d_count_toggle_i_2_n_0),
        .Q(d_count_toggle),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_i_2
       (.I0(s_axi_aresetn),
        .O(\up_d_count_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[0]_i_2 
       (.I0(up_count_reg[3]),
        .O(\up_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[0]_i_3 
       (.I0(up_count_reg[2]),
        .O(\up_count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[0]_i_4 
       (.I0(up_count_reg[1]),
        .O(\up_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_count[0]_i_5 
       (.I0(up_count_reg[0]),
        .O(\up_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[12]_i_2 
       (.I0(up_count_reg[15]),
        .O(\up_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[12]_i_3 
       (.I0(up_count_reg[14]),
        .O(\up_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[12]_i_4 
       (.I0(up_count_reg[13]),
        .O(\up_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[12]_i_5 
       (.I0(up_count_reg[12]),
        .O(\up_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[4]_i_2 
       (.I0(up_count_reg[7]),
        .O(\up_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[4]_i_3 
       (.I0(up_count_reg[6]),
        .O(\up_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[4]_i_4 
       (.I0(up_count_reg[5]),
        .O(\up_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[4]_i_5 
       (.I0(up_count_reg[4]),
        .O(\up_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[8]_i_2 
       (.I0(up_count_reg[11]),
        .O(\up_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[8]_i_3 
       (.I0(up_count_reg[10]),
        .O(\up_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[8]_i_4 
       (.I0(up_count_reg[9]),
        .O(\up_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \up_count[8]_i_5 
       (.I0(up_count_reg[8]),
        .O(\up_count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[0]_i_1_n_7 ),
        .Q(up_count_reg[0]));
  CARRY4 \up_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\up_count_reg[0]_i_1_n_0 ,\up_count_reg[0]_i_1_n_1 ,\up_count_reg[0]_i_1_n_2 ,\up_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\up_count_reg[0]_i_1_n_4 ,\up_count_reg[0]_i_1_n_5 ,\up_count_reg[0]_i_1_n_6 ,\up_count_reg[0]_i_1_n_7 }),
        .S({\up_count[0]_i_2_n_0 ,\up_count[0]_i_3_n_0 ,\up_count[0]_i_4_n_0 ,\up_count[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[8]_i_1_n_5 ),
        .Q(up_count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[8]_i_1_n_4 ),
        .Q(up_count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[12]_i_1_n_7 ),
        .Q(up_count_reg[12]));
  CARRY4 \up_count_reg[12]_i_1 
       (.CI(\up_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_up_count_reg[12]_i_1_CO_UNCONNECTED [3],\up_count_reg[12]_i_1_n_1 ,\up_count_reg[12]_i_1_n_2 ,\up_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_count_reg[12]_i_1_n_4 ,\up_count_reg[12]_i_1_n_5 ,\up_count_reg[12]_i_1_n_6 ,\up_count_reg[12]_i_1_n_7 }),
        .S({\up_count[12]_i_2_n_0 ,\up_count[12]_i_3_n_0 ,\up_count[12]_i_4_n_0 ,\up_count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[12]_i_1_n_6 ),
        .Q(up_count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[12]_i_1_n_5 ),
        .Q(up_count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[12]_i_1_n_4 ),
        .Q(up_count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[0]_i_1_n_6 ),
        .Q(up_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[0]_i_1_n_5 ),
        .Q(up_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[0]_i_1_n_4 ),
        .Q(up_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[4]_i_1_n_7 ),
        .Q(up_count_reg[4]));
  CARRY4 \up_count_reg[4]_i_1 
       (.CI(\up_count_reg[0]_i_1_n_0 ),
        .CO({\up_count_reg[4]_i_1_n_0 ,\up_count_reg[4]_i_1_n_1 ,\up_count_reg[4]_i_1_n_2 ,\up_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_count_reg[4]_i_1_n_4 ,\up_count_reg[4]_i_1_n_5 ,\up_count_reg[4]_i_1_n_6 ,\up_count_reg[4]_i_1_n_7 }),
        .S({\up_count[4]_i_2_n_0 ,\up_count[4]_i_3_n_0 ,\up_count[4]_i_4_n_0 ,\up_count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[4]_i_1_n_6 ),
        .Q(up_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[4]_i_1_n_5 ),
        .Q(up_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[4]_i_1_n_4 ),
        .Q(up_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[8]_i_1_n_7 ),
        .Q(up_count_reg[8]));
  CARRY4 \up_count_reg[8]_i_1 
       (.CI(\up_count_reg[4]_i_1_n_0 ),
        .CO({\up_count_reg[8]_i_1_n_0 ,\up_count_reg[8]_i_1_n_1 ,\up_count_reg[8]_i_1_n_2 ,\up_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_count_reg[8]_i_1_n_4 ,\up_count_reg[8]_i_1_n_5 ,\up_count_reg[8]_i_1_n_6 ,\up_count_reg[8]_i_1_n_7 }),
        .S({\up_count[8]_i_2_n_0 ,\up_count[8]_i_3_n_0 ,\up_count[8]_i_4_n_0 ,\up_count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \up_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_count_reg[8]_i_1_n_6 ),
        .Q(up_count_reg[9]));
  LUT4 #(
    .INIT(16'h7F80)) 
    up_count_toggle_i_1
       (.I0(up_count_toggle_i_2_n_0),
        .I1(up_count_toggle_i_3_n_0),
        .I2(up_count_toggle_i_4_n_0),
        .I3(up_count_toggle),
        .O(up_count_toggle_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    up_count_toggle_i_2
       (.I0(up_count_reg[11]),
        .I1(up_count_reg[10]),
        .I2(up_count_reg[14]),
        .I3(up_count_reg[15]),
        .I4(up_count_reg[12]),
        .I5(up_count_reg[13]),
        .O(up_count_toggle_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    up_count_toggle_i_3
       (.I0(up_count_reg[5]),
        .I1(up_count_reg[4]),
        .I2(up_count_reg[8]),
        .I3(up_count_reg[9]),
        .I4(up_count_reg[6]),
        .I5(up_count_reg[7]),
        .O(up_count_toggle_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    up_count_toggle_i_4
       (.I0(up_count_reg[1]),
        .I1(up_count_reg[0]),
        .I2(up_count_reg[3]),
        .I3(up_count_reg[2]),
        .O(up_count_toggle_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_count_toggle_m1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_toggle),
        .Q(up_count_toggle_m1));
  FDCE #(
    .INIT(1'b0)) 
    up_count_toggle_m2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(up_count_toggle_m1),
        .Q(up_count_toggle_m2));
  FDCE #(
    .INIT(1'b0)) 
    up_count_toggle_m3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(up_count_toggle_m2),
        .Q(up_count_toggle_m3));
  FDCE #(
    .INIT(1'b0)) 
    up_count_toggle_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_count_toggle_i_1_n_0),
        .Q(up_count_toggle));
  LUT2 #(
    .INIT(4'h6)) 
    \up_d_count[31]_i_1 
       (.I0(up_count_toggle_m3),
        .I1(up_count_toggle_m2),
        .O(up_count_toggle_s));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[0]),
        .Q(\up_rdata_reg[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[10]),
        .Q(up_d_count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[11]),
        .Q(up_d_count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[12]),
        .Q(up_d_count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[13]),
        .Q(up_d_count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[14]),
        .Q(up_d_count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[15]),
        .Q(up_d_count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[16]),
        .Q(up_d_count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[17]),
        .Q(up_d_count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[18]),
        .Q(up_d_count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[19]),
        .Q(up_d_count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[1]),
        .Q(\up_rdata_reg[31] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[20]),
        .Q(up_d_count[20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_0),
        .D(d_count_hold[21]),
        .Q(up_d_count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_0),
        .D(d_count_hold[22]),
        .Q(up_d_count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_0),
        .D(d_count_hold[23]),
        .Q(up_d_count[23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[24]),
        .Q(\up_rdata_reg[31] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[25]),
        .Q(\up_rdata_reg[31] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[26]),
        .Q(\up_rdata_reg[31] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[27]),
        .Q(\up_rdata_reg[31] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[28]),
        .Q(\up_rdata_reg[31] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[29]),
        .Q(\up_rdata_reg[31] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[2]),
        .Q(up_d_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[30]),
        .Q(\up_rdata_reg[31] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[31]),
        .Q(\up_rdata_reg[31] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[3]),
        .Q(up_d_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[4]),
        .Q(up_d_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[5]),
        .Q(\up_rdata_reg[31] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(s_axi_aresetn_1),
        .D(d_count_hold[6]),
        .Q(\up_rdata_reg[31] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[7]),
        .Q(up_d_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[8]),
        .Q(up_d_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_d_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_count_toggle_s),
        .CLR(\up_d_count_reg[2]_0 ),
        .D(d_count_hold[9]),
        .Q(up_d_count[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[10]_i_3 
       (.I0(up_d_count[10]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[6]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[10] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[11]_i_3 
       (.I0(up_d_count[11]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[7]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[11] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[12]_i_3 
       (.I0(up_d_count[12]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[8]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[12] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[13]_i_3 
       (.I0(up_d_count[13]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[9]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[13] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[14]_i_3 
       (.I0(up_d_count[14]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[10]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[14] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[15]_i_3 
       (.I0(up_d_count[15]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[11]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[15] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[16]_i_3 
       (.I0(up_d_count[16]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[12]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[16] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[17]_i_3 
       (.I0(up_d_count[17]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[13]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[17] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[18]_i_3 
       (.I0(up_d_count[18]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[14]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[18] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[19]_i_3 
       (.I0(up_d_count[19]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[15]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[19] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[20]_i_3 
       (.I0(up_d_count[20]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[16]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[20] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[21]_i_3 
       (.I0(up_d_count[21]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[17]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[21] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[22]_i_3 
       (.I0(up_d_count[22]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[18]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[22] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[23]_i_3 
       (.I0(up_d_count[23]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[19]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[23] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[2]_i_3 
       (.I0(up_d_count[2]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[0]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[2] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[3]_i_3 
       (.I0(up_d_count[3]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[1]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[3] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[4]_i_3 
       (.I0(up_d_count[4]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[2]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[4] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[7]_i_3 
       (.I0(up_d_count[7]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[3]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[7] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[8]_i_3 
       (.I0(up_d_count[8]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[4]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[8] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[9]_i_3 
       (.I0(up_d_count[9]),
        .I1(\up_raddr_reg[2] ),
        .I2(Q[5]),
        .I3(\up_raddr_reg[2]_0 ),
        .O(\up_rdata_reg[9] ));
endmodule

(* ORIG_REF_NAME = "up_hdmi_tx" *) 
module system_axi_hdmi_core_0_up_hdmi_tx
   (SR,
    D,
    \up_xfer_data_reg[58] ,
    \up_d_count_reg[2] ,
    \up_xfer_data_reg[186] ,
    up_wack_s,
    up_rack_s,
    vdma_fs_toggle_m1_reg,
    up_resetn,
    p_8_in,
    p_7_in,
    \up_rdata_reg[2]_0 ,
    Q,
    \up_rdata_reg[3]_0 ,
    \up_rdata_reg[4]_0 ,
    \up_rdata_reg[7]_0 ,
    \up_rdata_reg[8]_0 ,
    \up_rdata_reg[9]_0 ,
    \up_rdata_reg[10]_0 ,
    \up_rdata_reg[11]_0 ,
    \up_rdata_reg[12]_0 ,
    \up_rdata_reg[13]_0 ,
    \up_rdata_reg[14]_0 ,
    \up_rdata_reg[15]_0 ,
    \up_rdata_reg[16]_0 ,
    \up_rdata_reg[17]_0 ,
    \up_rdata_reg[18]_0 ,
    \up_rdata_reg[19]_0 ,
    \up_rdata_reg[20]_0 ,
    \up_rdata_reg[21]_0 ,
    \up_rdata_reg[22]_0 ,
    \up_rdata_reg[23]_0 ,
    \up_rdata_reg[1]_0 ,
    \up_rdata_reg[23]_1 ,
    clear,
    \up_rdata_reg[23]_2 ,
    \up_rdata_reg[23]_3 ,
    \up_rdata_reg[0]_0 ,
    \up_rdata_reg[0]_1 ,
    hdmi_hl_width_s,
    \hdmi_es_data_reg[15] ,
    CO,
    hdmi_vf_width_s,
    hdmi_fs_reg,
    hdmi_enable0,
    hdmi_hs_reg,
    hdmi_hs_reg_0,
    hdmi_vs_de_reg,
    hdmi_vs_de_reg_0,
    hdmi_vs_de_reg_1,
    hdmi_vs_de_reg_2,
    hdmi_hs_de_reg,
    hdmi_hs_de_reg_0,
    hdmi_hs_de_reg_1,
    hdmi_hs_de_reg_2,
    \hdmi_data_reg[23] ,
    \up_xfer_data_reg[22] ,
    \up_data_status_reg[0] ,
    \up_data_status_reg[0]_0 ,
    up_vdma_unf_s,
    up_vdma_ovf_s,
    \up_rdata_int_reg[31] ,
    s_axi_aclk,
    hdmi_clk,
    \up_wdata_reg[1] ,
    \up_wdata_reg[0] ,
    s_axi_aresetn_0,
    up_wreq_s,
    up_rreq_s,
    m_axis_mm2s_clk,
    \up_wdata_reg[0]_0 ,
    \up_wdata_reg[0]_1 ,
    \up_wdata_reg[1]_0 ,
    \up_wdata_reg[0]_2 ,
    \up_wdata_reg[1]_1 ,
    \up_wdata_reg[0]_3 ,
    \up_wdata_reg[1]_2 ,
    \up_raddr_reg[2] ,
    \up_raddr_reg[2]_0 ,
    \up_raddr_reg[3] ,
    \up_raddr_reg[0] ,
    m_axis_mm2s_fsync_ret,
    \up_raddr_reg[4] ,
    \up_d_count_reg[24] ,
    \up_raddr_reg[4]_0 ,
    \up_d_count_reg[25] ,
    \up_d_count_reg[26] ,
    \up_d_count_reg[27] ,
    \up_d_count_reg[28] ,
    \up_d_count_reg[29] ,
    \up_d_count_reg[30] ,
    \up_d_count_reg[31] ,
    \up_raddr_reg[4]_1 ,
    \up_raddr_reg[0]_0 ,
    \hdmi_vs_count_reg[7] ,
    \hdmi_vs_count_reg[15] ,
    S,
    out,
    \hdmi_hs_count_reg[15] ,
    m_ram_reg,
    \hdmi_tpm_data_reg[23] ,
    m_ram_reg_0,
    m_ram_reg_1,
    m_ram_reg_2,
    m_ram_reg_3,
    m_ram_reg_4,
    m_ram_reg_5,
    m_ram_reg_6,
    m_ram_reg_7,
    m_ram_reg_8,
    m_ram_reg_9,
    m_ram_reg_10,
    m_ram_reg_11,
    m_ram_reg_12,
    m_ram_reg_13,
    m_ram_reg_14,
    m_ram_reg_15,
    m_ram_reg_16,
    m_ram_reg_17,
    m_ram_reg_18,
    m_ram_reg_19,
    m_ram_reg_20,
    m_ram_reg_21,
    m_ram_reg_22,
    hdmi_status_s,
    hdmi_tpm_oos_s,
    vdma_ovf_s,
    vdma_unf_s,
    vdma_tpm_oos_s,
    s_axi_aresetn,
    E,
    \up_wdata_reg[31] ,
    \up_waddr_reg[8] ,
    \up_waddr_reg[8]_0 ,
    \up_waddr_reg[4] ,
    \up_waddr_reg[1] ,
    \up_waddr_reg[1]_0 ,
    \up_waddr_reg[1]_1 ,
    \up_waddr_reg[8]_1 ,
    \up_scratch_reg[23]_0 );
  output [0:0]SR;
  output [117:0]D;
  output \up_xfer_data_reg[58] ;
  output \up_d_count_reg[2] ;
  output \up_xfer_data_reg[186] ;
  output up_wack_s;
  output up_rack_s;
  output [0:0]vdma_fs_toggle_m1_reg;
  output up_resetn;
  output [1:0]p_8_in;
  output [1:0]p_7_in;
  output \up_rdata_reg[2]_0 ;
  output [11:0]Q;
  output \up_rdata_reg[3]_0 ;
  output \up_rdata_reg[4]_0 ;
  output \up_rdata_reg[7]_0 ;
  output \up_rdata_reg[8]_0 ;
  output \up_rdata_reg[9]_0 ;
  output \up_rdata_reg[10]_0 ;
  output \up_rdata_reg[11]_0 ;
  output \up_rdata_reg[12]_0 ;
  output \up_rdata_reg[13]_0 ;
  output \up_rdata_reg[14]_0 ;
  output \up_rdata_reg[15]_0 ;
  output \up_rdata_reg[16]_0 ;
  output \up_rdata_reg[17]_0 ;
  output \up_rdata_reg[18]_0 ;
  output \up_rdata_reg[19]_0 ;
  output \up_rdata_reg[20]_0 ;
  output \up_rdata_reg[21]_0 ;
  output \up_rdata_reg[22]_0 ;
  output \up_rdata_reg[23]_0 ;
  output \up_rdata_reg[1]_0 ;
  output [7:0]\up_rdata_reg[23]_1 ;
  output clear;
  output [23:0]\up_rdata_reg[23]_2 ;
  output [7:0]\up_rdata_reg[23]_3 ;
  output \up_rdata_reg[0]_0 ;
  output \up_rdata_reg[0]_1 ;
  output [14:0]hdmi_hl_width_s;
  output [99:0]\hdmi_es_data_reg[15] ;
  output [0:0]CO;
  output [14:0]hdmi_vf_width_s;
  output [0:0]hdmi_fs_reg;
  output hdmi_enable0;
  output [3:0]hdmi_hs_reg;
  output [3:0]hdmi_hs_reg_0;
  output [3:0]hdmi_vs_de_reg;
  output [3:0]hdmi_vs_de_reg_0;
  output [3:0]hdmi_vs_de_reg_1;
  output [3:0]hdmi_vs_de_reg_2;
  output [3:0]hdmi_hs_de_reg;
  output [3:0]hdmi_hs_de_reg_0;
  output [3:0]hdmi_hs_de_reg_1;
  output [3:0]hdmi_hs_de_reg_2;
  output [23:0]\hdmi_data_reg[23] ;
  output \up_xfer_data_reg[22] ;
  output \up_data_status_reg[0] ;
  output \up_data_status_reg[0]_0 ;
  output up_vdma_unf_s;
  output up_vdma_ovf_s;
  output [31:0]\up_rdata_int_reg[31] ;
  input s_axi_aclk;
  input hdmi_clk;
  input \up_wdata_reg[1] ;
  input \up_wdata_reg[0] ;
  input s_axi_aresetn_0;
  input up_wreq_s;
  input up_rreq_s;
  input m_axis_mm2s_clk;
  input \up_wdata_reg[0]_0 ;
  input \up_wdata_reg[0]_1 ;
  input \up_wdata_reg[1]_0 ;
  input \up_wdata_reg[0]_2 ;
  input \up_wdata_reg[1]_1 ;
  input \up_wdata_reg[0]_3 ;
  input \up_wdata_reg[1]_2 ;
  input \up_raddr_reg[2] ;
  input \up_raddr_reg[2]_0 ;
  input \up_raddr_reg[3] ;
  input \up_raddr_reg[0] ;
  input m_axis_mm2s_fsync_ret;
  input \up_raddr_reg[4] ;
  input \up_d_count_reg[24] ;
  input \up_raddr_reg[4]_0 ;
  input \up_d_count_reg[25] ;
  input \up_d_count_reg[26] ;
  input \up_d_count_reg[27] ;
  input \up_d_count_reg[28] ;
  input \up_d_count_reg[29] ;
  input \up_d_count_reg[30] ;
  input \up_d_count_reg[31] ;
  input [2:0]\up_raddr_reg[4]_1 ;
  input \up_raddr_reg[0]_0 ;
  input [3:0]\hdmi_vs_count_reg[7] ;
  input [3:0]\hdmi_vs_count_reg[15] ;
  input [0:0]S;
  input [15:0]out;
  input [15:0]\hdmi_hs_count_reg[15] ;
  input m_ram_reg;
  input [23:0]\hdmi_tpm_data_reg[23] ;
  input m_ram_reg_0;
  input m_ram_reg_1;
  input m_ram_reg_2;
  input m_ram_reg_3;
  input m_ram_reg_4;
  input m_ram_reg_5;
  input m_ram_reg_6;
  input m_ram_reg_7;
  input m_ram_reg_8;
  input m_ram_reg_9;
  input m_ram_reg_10;
  input m_ram_reg_11;
  input m_ram_reg_12;
  input m_ram_reg_13;
  input m_ram_reg_14;
  input m_ram_reg_15;
  input m_ram_reg_16;
  input m_ram_reg_17;
  input m_ram_reg_18;
  input m_ram_reg_19;
  input m_ram_reg_20;
  input m_ram_reg_21;
  input m_ram_reg_22;
  input hdmi_status_s;
  input hdmi_tpm_oos_s;
  input vdma_ovf_s;
  input vdma_unf_s;
  input vdma_tpm_oos_s;
  input s_axi_aresetn;
  input [0:0]E;
  input [31:0]\up_wdata_reg[31] ;
  input [0:0]\up_waddr_reg[8] ;
  input [0:0]\up_waddr_reg[8]_0 ;
  input [0:0]\up_waddr_reg[4] ;
  input [0:0]\up_waddr_reg[1] ;
  input [0:0]\up_waddr_reg[1]_0 ;
  input [0:0]\up_waddr_reg[1]_1 ;
  input [0:0]\up_waddr_reg[8]_1 ;
  input [23:0]\up_scratch_reg[23]_0 ;

  wire [0:0]CO;
  wire [117:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire clear;
  wire [2:0]d_acc_data;
  wire d_xfer_state;
  wire d_xfer_toggle;
  wire [31:1]data10;
  wire [31:24]data12;
  wire [31:24]data13;
  wire [31:24]data15;
  wire hdmi_clk;
  wire [23:0]\hdmi_data_reg[23] ;
  wire hdmi_enable0;
  wire [99:0]\hdmi_es_data_reg[15] ;
  wire [0:0]hdmi_fs_reg;
  wire [14:0]hdmi_hl_width_s;
  wire [15:0]\hdmi_hs_count_reg[15] ;
  wire [3:0]hdmi_hs_de_reg;
  wire [3:0]hdmi_hs_de_reg_0;
  wire [3:0]hdmi_hs_de_reg_1;
  wire [3:0]hdmi_hs_de_reg_2;
  wire [3:0]hdmi_hs_reg;
  wire [3:0]hdmi_hs_reg_0;
  wire hdmi_status_s;
  wire [23:0]\hdmi_tpm_data_reg[23] ;
  wire hdmi_tpm_oos_s;
  wire [14:0]hdmi_vf_width_s;
  wire [3:0]\hdmi_vs_count_reg[15] ;
  wire [3:0]\hdmi_vs_count_reg[7] ;
  wire [3:0]hdmi_vs_de_reg;
  wire [3:0]hdmi_vs_de_reg_0;
  wire [3:0]hdmi_vs_de_reg_1;
  wire [3:0]hdmi_vs_de_reg_2;
  wire i_hdmi_xfer_status_n_4;
  wire i_vdma_xfer_status_n_2;
  wire i_vdma_xfer_status_n_3;
  wire i_vdma_xfer_status_n_4;
  wire m_axis_mm2s_clk;
  wire m_axis_mm2s_fsync_ret;
  wire m_ram_reg;
  wire m_ram_reg_0;
  wire m_ram_reg_1;
  wire m_ram_reg_10;
  wire m_ram_reg_11;
  wire m_ram_reg_12;
  wire m_ram_reg_13;
  wire m_ram_reg_14;
  wire m_ram_reg_15;
  wire m_ram_reg_16;
  wire m_ram_reg_17;
  wire m_ram_reg_18;
  wire m_ram_reg_19;
  wire m_ram_reg_2;
  wire m_ram_reg_20;
  wire m_ram_reg_21;
  wire m_ram_reg_22;
  wire m_ram_reg_3;
  wire m_ram_reg_4;
  wire m_ram_reg_5;
  wire m_ram_reg_6;
  wire m_ram_reg_7;
  wire m_ram_reg_8;
  wire m_ram_reg_9;
  wire [15:0]out;
  wire [1:0]p_7_in;
  wire [1:0]p_8_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire \up_d_count_reg[24] ;
  wire \up_d_count_reg[25] ;
  wire \up_d_count_reg[26] ;
  wire \up_d_count_reg[27] ;
  wire \up_d_count_reg[28] ;
  wire \up_d_count_reg[29] ;
  wire \up_d_count_reg[2] ;
  wire \up_d_count_reg[30] ;
  wire \up_d_count_reg[31] ;
  wire [183:33]up_data_cntrl;
  wire \up_data_status_reg[0] ;
  wire \up_data_status_reg[0]_0 ;
  wire up_preset_s;
  wire up_rack_s;
  wire \up_raddr_reg[0] ;
  wire \up_raddr_reg[0]_0 ;
  wire \up_raddr_reg[2] ;
  wire \up_raddr_reg[2]_0 ;
  wire \up_raddr_reg[3] ;
  wire \up_raddr_reg[4] ;
  wire \up_raddr_reg[4]_0 ;
  wire [2:0]\up_raddr_reg[4]_1 ;
  wire \up_rdata[24]_i_1_n_0 ;
  wire \up_rdata[24]_i_2_n_0 ;
  wire \up_rdata[25]_i_1_n_0 ;
  wire \up_rdata[25]_i_2_n_0 ;
  wire \up_rdata[26]_i_1_n_0 ;
  wire \up_rdata[26]_i_2_n_0 ;
  wire \up_rdata[27]_i_1_n_0 ;
  wire \up_rdata[27]_i_2_n_0 ;
  wire \up_rdata[28]_i_1_n_0 ;
  wire \up_rdata[28]_i_2_n_0 ;
  wire \up_rdata[29]_i_1_n_0 ;
  wire \up_rdata[29]_i_2_n_0 ;
  wire \up_rdata[30]_i_1_n_0 ;
  wire \up_rdata[30]_i_2_n_0 ;
  wire \up_rdata[31]_i_1_n_0 ;
  wire \up_rdata[31]_i_2_n_0 ;
  wire [31:0]\up_rdata_int_reg[31] ;
  wire \up_rdata_reg[0]_0 ;
  wire \up_rdata_reg[0]_1 ;
  wire \up_rdata_reg[10]_0 ;
  wire \up_rdata_reg[11]_0 ;
  wire \up_rdata_reg[12]_0 ;
  wire \up_rdata_reg[13]_0 ;
  wire \up_rdata_reg[14]_0 ;
  wire \up_rdata_reg[15]_0 ;
  wire \up_rdata_reg[16]_0 ;
  wire \up_rdata_reg[17]_0 ;
  wire \up_rdata_reg[18]_0 ;
  wire \up_rdata_reg[19]_0 ;
  wire \up_rdata_reg[1]_0 ;
  wire \up_rdata_reg[20]_0 ;
  wire \up_rdata_reg[21]_0 ;
  wire \up_rdata_reg[22]_0 ;
  wire \up_rdata_reg[23]_0 ;
  wire [7:0]\up_rdata_reg[23]_1 ;
  wire [23:0]\up_rdata_reg[23]_2 ;
  wire [7:0]\up_rdata_reg[23]_3 ;
  wire \up_rdata_reg[2]_0 ;
  wire \up_rdata_reg[3]_0 ;
  wire \up_rdata_reg[4]_0 ;
  wire \up_rdata_reg[7]_0 ;
  wire \up_rdata_reg[8]_0 ;
  wire \up_rdata_reg[9]_0 ;
  wire up_resetn;
  wire up_rreq_s;
  wire [31:24]up_scratch;
  wire [23:0]\up_scratch_reg[23]_0 ;
  wire up_vdma_ovf_s;
  wire up_vdma_unf_s;
  wire up_wack_s;
  wire [0:0]\up_waddr_reg[1] ;
  wire [0:0]\up_waddr_reg[1]_0 ;
  wire [0:0]\up_waddr_reg[1]_1 ;
  wire [0:0]\up_waddr_reg[4] ;
  wire [0:0]\up_waddr_reg[8] ;
  wire [0:0]\up_waddr_reg[8]_0 ;
  wire [0:0]\up_waddr_reg[8]_1 ;
  wire \up_wdata_reg[0] ;
  wire \up_wdata_reg[0]_0 ;
  wire \up_wdata_reg[0]_1 ;
  wire \up_wdata_reg[0]_2 ;
  wire \up_wdata_reg[0]_3 ;
  wire \up_wdata_reg[1] ;
  wire \up_wdata_reg[1]_0 ;
  wire \up_wdata_reg[1]_1 ;
  wire \up_wdata_reg[1]_2 ;
  wire [31:0]\up_wdata_reg[31] ;
  wire up_wreq_s;
  wire \up_xfer_data_reg[186] ;
  wire \up_xfer_data_reg[22] ;
  wire \up_xfer_data_reg[58] ;
  wire [0:0]vdma_fs_toggle_m1_reg;
  wire vdma_ovf_s;
  wire vdma_tpm_oos_s;
  wire vdma_unf_s;

  system_axi_hdmi_core_0_up_clock_mon i_hdmi_clock_mon
       (.Q({up_data_cntrl[183:167],up_data_cntrl[164:162]}),
        .hdmi_clk(hdmi_clk),
        .rst_reg(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_aresetn_1(\up_xfer_data_reg[186] ),
        .\up_d_count_reg[2]_0 (\up_d_count_reg[2] ),
        .\up_raddr_reg[2] (\up_raddr_reg[2] ),
        .\up_raddr_reg[2]_0 (\up_raddr_reg[2]_0 ),
        .\up_rdata_reg[10] (\up_rdata_reg[10]_0 ),
        .\up_rdata_reg[11] (\up_rdata_reg[11]_0 ),
        .\up_rdata_reg[12] (\up_rdata_reg[12]_0 ),
        .\up_rdata_reg[13] (\up_rdata_reg[13]_0 ),
        .\up_rdata_reg[14] (\up_rdata_reg[14]_0 ),
        .\up_rdata_reg[15] (\up_rdata_reg[15]_0 ),
        .\up_rdata_reg[16] (\up_rdata_reg[16]_0 ),
        .\up_rdata_reg[17] (\up_rdata_reg[17]_0 ),
        .\up_rdata_reg[18] (\up_rdata_reg[18]_0 ),
        .\up_rdata_reg[19] (\up_rdata_reg[19]_0 ),
        .\up_rdata_reg[20] (\up_rdata_reg[20]_0 ),
        .\up_rdata_reg[21] (\up_rdata_reg[21]_0 ),
        .\up_rdata_reg[22] (\up_rdata_reg[22]_0 ),
        .\up_rdata_reg[23] (\up_rdata_reg[23]_0 ),
        .\up_rdata_reg[2] (\up_rdata_reg[2]_0 ),
        .\up_rdata_reg[31] (Q),
        .\up_rdata_reg[3] (\up_rdata_reg[3]_0 ),
        .\up_rdata_reg[4] (\up_rdata_reg[4]_0 ),
        .\up_rdata_reg[7] (\up_rdata_reg[7]_0 ),
        .\up_rdata_reg[8] (\up_rdata_reg[8]_0 ),
        .\up_rdata_reg[9] (\up_rdata_reg[9]_0 ));
  system_axi_hdmi_core_0_ad_rst i_hdmi_rst_reg
       (.\d_xfer_data_reg[0] (SR),
        .hdmi_clk(hdmi_clk),
        .up_preset_s(up_preset_s));
  system_axi_hdmi_core_0_up_xfer_cntrl i_hdmi_xfer_cntrl
       (.CO(CO),
        .D({D[117:114],up_data_cntrl[183:167],D[113:112],up_data_cntrl[164:162],D[111:96],data10[1],D[95:79],data12,D[78:25],up_data_cntrl[33],D[24],data15,D[23:0]}),
        .S(S),
        .hdmi_clk(hdmi_clk),
        .\hdmi_data_reg[23] (\hdmi_data_reg[23] ),
        .hdmi_enable0(hdmi_enable0),
        .\hdmi_es_data_reg[15] (\hdmi_es_data_reg[15] ),
        .hdmi_fs_reg(hdmi_fs_reg),
        .hdmi_hl_width_s(hdmi_hl_width_s),
        .\hdmi_hs_count_reg[15] (\hdmi_hs_count_reg[15] ),
        .hdmi_hs_de_reg(hdmi_hs_de_reg),
        .hdmi_hs_de_reg_0(hdmi_hs_de_reg_0),
        .hdmi_hs_de_reg_1(hdmi_hs_de_reg_1),
        .hdmi_hs_de_reg_2(hdmi_hs_de_reg_2),
        .hdmi_hs_reg(hdmi_hs_reg),
        .hdmi_hs_reg_0(hdmi_hs_reg_0),
        .\hdmi_tpm_data_reg[23] (\hdmi_tpm_data_reg[23] ),
        .hdmi_vf_width_s(hdmi_vf_width_s),
        .\hdmi_vs_count_reg[15] (\hdmi_vs_count_reg[15] ),
        .\hdmi_vs_count_reg[7] (\hdmi_vs_count_reg[7] ),
        .hdmi_vs_de_reg(hdmi_vs_de_reg),
        .hdmi_vs_de_reg_0(hdmi_vs_de_reg_0),
        .hdmi_vs_de_reg_1(hdmi_vs_de_reg_1),
        .hdmi_vs_de_reg_2(hdmi_vs_de_reg_2),
        .m_ram_reg(m_ram_reg),
        .m_ram_reg_0(m_ram_reg_0),
        .m_ram_reg_1(m_ram_reg_1),
        .m_ram_reg_10(m_ram_reg_10),
        .m_ram_reg_11(m_ram_reg_11),
        .m_ram_reg_12(m_ram_reg_12),
        .m_ram_reg_13(m_ram_reg_13),
        .m_ram_reg_14(m_ram_reg_14),
        .m_ram_reg_15(m_ram_reg_15),
        .m_ram_reg_16(m_ram_reg_16),
        .m_ram_reg_17(m_ram_reg_17),
        .m_ram_reg_18(m_ram_reg_18),
        .m_ram_reg_19(m_ram_reg_19),
        .m_ram_reg_2(m_ram_reg_2),
        .m_ram_reg_20(m_ram_reg_20),
        .m_ram_reg_21(m_ram_reg_21),
        .m_ram_reg_22(m_ram_reg_22),
        .m_ram_reg_3(m_ram_reg_3),
        .m_ram_reg_4(m_ram_reg_4),
        .m_ram_reg_5(m_ram_reg_5),
        .m_ram_reg_6(m_ram_reg_6),
        .m_ram_reg_7(m_ram_reg_7),
        .m_ram_reg_8(m_ram_reg_8),
        .m_ram_reg_9(m_ram_reg_9),
        .out(out),
        .rst_reg(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(\up_d_count_reg[2] ),
        .\up_xfer_data_reg[186]_0 (\up_xfer_data_reg[186] ),
        .\up_xfer_data_reg[22]_0 (\up_xfer_data_reg[22] ),
        .\up_xfer_data_reg[58]_0 (\up_xfer_data_reg[58] ));
  system_axi_hdmi_core_0_up_xfer_status i_hdmi_xfer_status
       (.D(d_acc_data),
        .Q({i_vdma_xfer_status_n_2,i_vdma_xfer_status_n_3,i_vdma_xfer_status_n_4}),
        .d_xfer_state(d_xfer_state),
        .d_xfer_toggle(d_xfer_toggle),
        .d_xfer_toggle_reg_0(i_hdmi_xfer_status_n_4),
        .hdmi_clk(hdmi_clk),
        .hdmi_status_s(hdmi_status_s),
        .hdmi_tpm_oos_s(hdmi_tpm_oos_s),
        .rst_reg(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(\up_d_count_reg[2] ),
        .s_axi_aresetn_0(\up_xfer_data_reg[58] ),
        .\up_data_status_reg[0]_0 (\up_data_status_reg[0] ),
        .\up_raddr_reg[0] (\up_raddr_reg[4]_1 [0]),
        .\up_rdata_reg[0] (\up_rdata_reg[0]_0 ),
        .vdma_ovf_s(vdma_ovf_s),
        .vdma_tpm_oos_s(vdma_tpm_oos_s),
        .vdma_unf_s(vdma_unf_s));
  system_axi_hdmi_core_0_ad_rst_0 i_vdma_rst_reg
       (.clear(clear),
        .m_axis_mm2s_clk(m_axis_mm2s_clk),
        .m_axis_mm2s_fsync_ret(m_axis_mm2s_fsync_ret),
        .up_preset_s(up_preset_s),
        .up_resetn(up_resetn),
        .vdma_fs_toggle_m1_reg(vdma_fs_toggle_m1_reg));
  system_axi_hdmi_core_0_up_xfer_status__parameterized0 i_vdma_xfer_status
       (.D(d_acc_data),
        .E(i_hdmi_xfer_status_n_4),
        .Q({i_vdma_xfer_status_n_2,i_vdma_xfer_status_n_3,i_vdma_xfer_status_n_4}),
        .d_xfer_state(d_xfer_state),
        .d_xfer_toggle(d_xfer_toggle),
        .hdmi_clk(hdmi_clk),
        .rst_reg(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(\up_xfer_data_reg[186] ),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_aresetn_1(\up_d_count_reg[2] ),
        .\up_data_status_reg[0]_0 (\up_data_status_reg[0]_0 ),
        .up_vdma_ovf_s(up_vdma_ovf_s),
        .up_vdma_unf_s(up_vdma_unf_s));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[110]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(up_data_cntrl[170]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(up_data_cntrl[171]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(up_data_cntrl[172]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(up_data_cntrl[173]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(up_data_cntrl[174]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(up_data_cntrl[175]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [16]),
        .Q(up_data_cntrl[176]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [17]),
        .Q(up_data_cntrl[177]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [18]),
        .Q(up_data_cntrl[178]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [19]),
        .Q(up_data_cntrl[179]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(D[111]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [20]),
        .Q(up_data_cntrl[180]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [21]),
        .Q(up_data_cntrl[181]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [22]),
        .Q(up_data_cntrl[182]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [23]),
        .Q(up_data_cntrl[183]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(up_data_cntrl[162]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(up_data_cntrl[163]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(up_data_cntrl[164]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[112]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[113]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(up_data_cntrl[167]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(up_data_cntrl[168]));
  FDCE #(
    .INIT(1'b0)) 
    \up_const_rgb_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(up_data_cntrl[169]));
  FDCE #(
    .INIT(1'b0)) 
    up_csc_bypass_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_wdata_reg[0]_1 ),
        .Q(D[116]));
  FDCE #(
    .INIT(1'b0)) 
    up_full_range_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[1]_0 ),
        .Q(D[117]));
  FDCE #(
    .INIT(1'b0)) 
    up_hdmi_tpm_oos_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[1]_2 ),
        .Q(p_7_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [16]),
        .Q(D[71]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [26]),
        .Q(data12[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [27]),
        .Q(data12[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [28]),
        .Q(data12[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [29]),
        .Q(data12[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [30]),
        .Q(data12[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [31]),
        .Q(data12[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [17]),
        .Q(D[72]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [18]),
        .Q(D[73]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [19]),
        .Q(D[74]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [20]),
        .Q(D[75]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [21]),
        .Q(D[76]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [22]),
        .Q(D[77]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [23]),
        .Q(D[78]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [24]),
        .Q(data12[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_max_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [25]),
        .Q(data12[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[55]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(D[65]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(D[66]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(D[67]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(D[68]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(D[69]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(D[70]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(D[56]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(D[57]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(D[58]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(D[59]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[60]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[61]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(D[62]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(D[63]));
  FDCE #(
    .INIT(1'b0)) 
    \up_he_min_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[4] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(D[64]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [16]),
        .Q(\up_rdata_reg[23]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [26]),
        .Q(data10[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [27]),
        .Q(data10[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [28]),
        .Q(data10[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [29]),
        .Q(data10[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [30]),
        .Q(data10[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [31]),
        .Q(data10[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [17]),
        .Q(\up_rdata_reg[23]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [18]),
        .Q(\up_rdata_reg[23]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [19]),
        .Q(\up_rdata_reg[23]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [20]),
        .Q(\up_rdata_reg[23]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [21]),
        .Q(\up_rdata_reg[23]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [22]),
        .Q(\up_rdata_reg[23]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [23]),
        .Q(\up_rdata_reg[23]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [24]),
        .Q(data10[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_active_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [25]),
        .Q(data10[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[95]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(D[104]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(D[105]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(D[106]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(D[107]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(D[108]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(D[109]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(data10[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(D[96]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(D[97]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(D[98]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[99]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[100]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(D[101]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(D[102]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hl_width_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(D[103]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[79]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(D[89]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(D[90]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(D[91]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(D[92]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(D[93]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(D[94]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(D[80]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(D[81]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(D[82]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(D[83]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[84]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[85]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(D[86]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(D[87]));
  FDCE #(
    .INIT(1'b0)) 
    \up_hs_width_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[1] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(D[88]));
  FDCE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(up_rreq_s),
        .Q(up_rack_s));
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[0]_i_12 
       (.I0(D[114]),
        .I1(\up_raddr_reg[4]_1 [0]),
        .O(\up_rdata_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[1]_i_3 
       (.I0(up_data_cntrl[33]),
        .I1(\up_raddr_reg[3] ),
        .I2(data10[1]),
        .I3(\up_raddr_reg[0] ),
        .O(\up_rdata_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[24]_i_1 
       (.I0(\up_rdata[24]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[24]),
        .I3(\up_d_count_reg[24] ),
        .I4(up_scratch[24]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[24]_i_2 
       (.I0(data12[24]),
        .I1(data13[24]),
        .I2(data15[24]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[25]_i_1 
       (.I0(\up_rdata[25]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[25]),
        .I3(\up_d_count_reg[25] ),
        .I4(up_scratch[25]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[25]_i_2 
       (.I0(data12[25]),
        .I1(data13[25]),
        .I2(data15[25]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[26]_i_1 
       (.I0(\up_rdata[26]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[26]),
        .I3(\up_d_count_reg[26] ),
        .I4(up_scratch[26]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[26]_i_2 
       (.I0(data12[26]),
        .I1(data13[26]),
        .I2(data15[26]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[27]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[27]),
        .I3(\up_d_count_reg[27] ),
        .I4(up_scratch[27]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[27]_i_2 
       (.I0(data12[27]),
        .I1(data13[27]),
        .I2(data15[27]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata[28]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[28]),
        .I3(\up_d_count_reg[28] ),
        .I4(up_scratch[28]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[28]_i_2 
       (.I0(data12[28]),
        .I1(data13[28]),
        .I2(data15[28]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata[29]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[29]),
        .I3(\up_d_count_reg[29] ),
        .I4(up_scratch[29]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[29]_i_2 
       (.I0(data12[29]),
        .I1(data13[29]),
        .I2(data15[29]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[30]),
        .I3(\up_d_count_reg[30] ),
        .I4(up_scratch[30]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[30]_i_2 
       (.I0(data12[30]),
        .I1(data13[30]),
        .I2(data15[30]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[31]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_raddr_reg[4] ),
        .I2(data10[31]),
        .I3(\up_d_count_reg[31] ),
        .I4(up_scratch[31]),
        .I5(\up_raddr_reg[4]_0 ),
        .O(\up_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CC0000AA000000)) 
    \up_rdata[31]_i_2 
       (.I0(data12[31]),
        .I1(data13[31]),
        .I2(data15[31]),
        .I3(\up_raddr_reg[4]_1 [1]),
        .I4(\up_raddr_reg[0]_0 ),
        .I5(\up_raddr_reg[4]_1 [2]),
        .O(\up_rdata[31]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [0]),
        .Q(\up_rdata_int_reg[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [10]),
        .Q(\up_rdata_int_reg[31] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [11]),
        .Q(\up_rdata_int_reg[31] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [12]),
        .Q(\up_rdata_int_reg[31] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [13]),
        .Q(\up_rdata_int_reg[31] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [14]),
        .Q(\up_rdata_int_reg[31] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [15]),
        .Q(\up_rdata_int_reg[31] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [16]),
        .Q(\up_rdata_int_reg[31] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [17]),
        .Q(\up_rdata_int_reg[31] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [18]),
        .Q(\up_rdata_int_reg[31] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [19]),
        .Q(\up_rdata_int_reg[31] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [1]),
        .Q(\up_rdata_int_reg[31] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [20]),
        .Q(\up_rdata_int_reg[31] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [21]),
        .Q(\up_rdata_int_reg[31] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [22]),
        .Q(\up_rdata_int_reg[31] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [23]),
        .Q(\up_rdata_int_reg[31] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[24]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[25]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[26]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[27]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[28]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[29]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [2]),
        .Q(\up_rdata_int_reg[31] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[30]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_rdata[31]_i_1_n_0 ),
        .Q(\up_rdata_int_reg[31] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [3]),
        .Q(\up_rdata_int_reg[31] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [4]),
        .Q(\up_rdata_int_reg[31] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [5]),
        .Q(\up_rdata_int_reg[31] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [6]),
        .Q(\up_rdata_int_reg[31] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [7]),
        .Q(\up_rdata_int_reg[31] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [8]),
        .Q(\up_rdata_int_reg[31] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_scratch_reg[23]_0 [9]),
        .Q(\up_rdata_int_reg[31] [9]));
  FDCE #(
    .INIT(1'b0)) 
    up_resetn_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_wdata_reg[0]_0 ),
        .Q(up_resetn));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(\up_rdata_reg[23]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(\up_rdata_reg[23]_2 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(\up_rdata_reg[23]_2 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(\up_rdata_reg[23]_2 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(\up_rdata_reg[23]_2 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(\up_rdata_reg[23]_2 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(\up_rdata_reg[23]_2 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [16]),
        .Q(\up_rdata_reg[23]_2 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [17]),
        .Q(\up_rdata_reg[23]_2 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [18]),
        .Q(\up_rdata_reg[23]_2 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [19]),
        .Q(\up_rdata_reg[23]_2 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(\up_rdata_reg[23]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [20]),
        .Q(\up_rdata_reg[23]_2 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [21]),
        .Q(\up_rdata_reg[23]_2 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [22]),
        .Q(\up_rdata_reg[23]_2 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [23]),
        .Q(\up_rdata_reg[23]_2 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [24]),
        .Q(up_scratch[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [25]),
        .Q(up_scratch[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [26]),
        .Q(up_scratch[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [27]),
        .Q(up_scratch[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [28]),
        .Q(up_scratch[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [29]),
        .Q(up_scratch[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(\up_rdata_reg[23]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[30] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [30]),
        .Q(up_scratch[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[31] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [31]),
        .Q(up_scratch[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(\up_rdata_reg[23]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(\up_rdata_reg[23]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(\up_rdata_reg[23]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(\up_rdata_reg[23]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(\up_rdata_reg[23]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(\up_rdata_reg[23]_2 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_scratch_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_1 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(\up_rdata_reg[23]_2 [9]));
  FDPE #(
    .INIT(1'b1)) 
    \up_srcsel_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_wdata_reg[0] ),
        .PRE(\up_d_count_reg[2] ),
        .Q(D[114]));
  FDCE #(
    .INIT(1'b0)) 
    \up_srcsel_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[1] ),
        .Q(D[115]));
  FDCE #(
    .INIT(1'b0)) 
    up_vdma_ovf_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[1]_1 ),
        .Q(p_8_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    up_vdma_tpm_oos_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_wdata_reg[0]_3 ),
        .Q(p_7_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    up_vdma_unf_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(\up_wdata_reg[0]_2 ),
        .Q(p_8_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [16]),
        .Q(D[16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [26]),
        .Q(data15[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [27]),
        .Q(data15[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [28]),
        .Q(data15[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [29]),
        .Q(data15[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [30]),
        .Q(data15[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [31]),
        .Q(data15[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [17]),
        .Q(D[17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [18]),
        .Q(D[18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [19]),
        .Q(D[19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [20]),
        .Q(D[20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [21]),
        .Q(D[21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [22]),
        .Q(D[22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [23]),
        .Q(D[23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [24]),
        .Q(data15[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_max_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [25]),
        .Q(data15[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(D[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(D[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(D[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(D[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(D[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(D[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_ve_min_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [16]),
        .Q(\up_rdata_reg[23]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [26]),
        .Q(data13[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [27]),
        .Q(data13[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [28]),
        .Q(data13[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [29]),
        .Q(data13[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [30]),
        .Q(data13[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [31]),
        .Q(data13[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [17]),
        .Q(\up_rdata_reg[23]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [18]),
        .Q(\up_rdata_reg[23]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [19]),
        .Q(\up_rdata_reg[23]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [20]),
        .Q(\up_rdata_reg[23]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [21]),
        .Q(\up_rdata_reg[23]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [22]),
        .Q(\up_rdata_reg[23]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [23]),
        .Q(\up_rdata_reg[23]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [24]),
        .Q(data13[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_active_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[186] ),
        .D(\up_wdata_reg[31] [25]),
        .Q(data13[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[39]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(D[49]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(D[50]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(D[51]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(D[52]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(D[53]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(D[54]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(D[40]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(D[41]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(D[42]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(D[43]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[44]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[45]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(D[46]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(D[47]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vf_width_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8]_0 ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(D[48]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [0]),
        .Q(D[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [10]),
        .Q(D[33]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [11]),
        .Q(D[34]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [12]),
        .Q(D[35]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [13]),
        .Q(D[36]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [14]),
        .Q(D[37]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [15]),
        .Q(D[38]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[58] ),
        .D(\up_wdata_reg[31] [1]),
        .Q(up_data_cntrl[33]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [2]),
        .Q(D[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [3]),
        .Q(D[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [4]),
        .Q(D[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [5]),
        .Q(D[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [6]),
        .Q(D[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [7]),
        .Q(D[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [8]),
        .Q(D[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_vs_width_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_reg[8] ),
        .CLR(\up_xfer_data_reg[22] ),
        .D(\up_wdata_reg[31] [9]),
        .Q(D[32]));
  FDCE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\up_d_count_reg[2] ),
        .D(up_wreq_s),
        .Q(up_wack_s));
endmodule

(* ORIG_REF_NAME = "up_xfer_cntrl" *) 
module system_axi_hdmi_core_0_up_xfer_cntrl
   (hdmi_hl_width_s,
    \hdmi_es_data_reg[15] ,
    CO,
    hdmi_vf_width_s,
    hdmi_fs_reg,
    hdmi_enable0,
    hdmi_hs_reg,
    hdmi_hs_reg_0,
    hdmi_vs_de_reg,
    hdmi_vs_de_reg_0,
    hdmi_vs_de_reg_1,
    hdmi_vs_de_reg_2,
    hdmi_hs_de_reg,
    hdmi_hs_de_reg_0,
    hdmi_hs_de_reg_1,
    hdmi_hs_de_reg_2,
    \hdmi_data_reg[23] ,
    \up_xfer_data_reg[58]_0 ,
    \up_xfer_data_reg[22]_0 ,
    \up_xfer_data_reg[186]_0 ,
    s_axi_aclk,
    rst_reg,
    hdmi_clk,
    \hdmi_vs_count_reg[7] ,
    \hdmi_vs_count_reg[15] ,
    S,
    out,
    \hdmi_hs_count_reg[15] ,
    m_ram_reg,
    \hdmi_tpm_data_reg[23] ,
    m_ram_reg_0,
    m_ram_reg_1,
    m_ram_reg_2,
    m_ram_reg_3,
    m_ram_reg_4,
    m_ram_reg_5,
    m_ram_reg_6,
    m_ram_reg_7,
    m_ram_reg_8,
    m_ram_reg_9,
    m_ram_reg_10,
    m_ram_reg_11,
    m_ram_reg_12,
    m_ram_reg_13,
    m_ram_reg_14,
    m_ram_reg_15,
    m_ram_reg_16,
    m_ram_reg_17,
    m_ram_reg_18,
    m_ram_reg_19,
    m_ram_reg_20,
    m_ram_reg_21,
    m_ram_reg_22,
    s_axi_aresetn,
    D,
    s_axi_aresetn_0);
  output [14:0]hdmi_hl_width_s;
  output [99:0]\hdmi_es_data_reg[15] ;
  output [0:0]CO;
  output [14:0]hdmi_vf_width_s;
  output [0:0]hdmi_fs_reg;
  output hdmi_enable0;
  output [3:0]hdmi_hs_reg;
  output [3:0]hdmi_hs_reg_0;
  output [3:0]hdmi_vs_de_reg;
  output [3:0]hdmi_vs_de_reg_0;
  output [3:0]hdmi_vs_de_reg_1;
  output [3:0]hdmi_vs_de_reg_2;
  output [3:0]hdmi_hs_de_reg;
  output [3:0]hdmi_hs_de_reg_0;
  output [3:0]hdmi_hs_de_reg_1;
  output [3:0]hdmi_hs_de_reg_2;
  output [23:0]\hdmi_data_reg[23] ;
  output \up_xfer_data_reg[58]_0 ;
  output \up_xfer_data_reg[22]_0 ;
  output \up_xfer_data_reg[186]_0 ;
  input s_axi_aclk;
  input rst_reg;
  input hdmi_clk;
  input [3:0]\hdmi_vs_count_reg[7] ;
  input [3:0]\hdmi_vs_count_reg[15] ;
  input [0:0]S;
  input [15:0]out;
  input [15:0]\hdmi_hs_count_reg[15] ;
  input m_ram_reg;
  input [23:0]\hdmi_tpm_data_reg[23] ;
  input m_ram_reg_0;
  input m_ram_reg_1;
  input m_ram_reg_2;
  input m_ram_reg_3;
  input m_ram_reg_4;
  input m_ram_reg_5;
  input m_ram_reg_6;
  input m_ram_reg_7;
  input m_ram_reg_8;
  input m_ram_reg_9;
  input m_ram_reg_10;
  input m_ram_reg_11;
  input m_ram_reg_12;
  input m_ram_reg_13;
  input m_ram_reg_14;
  input m_ram_reg_15;
  input m_ram_reg_16;
  input m_ram_reg_17;
  input m_ram_reg_18;
  input m_ram_reg_19;
  input m_ram_reg_20;
  input m_ram_reg_21;
  input m_ram_reg_22;
  input s_axi_aresetn;
  input [155:0]D;
  input s_axi_aresetn_0;

  wire [0:0]CO;
  wire [155:0]D;
  wire [0:0]S;
  wire d_xfer_toggle;
  wire d_xfer_toggle_m1;
  wire d_xfer_toggle_m2;
  wire d_xfer_toggle_m3;
  wire d_xfer_toggle_s;
  wire hdmi_clk;
  wire [23:0]hdmi_const_rgb_s;
  wire [23:0]\hdmi_data_reg[23] ;
  wire hdmi_enable0;
  wire [99:0]\hdmi_es_data_reg[15] ;
  wire hdmi_fs_i_10_n_0;
  wire hdmi_fs_i_11_n_0;
  wire hdmi_fs_i_12_n_0;
  wire hdmi_fs_i_8_n_0;
  wire hdmi_fs_i_9_n_0;
  wire [0:0]hdmi_fs_reg;
  wire hdmi_fs_reg_i_2_n_3;
  wire hdmi_fs_reg_i_6_n_0;
  wire hdmi_fs_reg_i_6_n_1;
  wire hdmi_fs_reg_i_6_n_2;
  wire hdmi_fs_reg_i_6_n_3;
  wire [14:0]hdmi_hl_width_s;
  wire [15:1]hdmi_hl_width_s__0;
  wire \hdmi_hs_count[0]_i_28_n_0 ;
  wire \hdmi_hs_count[0]_i_29_n_0 ;
  wire \hdmi_hs_count[0]_i_30_n_0 ;
  wire \hdmi_hs_count[0]_i_31_n_0 ;
  wire \hdmi_hs_count[0]_i_32_n_0 ;
  wire \hdmi_hs_count[0]_i_33_n_0 ;
  wire \hdmi_hs_count[0]_i_34_n_0 ;
  wire \hdmi_hs_count[0]_i_35_n_0 ;
  wire \hdmi_hs_count[0]_i_36_n_0 ;
  wire \hdmi_hs_count[0]_i_37_n_0 ;
  wire \hdmi_hs_count[0]_i_38_n_0 ;
  wire \hdmi_hs_count[0]_i_39_n_0 ;
  wire \hdmi_hs_count[0]_i_40_n_0 ;
  wire \hdmi_hs_count[0]_i_41_n_0 ;
  wire \hdmi_hs_count[0]_i_42_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_24_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_24_n_3 ;
  wire \hdmi_hs_count_reg[0]_i_25_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_25_n_1 ;
  wire \hdmi_hs_count_reg[0]_i_25_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_25_n_3 ;
  wire \hdmi_hs_count_reg[0]_i_26_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_26_n_1 ;
  wire \hdmi_hs_count_reg[0]_i_26_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_26_n_3 ;
  wire \hdmi_hs_count_reg[0]_i_27_n_0 ;
  wire \hdmi_hs_count_reg[0]_i_27_n_1 ;
  wire \hdmi_hs_count_reg[0]_i_27_n_2 ;
  wire \hdmi_hs_count_reg[0]_i_27_n_3 ;
  wire [15:0]\hdmi_hs_count_reg[15] ;
  wire [3:0]hdmi_hs_de_reg;
  wire [3:0]hdmi_hs_de_reg_0;
  wire [3:0]hdmi_hs_de_reg_1;
  wire [3:0]hdmi_hs_de_reg_2;
  wire [3:0]hdmi_hs_reg;
  wire [3:0]hdmi_hs_reg_0;
  wire [1:0]hdmi_srcsel_s;
  wire [23:0]\hdmi_tpm_data_reg[23] ;
  wire [14:0]hdmi_vf_width_s;
  wire [15:1]hdmi_vf_width_s__0;
  wire \hdmi_vs_count[0]_i_29_n_0 ;
  wire \hdmi_vs_count[0]_i_30_n_0 ;
  wire \hdmi_vs_count[0]_i_31_n_0 ;
  wire \hdmi_vs_count[0]_i_32_n_0 ;
  wire \hdmi_vs_count[0]_i_33_n_0 ;
  wire \hdmi_vs_count[0]_i_34_n_0 ;
  wire \hdmi_vs_count[0]_i_35_n_0 ;
  wire \hdmi_vs_count[0]_i_36_n_0 ;
  wire \hdmi_vs_count[0]_i_37_n_0 ;
  wire \hdmi_vs_count[0]_i_38_n_0 ;
  wire \hdmi_vs_count[0]_i_39_n_0 ;
  wire \hdmi_vs_count[0]_i_40_n_0 ;
  wire \hdmi_vs_count[0]_i_41_n_0 ;
  wire \hdmi_vs_count[0]_i_42_n_0 ;
  wire \hdmi_vs_count[0]_i_43_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_25_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_25_n_3 ;
  wire \hdmi_vs_count_reg[0]_i_26_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_26_n_1 ;
  wire \hdmi_vs_count_reg[0]_i_26_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_26_n_3 ;
  wire \hdmi_vs_count_reg[0]_i_27_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_27_n_1 ;
  wire \hdmi_vs_count_reg[0]_i_27_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_27_n_3 ;
  wire \hdmi_vs_count_reg[0]_i_28_n_0 ;
  wire \hdmi_vs_count_reg[0]_i_28_n_1 ;
  wire \hdmi_vs_count_reg[0]_i_28_n_2 ;
  wire \hdmi_vs_count_reg[0]_i_28_n_3 ;
  wire [3:0]\hdmi_vs_count_reg[15] ;
  wire [3:0]\hdmi_vs_count_reg[7] ;
  wire [3:0]hdmi_vs_de_reg;
  wire [3:0]hdmi_vs_de_reg_0;
  wire [3:0]hdmi_vs_de_reg_1;
  wire [3:0]hdmi_vs_de_reg_2;
  wire hdmi_vs_i_11_n_0;
  wire hdmi_vs_i_12_n_0;
  wire hdmi_vs_i_13_n_0;
  wire hdmi_vs_i_14_n_0;
  wire hdmi_vs_i_3_n_0;
  wire hdmi_vs_i_4_n_0;
  wire hdmi_vs_i_5_n_0;
  wire hdmi_vs_i_6_n_0;
  wire hdmi_vs_reg_i_1_n_1;
  wire hdmi_vs_reg_i_1_n_2;
  wire hdmi_vs_reg_i_1_n_3;
  wire hdmi_vs_reg_i_2_n_0;
  wire hdmi_vs_reg_i_2_n_1;
  wire hdmi_vs_reg_i_2_n_2;
  wire hdmi_vs_reg_i_2_n_3;
  wire m_ram_reg;
  wire m_ram_reg_0;
  wire m_ram_reg_1;
  wire m_ram_reg_10;
  wire m_ram_reg_11;
  wire m_ram_reg_12;
  wire m_ram_reg_13;
  wire m_ram_reg_14;
  wire m_ram_reg_15;
  wire m_ram_reg_16;
  wire m_ram_reg_17;
  wire m_ram_reg_18;
  wire m_ram_reg_19;
  wire m_ram_reg_2;
  wire m_ram_reg_20;
  wire m_ram_reg_21;
  wire m_ram_reg_22;
  wire m_ram_reg_3;
  wire m_ram_reg_4;
  wire m_ram_reg_5;
  wire m_ram_reg_6;
  wire m_ram_reg_7;
  wire m_ram_reg_8;
  wire m_ram_reg_9;
  wire [15:0]out;
  wire [5:0]p_0_in__0;
  wire p_1_in;
  wire rst_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [5:0]up_xfer_count_reg__0;
  wire [187:0]up_xfer_data;
  wire \up_xfer_data_reg[186]_0 ;
  wire \up_xfer_data_reg[22]_0 ;
  wire \up_xfer_data_reg[58]_0 ;
  wire up_xfer_state;
  wire up_xfer_state_m1;
  wire up_xfer_state_m2;
  wire up_xfer_toggle;
  wire up_xfer_toggle_i_1_n_0;
  wire up_xfer_toggle_i_3_n_0;
  wire up_xfer_toggle_i_4_n_0;
  wire [3:2]NLW_hdmi_fs_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_hdmi_fs_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_fs_reg_i_6_O_UNCONNECTED;
  wire [3:2]\NLW_hdmi_hs_count_reg[0]_i_24_CO_UNCONNECTED ;
  wire [3:3]\NLW_hdmi_hs_count_reg[0]_i_24_O_UNCONNECTED ;
  wire [3:2]\NLW_hdmi_vs_count_reg[0]_i_25_CO_UNCONNECTED ;
  wire [3:3]\NLW_hdmi_vs_count_reg[0]_i_25_O_UNCONNECTED ;
  wire [3:0]NLW_hdmi_vs_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_hdmi_vs_reg_i_2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \d_data_cntrl[187]_i_1 
       (.I0(d_xfer_toggle_m3),
        .I1(d_xfer_toggle_m2),
        .O(d_xfer_toggle_s));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[0] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[0]),
        .Q(\hdmi_es_data_reg[15] [0]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[100] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[100]),
        .Q(\hdmi_es_data_reg[15] [69]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[101] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[101]),
        .Q(\hdmi_es_data_reg[15] [70]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[102] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[102]),
        .Q(\hdmi_es_data_reg[15] [71]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[103] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[103]),
        .Q(\hdmi_es_data_reg[15] [72]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[104] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[104]),
        .Q(\hdmi_es_data_reg[15] [73]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[105] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[105]),
        .Q(\hdmi_es_data_reg[15] [74]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[106] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[106]),
        .Q(\hdmi_es_data_reg[15] [75]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[107] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[107]),
        .Q(\hdmi_es_data_reg[15] [76]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[108] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[108]),
        .Q(\hdmi_es_data_reg[15] [77]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[109] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[109]),
        .Q(\hdmi_es_data_reg[15] [78]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[10] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[10]),
        .Q(\hdmi_es_data_reg[15] [10]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[110] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[110]),
        .Q(\hdmi_es_data_reg[15] [79]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[111] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[111]),
        .Q(\hdmi_es_data_reg[15] [80]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[112] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[112]),
        .Q(\hdmi_es_data_reg[15] [81]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[113] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[113]),
        .Q(\hdmi_es_data_reg[15] [82]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[114] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[114]),
        .Q(\hdmi_es_data_reg[15] [83]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[115] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[115]),
        .Q(\hdmi_es_data_reg[15] [84]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[116] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[116]),
        .Q(\hdmi_es_data_reg[15] [85]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[117] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[117]),
        .Q(\hdmi_es_data_reg[15] [86]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[118] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[118]),
        .Q(\hdmi_es_data_reg[15] [87]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[119] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[119]),
        .Q(\hdmi_es_data_reg[15] [88]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[11] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[11]),
        .Q(\hdmi_es_data_reg[15] [11]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[120] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[120]),
        .Q(\hdmi_es_data_reg[15] [89]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[121] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[121]),
        .Q(\hdmi_es_data_reg[15] [90]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[122] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[122]),
        .Q(\hdmi_es_data_reg[15] [91]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[123] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[123]),
        .Q(\hdmi_es_data_reg[15] [92]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[124] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[124]),
        .Q(\hdmi_es_data_reg[15] [93]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[125] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[125]),
        .Q(\hdmi_es_data_reg[15] [94]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[126] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[126]),
        .Q(\hdmi_es_data_reg[15] [95]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[127] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[127]),
        .Q(\hdmi_es_data_reg[15] [96]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[128] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[128]),
        .Q(\hdmi_es_data_reg[15] [97]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[129] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[129]),
        .Q(hdmi_hl_width_s__0[1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[12] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[12]),
        .Q(\hdmi_es_data_reg[15] [12]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[130] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[130]),
        .Q(hdmi_hl_width_s__0[2]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[131] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[131]),
        .Q(hdmi_hl_width_s__0[3]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[132] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[132]),
        .Q(hdmi_hl_width_s__0[4]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[133] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[133]),
        .Q(hdmi_hl_width_s__0[5]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[134] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[134]),
        .Q(hdmi_hl_width_s__0[6]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[135] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[135]),
        .Q(hdmi_hl_width_s__0[7]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[136] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[136]),
        .Q(hdmi_hl_width_s__0[8]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[137] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[137]),
        .Q(hdmi_hl_width_s__0[9]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[138] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[138]),
        .Q(hdmi_hl_width_s__0[10]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[139] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[139]),
        .Q(hdmi_hl_width_s__0[11]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[13] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[13]),
        .Q(\hdmi_es_data_reg[15] [13]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[140] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[140]),
        .Q(hdmi_hl_width_s__0[12]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[141] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[141]),
        .Q(hdmi_hl_width_s__0[13]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[142] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[142]),
        .Q(hdmi_hl_width_s__0[14]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[143] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[143]),
        .Q(hdmi_hl_width_s__0[15]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[14] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[14]),
        .Q(\hdmi_es_data_reg[15] [14]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[15] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[15]),
        .Q(\hdmi_es_data_reg[15] [15]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[160] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[160]),
        .Q(hdmi_const_rgb_s[0]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[161] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[161]),
        .Q(hdmi_const_rgb_s[1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[162] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[162]),
        .Q(hdmi_const_rgb_s[2]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[163] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[163]),
        .Q(hdmi_const_rgb_s[3]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[164] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[164]),
        .Q(hdmi_const_rgb_s[4]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[165] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[165]),
        .Q(hdmi_const_rgb_s[5]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[166] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[166]),
        .Q(hdmi_const_rgb_s[6]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[167] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[167]),
        .Q(hdmi_const_rgb_s[7]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[168] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[168]),
        .Q(hdmi_const_rgb_s[8]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[169] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[169]),
        .Q(hdmi_const_rgb_s[9]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[16] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[16]),
        .Q(\hdmi_es_data_reg[15] [16]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[170] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[170]),
        .Q(hdmi_const_rgb_s[10]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[171] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[171]),
        .Q(hdmi_const_rgb_s[11]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[172] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[172]),
        .Q(hdmi_const_rgb_s[12]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[173] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[173]),
        .Q(hdmi_const_rgb_s[13]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[174] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[174]),
        .Q(hdmi_const_rgb_s[14]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[175] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[175]),
        .Q(hdmi_const_rgb_s[15]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[176] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[176]),
        .Q(hdmi_const_rgb_s[16]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[177] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[177]),
        .Q(hdmi_const_rgb_s[17]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[178] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[178]),
        .Q(hdmi_const_rgb_s[18]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[179] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[179]),
        .Q(hdmi_const_rgb_s[19]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[17] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[17]),
        .Q(\hdmi_es_data_reg[15] [17]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[180] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[180]),
        .Q(hdmi_const_rgb_s[20]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[181] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[181]),
        .Q(hdmi_const_rgb_s[21]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[182] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[182]),
        .Q(hdmi_const_rgb_s[22]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[183] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[183]),
        .Q(hdmi_const_rgb_s[23]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[184] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[184]),
        .Q(hdmi_srcsel_s[0]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[185] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[185]),
        .Q(hdmi_srcsel_s[1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[186] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[186]),
        .Q(\hdmi_es_data_reg[15] [98]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[187] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[187]),
        .Q(\hdmi_es_data_reg[15] [99]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[18] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[18]),
        .Q(\hdmi_es_data_reg[15] [18]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[19] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[19]),
        .Q(\hdmi_es_data_reg[15] [19]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[1] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[1]),
        .Q(\hdmi_es_data_reg[15] [1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[20] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[20]),
        .Q(\hdmi_es_data_reg[15] [20]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[21] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[21]),
        .Q(\hdmi_es_data_reg[15] [21]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[22] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[22]),
        .Q(\hdmi_es_data_reg[15] [22]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[23] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[23]),
        .Q(\hdmi_es_data_reg[15] [23]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[24] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[24]),
        .Q(\hdmi_es_data_reg[15] [24]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[25] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[25]),
        .Q(\hdmi_es_data_reg[15] [25]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[26] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[26]),
        .Q(\hdmi_es_data_reg[15] [26]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[27] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[27]),
        .Q(\hdmi_es_data_reg[15] [27]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[28] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[28]),
        .Q(\hdmi_es_data_reg[15] [28]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[29] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[29]),
        .Q(\hdmi_es_data_reg[15] [29]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[2] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[2]),
        .Q(\hdmi_es_data_reg[15] [2]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[30] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[30]),
        .Q(\hdmi_es_data_reg[15] [30]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[31] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[31]),
        .Q(\hdmi_es_data_reg[15] [31]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[32] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[32]),
        .Q(\hdmi_es_data_reg[15] [32]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[33] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[33]),
        .Q(\hdmi_es_data_reg[15] [33]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[34] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[34]),
        .Q(\hdmi_es_data_reg[15] [34]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[35] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[35]),
        .Q(\hdmi_es_data_reg[15] [35]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[36] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[36]),
        .Q(\hdmi_es_data_reg[15] [36]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[37] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[37]),
        .Q(\hdmi_es_data_reg[15] [37]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[38] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[38]),
        .Q(\hdmi_es_data_reg[15] [38]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[39] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[39]),
        .Q(\hdmi_es_data_reg[15] [39]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[3] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[3]),
        .Q(\hdmi_es_data_reg[15] [3]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[40] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[40]),
        .Q(\hdmi_es_data_reg[15] [40]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[41] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[41]),
        .Q(\hdmi_es_data_reg[15] [41]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[42] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[42]),
        .Q(\hdmi_es_data_reg[15] [42]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[43] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[43]),
        .Q(\hdmi_es_data_reg[15] [43]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[44] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[44]),
        .Q(\hdmi_es_data_reg[15] [44]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[45] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[45]),
        .Q(\hdmi_es_data_reg[15] [45]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[46] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[46]),
        .Q(\hdmi_es_data_reg[15] [46]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[47] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[47]),
        .Q(\hdmi_es_data_reg[15] [47]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[48] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[48]),
        .Q(\hdmi_es_data_reg[15] [48]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[49] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[49]),
        .Q(hdmi_vf_width_s__0[1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[4] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[4]),
        .Q(\hdmi_es_data_reg[15] [4]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[50] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[50]),
        .Q(hdmi_vf_width_s__0[2]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[51] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[51]),
        .Q(hdmi_vf_width_s__0[3]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[52] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[52]),
        .Q(hdmi_vf_width_s__0[4]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[53] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[53]),
        .Q(hdmi_vf_width_s__0[5]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[54] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[54]),
        .Q(hdmi_vf_width_s__0[6]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[55] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[55]),
        .Q(hdmi_vf_width_s__0[7]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[56] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[56]),
        .Q(hdmi_vf_width_s__0[8]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[57] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[57]),
        .Q(hdmi_vf_width_s__0[9]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[58] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[58]),
        .Q(hdmi_vf_width_s__0[10]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[59] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[59]),
        .Q(hdmi_vf_width_s__0[11]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[5] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[5]),
        .Q(\hdmi_es_data_reg[15] [5]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[60] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[60]),
        .Q(hdmi_vf_width_s__0[12]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[61] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[61]),
        .Q(hdmi_vf_width_s__0[13]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[62] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[62]),
        .Q(hdmi_vf_width_s__0[14]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[63] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[63]),
        .Q(hdmi_vf_width_s__0[15]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[6] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[6]),
        .Q(\hdmi_es_data_reg[15] [6]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[7] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[7]),
        .Q(\hdmi_es_data_reg[15] [7]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[80] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[80]),
        .Q(\hdmi_es_data_reg[15] [49]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[81] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[81]),
        .Q(\hdmi_es_data_reg[15] [50]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[82] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[82]),
        .Q(\hdmi_es_data_reg[15] [51]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[83] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[83]),
        .Q(\hdmi_es_data_reg[15] [52]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[84] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[84]),
        .Q(\hdmi_es_data_reg[15] [53]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[85] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[85]),
        .Q(\hdmi_es_data_reg[15] [54]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[86] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[86]),
        .Q(\hdmi_es_data_reg[15] [55]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[87] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[87]),
        .Q(\hdmi_es_data_reg[15] [56]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[88] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[88]),
        .Q(\hdmi_es_data_reg[15] [57]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[89] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[89]),
        .Q(\hdmi_es_data_reg[15] [58]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[8] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[8]),
        .Q(\hdmi_es_data_reg[15] [8]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[90] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[90]),
        .Q(\hdmi_es_data_reg[15] [59]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[91] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[91]),
        .Q(\hdmi_es_data_reg[15] [60]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[92] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[92]),
        .Q(\hdmi_es_data_reg[15] [61]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[93] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[93]),
        .Q(\hdmi_es_data_reg[15] [62]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[94] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[94]),
        .Q(\hdmi_es_data_reg[15] [63]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[95] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[95]),
        .Q(\hdmi_es_data_reg[15] [64]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[96] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[96]),
        .Q(\hdmi_es_data_reg[15] [65]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[97] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[97]),
        .Q(\hdmi_es_data_reg[15] [66]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[98] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[98]),
        .Q(\hdmi_es_data_reg[15] [67]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[99] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[99]),
        .Q(\hdmi_es_data_reg[15] [68]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_data_cntrl_reg[9] 
       (.C(hdmi_clk),
        .CE(d_xfer_toggle_s),
        .D(up_xfer_data[9]),
        .Q(\hdmi_es_data_reg[15] [9]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_toggle_m1_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(up_xfer_toggle),
        .Q(d_xfer_toggle_m1),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_toggle_m2_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_toggle_m1),
        .Q(d_xfer_toggle_m2),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_toggle_m3_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_toggle_m2),
        .Q(d_xfer_toggle_m3),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_toggle_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_toggle_m3),
        .Q(d_xfer_toggle),
        .R(rst_reg));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[0]_i_1 
       (.I0(hdmi_const_rgb_s[0]),
        .I1(m_ram_reg_10),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [0]),
        .O(\hdmi_data_reg[23] [0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[10]_i_1 
       (.I0(hdmi_const_rgb_s[10]),
        .I1(m_ram_reg),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [10]),
        .O(\hdmi_data_reg[23] [10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[11]_i_1 
       (.I0(hdmi_const_rgb_s[11]),
        .I1(m_ram_reg_0),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [11]),
        .O(\hdmi_data_reg[23] [11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[12]_i_1 
       (.I0(hdmi_const_rgb_s[12]),
        .I1(m_ram_reg_22),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [12]),
        .O(\hdmi_data_reg[23] [12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[13]_i_1 
       (.I0(hdmi_const_rgb_s[13]),
        .I1(m_ram_reg_20),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [13]),
        .O(\hdmi_data_reg[23] [13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[14]_i_1 
       (.I0(hdmi_const_rgb_s[14]),
        .I1(m_ram_reg_21),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [14]),
        .O(\hdmi_data_reg[23] [14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[15]_i_1 
       (.I0(hdmi_const_rgb_s[15]),
        .I1(m_ram_reg_19),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [15]),
        .O(\hdmi_data_reg[23] [15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[16]_i_1 
       (.I0(hdmi_const_rgb_s[16]),
        .I1(m_ram_reg_17),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [16]),
        .O(\hdmi_data_reg[23] [16]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[17]_i_1 
       (.I0(hdmi_const_rgb_s[17]),
        .I1(m_ram_reg_18),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [17]),
        .O(\hdmi_data_reg[23] [17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[18]_i_1 
       (.I0(hdmi_const_rgb_s[18]),
        .I1(m_ram_reg_16),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [18]),
        .O(\hdmi_data_reg[23] [18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[19]_i_1 
       (.I0(hdmi_const_rgb_s[19]),
        .I1(m_ram_reg_14),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [19]),
        .O(\hdmi_data_reg[23] [19]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[1]_i_1 
       (.I0(hdmi_const_rgb_s[1]),
        .I1(m_ram_reg_8),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [1]),
        .O(\hdmi_data_reg[23] [1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[20]_i_1 
       (.I0(hdmi_const_rgb_s[20]),
        .I1(m_ram_reg_15),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [20]),
        .O(\hdmi_data_reg[23] [20]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[21]_i_1 
       (.I0(hdmi_const_rgb_s[21]),
        .I1(m_ram_reg_13),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [21]),
        .O(\hdmi_data_reg[23] [21]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[22]_i_1 
       (.I0(hdmi_const_rgb_s[22]),
        .I1(m_ram_reg_11),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [22]),
        .O(\hdmi_data_reg[23] [22]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[23]_i_1 
       (.I0(hdmi_const_rgb_s[23]),
        .I1(m_ram_reg_12),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [23]),
        .O(\hdmi_data_reg[23] [23]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[2]_i_1 
       (.I0(hdmi_const_rgb_s[2]),
        .I1(m_ram_reg_9),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [2]),
        .O(\hdmi_data_reg[23] [2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[3]_i_1 
       (.I0(hdmi_const_rgb_s[3]),
        .I1(m_ram_reg_7),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [3]),
        .O(\hdmi_data_reg[23] [3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[4]_i_1 
       (.I0(hdmi_const_rgb_s[4]),
        .I1(m_ram_reg_5),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [4]),
        .O(\hdmi_data_reg[23] [4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[5]_i_1 
       (.I0(hdmi_const_rgb_s[5]),
        .I1(m_ram_reg_6),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [5]),
        .O(\hdmi_data_reg[23] [5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[6]_i_1 
       (.I0(hdmi_const_rgb_s[6]),
        .I1(m_ram_reg_4),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [6]),
        .O(\hdmi_data_reg[23] [6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[7]_i_1 
       (.I0(hdmi_const_rgb_s[7]),
        .I1(m_ram_reg_2),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [7]),
        .O(\hdmi_data_reg[23] [7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[8]_i_1 
       (.I0(hdmi_const_rgb_s[8]),
        .I1(m_ram_reg_3),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [8]),
        .O(\hdmi_data_reg[23] [8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \hdmi_data[9]_i_1 
       (.I0(hdmi_const_rgb_s[9]),
        .I1(m_ram_reg_1),
        .I2(hdmi_srcsel_s[0]),
        .I3(hdmi_srcsel_s[1]),
        .I4(\hdmi_tpm_data_reg[23] [9]),
        .O(\hdmi_data_reg[23] [9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    hdmi_enable_inv_i_1
       (.I0(hdmi_srcsel_s[1]),
        .I1(hdmi_srcsel_s[0]),
        .O(hdmi_enable0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_fs_i_10
       (.I0(\hdmi_es_data_reg[15] [38]),
        .I1(out[6]),
        .I2(\hdmi_es_data_reg[15] [39]),
        .I3(out[7]),
        .I4(out[8]),
        .I5(\hdmi_es_data_reg[15] [40]),
        .O(hdmi_fs_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_fs_i_11
       (.I0(\hdmi_es_data_reg[15] [36]),
        .I1(out[4]),
        .I2(\hdmi_es_data_reg[15] [37]),
        .I3(out[5]),
        .I4(out[3]),
        .I5(\hdmi_es_data_reg[15] [35]),
        .O(hdmi_fs_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_fs_i_12
       (.I0(\hdmi_es_data_reg[15] [32]),
        .I1(out[0]),
        .I2(\hdmi_es_data_reg[15] [33]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\hdmi_es_data_reg[15] [34]),
        .O(hdmi_fs_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_fs_i_8
       (.I0(\hdmi_es_data_reg[15] [44]),
        .I1(out[12]),
        .I2(\hdmi_es_data_reg[15] [45]),
        .I3(out[13]),
        .I4(out[14]),
        .I5(\hdmi_es_data_reg[15] [46]),
        .O(hdmi_fs_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    hdmi_fs_i_9
       (.I0(\hdmi_es_data_reg[15] [42]),
        .I1(out[10]),
        .I2(\hdmi_es_data_reg[15] [43]),
        .I3(out[11]),
        .I4(out[9]),
        .I5(\hdmi_es_data_reg[15] [41]),
        .O(hdmi_fs_i_9_n_0));
  CARRY4 hdmi_fs_reg_i_2
       (.CI(hdmi_fs_reg_i_6_n_0),
        .CO({NLW_hdmi_fs_reg_i_2_CO_UNCONNECTED[3:2],hdmi_fs_reg,hdmi_fs_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_hdmi_fs_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,S,hdmi_fs_i_8_n_0}));
  CARRY4 hdmi_fs_reg_i_6
       (.CI(1'b0),
        .CO({hdmi_fs_reg_i_6_n_0,hdmi_fs_reg_i_6_n_1,hdmi_fs_reg_i_6_n_2,hdmi_fs_reg_i_6_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_hdmi_fs_reg_i_6_O_UNCONNECTED[3:0]),
        .S({hdmi_fs_i_9_n_0,hdmi_fs_i_10_n_0,hdmi_fs_i_11_n_0,hdmi_fs_i_12_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_28 
       (.I0(hdmi_hl_width_s__0[15]),
        .O(\hdmi_hs_count[0]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_29 
       (.I0(hdmi_hl_width_s__0[14]),
        .O(\hdmi_hs_count[0]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_30 
       (.I0(hdmi_hl_width_s__0[13]),
        .O(\hdmi_hs_count[0]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_31 
       (.I0(hdmi_hl_width_s__0[12]),
        .O(\hdmi_hs_count[0]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_32 
       (.I0(hdmi_hl_width_s__0[11]),
        .O(\hdmi_hs_count[0]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_33 
       (.I0(hdmi_hl_width_s__0[10]),
        .O(\hdmi_hs_count[0]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_34 
       (.I0(hdmi_hl_width_s__0[9]),
        .O(\hdmi_hs_count[0]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_35 
       (.I0(hdmi_hl_width_s__0[8]),
        .O(\hdmi_hs_count[0]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_36 
       (.I0(hdmi_hl_width_s__0[7]),
        .O(\hdmi_hs_count[0]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_37 
       (.I0(hdmi_hl_width_s__0[6]),
        .O(\hdmi_hs_count[0]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_38 
       (.I0(hdmi_hl_width_s__0[5]),
        .O(\hdmi_hs_count[0]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_39 
       (.I0(hdmi_hl_width_s__0[4]),
        .O(\hdmi_hs_count[0]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_40 
       (.I0(hdmi_hl_width_s__0[3]),
        .O(\hdmi_hs_count[0]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_41 
       (.I0(hdmi_hl_width_s__0[2]),
        .O(\hdmi_hs_count[0]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_hs_count[0]_i_42 
       (.I0(hdmi_hl_width_s__0[1]),
        .O(\hdmi_hs_count[0]_i_42_n_0 ));
  CARRY4 \hdmi_hs_count_reg[0]_i_24 
       (.CI(\hdmi_hs_count_reg[0]_i_25_n_0 ),
        .CO({\NLW_hdmi_hs_count_reg[0]_i_24_CO_UNCONNECTED [3:2],\hdmi_hs_count_reg[0]_i_24_n_2 ,\hdmi_hs_count_reg[0]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,hdmi_hl_width_s__0[14:13]}),
        .O({\NLW_hdmi_hs_count_reg[0]_i_24_O_UNCONNECTED [3],hdmi_hl_width_s[14:12]}),
        .S({1'b0,\hdmi_hs_count[0]_i_28_n_0 ,\hdmi_hs_count[0]_i_29_n_0 ,\hdmi_hs_count[0]_i_30_n_0 }));
  CARRY4 \hdmi_hs_count_reg[0]_i_25 
       (.CI(\hdmi_hs_count_reg[0]_i_26_n_0 ),
        .CO({\hdmi_hs_count_reg[0]_i_25_n_0 ,\hdmi_hs_count_reg[0]_i_25_n_1 ,\hdmi_hs_count_reg[0]_i_25_n_2 ,\hdmi_hs_count_reg[0]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI(hdmi_hl_width_s__0[12:9]),
        .O(hdmi_hl_width_s[11:8]),
        .S({\hdmi_hs_count[0]_i_31_n_0 ,\hdmi_hs_count[0]_i_32_n_0 ,\hdmi_hs_count[0]_i_33_n_0 ,\hdmi_hs_count[0]_i_34_n_0 }));
  CARRY4 \hdmi_hs_count_reg[0]_i_26 
       (.CI(\hdmi_hs_count_reg[0]_i_27_n_0 ),
        .CO({\hdmi_hs_count_reg[0]_i_26_n_0 ,\hdmi_hs_count_reg[0]_i_26_n_1 ,\hdmi_hs_count_reg[0]_i_26_n_2 ,\hdmi_hs_count_reg[0]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI(hdmi_hl_width_s__0[8:5]),
        .O(hdmi_hl_width_s[7:4]),
        .S({\hdmi_hs_count[0]_i_35_n_0 ,\hdmi_hs_count[0]_i_36_n_0 ,\hdmi_hs_count[0]_i_37_n_0 ,\hdmi_hs_count[0]_i_38_n_0 }));
  CARRY4 \hdmi_hs_count_reg[0]_i_27 
       (.CI(1'b0),
        .CO({\hdmi_hs_count_reg[0]_i_27_n_0 ,\hdmi_hs_count_reg[0]_i_27_n_1 ,\hdmi_hs_count_reg[0]_i_27_n_2 ,\hdmi_hs_count_reg[0]_i_27_n_3 }),
        .CYINIT(\hdmi_es_data_reg[15] [97]),
        .DI(hdmi_hl_width_s__0[4:1]),
        .O(hdmi_hl_width_s[3:0]),
        .S({\hdmi_hs_count[0]_i_39_n_0 ,\hdmi_hs_count[0]_i_40_n_0 ,\hdmi_hs_count[0]_i_41_n_0 ,\hdmi_hs_count[0]_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_10
       (.I0(\hdmi_es_data_reg[15] [78]),
        .I1(\hdmi_hs_count_reg[15] [13]),
        .I2(\hdmi_es_data_reg[15] [77]),
        .I3(\hdmi_hs_count_reg[15] [12]),
        .O(hdmi_hs_de_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_11
       (.I0(\hdmi_es_data_reg[15] [76]),
        .I1(\hdmi_hs_count_reg[15] [11]),
        .I2(\hdmi_es_data_reg[15] [75]),
        .I3(\hdmi_hs_count_reg[15] [10]),
        .O(hdmi_hs_de_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_12
       (.I0(\hdmi_es_data_reg[15] [74]),
        .I1(\hdmi_hs_count_reg[15] [9]),
        .I2(\hdmi_es_data_reg[15] [73]),
        .I3(\hdmi_hs_count_reg[15] [8]),
        .O(hdmi_hs_de_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_18
       (.I0(\hdmi_es_data_reg[15] [64]),
        .I1(\hdmi_hs_count_reg[15] [15]),
        .I2(\hdmi_es_data_reg[15] [63]),
        .I3(\hdmi_hs_count_reg[15] [14]),
        .O(hdmi_hs_de_reg_2[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_19
       (.I0(\hdmi_es_data_reg[15] [62]),
        .I1(\hdmi_hs_count_reg[15] [13]),
        .I2(\hdmi_es_data_reg[15] [61]),
        .I3(\hdmi_hs_count_reg[15] [12]),
        .O(hdmi_hs_de_reg_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_20
       (.I0(\hdmi_es_data_reg[15] [60]),
        .I1(\hdmi_hs_count_reg[15] [11]),
        .I2(\hdmi_es_data_reg[15] [59]),
        .I3(\hdmi_hs_count_reg[15] [10]),
        .O(hdmi_hs_de_reg_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_21
       (.I0(\hdmi_es_data_reg[15] [58]),
        .I1(\hdmi_hs_count_reg[15] [9]),
        .I2(\hdmi_es_data_reg[15] [57]),
        .I3(\hdmi_hs_count_reg[15] [8]),
        .O(hdmi_hs_de_reg_2[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_26
       (.I0(\hdmi_es_data_reg[15] [72]),
        .I1(\hdmi_hs_count_reg[15] [7]),
        .I2(\hdmi_es_data_reg[15] [71]),
        .I3(\hdmi_hs_count_reg[15] [6]),
        .O(hdmi_hs_de_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_27
       (.I0(\hdmi_es_data_reg[15] [70]),
        .I1(\hdmi_hs_count_reg[15] [5]),
        .I2(\hdmi_es_data_reg[15] [69]),
        .I3(\hdmi_hs_count_reg[15] [4]),
        .O(hdmi_hs_de_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_28
       (.I0(\hdmi_es_data_reg[15] [68]),
        .I1(\hdmi_hs_count_reg[15] [3]),
        .I2(\hdmi_es_data_reg[15] [67]),
        .I3(\hdmi_hs_count_reg[15] [2]),
        .O(hdmi_hs_de_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_29
       (.I0(\hdmi_es_data_reg[15] [66]),
        .I1(\hdmi_hs_count_reg[15] [1]),
        .I2(\hdmi_es_data_reg[15] [65]),
        .I3(\hdmi_hs_count_reg[15] [0]),
        .O(hdmi_hs_de_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_34
       (.I0(\hdmi_es_data_reg[15] [56]),
        .I1(\hdmi_hs_count_reg[15] [7]),
        .I2(\hdmi_es_data_reg[15] [55]),
        .I3(\hdmi_hs_count_reg[15] [6]),
        .O(hdmi_hs_de_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_35
       (.I0(\hdmi_es_data_reg[15] [54]),
        .I1(\hdmi_hs_count_reg[15] [5]),
        .I2(\hdmi_es_data_reg[15] [53]),
        .I3(\hdmi_hs_count_reg[15] [4]),
        .O(hdmi_hs_de_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_36
       (.I0(\hdmi_es_data_reg[15] [52]),
        .I1(\hdmi_hs_count_reg[15] [3]),
        .I2(\hdmi_es_data_reg[15] [51]),
        .I3(\hdmi_hs_count_reg[15] [2]),
        .O(hdmi_hs_de_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_37
       (.I0(\hdmi_es_data_reg[15] [50]),
        .I1(\hdmi_hs_count_reg[15] [1]),
        .I2(\hdmi_es_data_reg[15] [49]),
        .I3(\hdmi_hs_count_reg[15] [0]),
        .O(hdmi_hs_de_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_de_i_9
       (.I0(\hdmi_es_data_reg[15] [80]),
        .I1(\hdmi_hs_count_reg[15] [15]),
        .I2(\hdmi_es_data_reg[15] [79]),
        .I3(\hdmi_hs_count_reg[15] [14]),
        .O(hdmi_hs_de_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_10
       (.I0(\hdmi_es_data_reg[15] [90]),
        .I1(\hdmi_hs_count_reg[15] [9]),
        .I2(\hdmi_es_data_reg[15] [89]),
        .I3(\hdmi_hs_count_reg[15] [8]),
        .O(hdmi_hs_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_15
       (.I0(\hdmi_es_data_reg[15] [88]),
        .I1(\hdmi_hs_count_reg[15] [7]),
        .I2(\hdmi_es_data_reg[15] [87]),
        .I3(\hdmi_hs_count_reg[15] [6]),
        .O(hdmi_hs_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_16
       (.I0(\hdmi_es_data_reg[15] [86]),
        .I1(\hdmi_hs_count_reg[15] [5]),
        .I2(\hdmi_es_data_reg[15] [85]),
        .I3(\hdmi_hs_count_reg[15] [4]),
        .O(hdmi_hs_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_17
       (.I0(\hdmi_es_data_reg[15] [84]),
        .I1(\hdmi_hs_count_reg[15] [3]),
        .I2(\hdmi_es_data_reg[15] [83]),
        .I3(\hdmi_hs_count_reg[15] [2]),
        .O(hdmi_hs_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_18
       (.I0(\hdmi_es_data_reg[15] [82]),
        .I1(\hdmi_hs_count_reg[15] [1]),
        .I2(\hdmi_es_data_reg[15] [81]),
        .I3(\hdmi_hs_count_reg[15] [0]),
        .O(hdmi_hs_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_7
       (.I0(\hdmi_es_data_reg[15] [96]),
        .I1(\hdmi_hs_count_reg[15] [15]),
        .I2(\hdmi_es_data_reg[15] [95]),
        .I3(\hdmi_hs_count_reg[15] [14]),
        .O(hdmi_hs_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_8
       (.I0(\hdmi_es_data_reg[15] [94]),
        .I1(\hdmi_hs_count_reg[15] [13]),
        .I2(\hdmi_es_data_reg[15] [93]),
        .I3(\hdmi_hs_count_reg[15] [12]),
        .O(hdmi_hs_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_hs_i_9
       (.I0(\hdmi_es_data_reg[15] [92]),
        .I1(\hdmi_hs_count_reg[15] [11]),
        .I2(\hdmi_es_data_reg[15] [91]),
        .I3(\hdmi_hs_count_reg[15] [10]),
        .O(hdmi_hs_reg_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_29 
       (.I0(hdmi_vf_width_s__0[15]),
        .O(\hdmi_vs_count[0]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_30 
       (.I0(hdmi_vf_width_s__0[14]),
        .O(\hdmi_vs_count[0]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_31 
       (.I0(hdmi_vf_width_s__0[13]),
        .O(\hdmi_vs_count[0]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_32 
       (.I0(hdmi_vf_width_s__0[12]),
        .O(\hdmi_vs_count[0]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_33 
       (.I0(hdmi_vf_width_s__0[11]),
        .O(\hdmi_vs_count[0]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_34 
       (.I0(hdmi_vf_width_s__0[10]),
        .O(\hdmi_vs_count[0]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_35 
       (.I0(hdmi_vf_width_s__0[9]),
        .O(\hdmi_vs_count[0]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_36 
       (.I0(hdmi_vf_width_s__0[8]),
        .O(\hdmi_vs_count[0]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_37 
       (.I0(hdmi_vf_width_s__0[7]),
        .O(\hdmi_vs_count[0]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_38 
       (.I0(hdmi_vf_width_s__0[6]),
        .O(\hdmi_vs_count[0]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_39 
       (.I0(hdmi_vf_width_s__0[5]),
        .O(\hdmi_vs_count[0]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_40 
       (.I0(hdmi_vf_width_s__0[4]),
        .O(\hdmi_vs_count[0]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_41 
       (.I0(hdmi_vf_width_s__0[3]),
        .O(\hdmi_vs_count[0]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_42 
       (.I0(hdmi_vf_width_s__0[2]),
        .O(\hdmi_vs_count[0]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_vs_count[0]_i_43 
       (.I0(hdmi_vf_width_s__0[1]),
        .O(\hdmi_vs_count[0]_i_43_n_0 ));
  CARRY4 \hdmi_vs_count_reg[0]_i_25 
       (.CI(\hdmi_vs_count_reg[0]_i_26_n_0 ),
        .CO({\NLW_hdmi_vs_count_reg[0]_i_25_CO_UNCONNECTED [3:2],\hdmi_vs_count_reg[0]_i_25_n_2 ,\hdmi_vs_count_reg[0]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,hdmi_vf_width_s__0[14:13]}),
        .O({\NLW_hdmi_vs_count_reg[0]_i_25_O_UNCONNECTED [3],hdmi_vf_width_s[14:12]}),
        .S({1'b0,\hdmi_vs_count[0]_i_29_n_0 ,\hdmi_vs_count[0]_i_30_n_0 ,\hdmi_vs_count[0]_i_31_n_0 }));
  CARRY4 \hdmi_vs_count_reg[0]_i_26 
       (.CI(\hdmi_vs_count_reg[0]_i_27_n_0 ),
        .CO({\hdmi_vs_count_reg[0]_i_26_n_0 ,\hdmi_vs_count_reg[0]_i_26_n_1 ,\hdmi_vs_count_reg[0]_i_26_n_2 ,\hdmi_vs_count_reg[0]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI(hdmi_vf_width_s__0[12:9]),
        .O(hdmi_vf_width_s[11:8]),
        .S({\hdmi_vs_count[0]_i_32_n_0 ,\hdmi_vs_count[0]_i_33_n_0 ,\hdmi_vs_count[0]_i_34_n_0 ,\hdmi_vs_count[0]_i_35_n_0 }));
  CARRY4 \hdmi_vs_count_reg[0]_i_27 
       (.CI(\hdmi_vs_count_reg[0]_i_28_n_0 ),
        .CO({\hdmi_vs_count_reg[0]_i_27_n_0 ,\hdmi_vs_count_reg[0]_i_27_n_1 ,\hdmi_vs_count_reg[0]_i_27_n_2 ,\hdmi_vs_count_reg[0]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI(hdmi_vf_width_s__0[8:5]),
        .O(hdmi_vf_width_s[7:4]),
        .S({\hdmi_vs_count[0]_i_36_n_0 ,\hdmi_vs_count[0]_i_37_n_0 ,\hdmi_vs_count[0]_i_38_n_0 ,\hdmi_vs_count[0]_i_39_n_0 }));
  CARRY4 \hdmi_vs_count_reg[0]_i_28 
       (.CI(1'b0),
        .CO({\hdmi_vs_count_reg[0]_i_28_n_0 ,\hdmi_vs_count_reg[0]_i_28_n_1 ,\hdmi_vs_count_reg[0]_i_28_n_2 ,\hdmi_vs_count_reg[0]_i_28_n_3 }),
        .CYINIT(\hdmi_es_data_reg[15] [48]),
        .DI(hdmi_vf_width_s__0[4:1]),
        .O(hdmi_vf_width_s[3:0]),
        .S({\hdmi_vs_count[0]_i_40_n_0 ,\hdmi_vs_count[0]_i_41_n_0 ,\hdmi_vs_count[0]_i_42_n_0 ,\hdmi_vs_count[0]_i_43_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_10
       (.I0(\hdmi_es_data_reg[15] [29]),
        .I1(out[13]),
        .I2(\hdmi_es_data_reg[15] [28]),
        .I3(out[12]),
        .O(hdmi_vs_de_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_11
       (.I0(\hdmi_es_data_reg[15] [27]),
        .I1(out[11]),
        .I2(\hdmi_es_data_reg[15] [26]),
        .I3(out[10]),
        .O(hdmi_vs_de_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_12
       (.I0(\hdmi_es_data_reg[15] [25]),
        .I1(out[9]),
        .I2(\hdmi_es_data_reg[15] [24]),
        .I3(out[8]),
        .O(hdmi_vs_de_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_18
       (.I0(\hdmi_es_data_reg[15] [15]),
        .I1(out[15]),
        .I2(\hdmi_es_data_reg[15] [14]),
        .I3(out[14]),
        .O(hdmi_vs_de_reg_2[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_19
       (.I0(\hdmi_es_data_reg[15] [13]),
        .I1(out[13]),
        .I2(\hdmi_es_data_reg[15] [12]),
        .I3(out[12]),
        .O(hdmi_vs_de_reg_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_20
       (.I0(\hdmi_es_data_reg[15] [11]),
        .I1(out[11]),
        .I2(\hdmi_es_data_reg[15] [10]),
        .I3(out[10]),
        .O(hdmi_vs_de_reg_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_21
       (.I0(\hdmi_es_data_reg[15] [9]),
        .I1(out[9]),
        .I2(\hdmi_es_data_reg[15] [8]),
        .I3(out[8]),
        .O(hdmi_vs_de_reg_2[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_26
       (.I0(\hdmi_es_data_reg[15] [23]),
        .I1(out[7]),
        .I2(\hdmi_es_data_reg[15] [22]),
        .I3(out[6]),
        .O(hdmi_vs_de_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_27
       (.I0(\hdmi_es_data_reg[15] [21]),
        .I1(out[5]),
        .I2(\hdmi_es_data_reg[15] [20]),
        .I3(out[4]),
        .O(hdmi_vs_de_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_28
       (.I0(\hdmi_es_data_reg[15] [19]),
        .I1(out[3]),
        .I2(\hdmi_es_data_reg[15] [18]),
        .I3(out[2]),
        .O(hdmi_vs_de_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_29
       (.I0(\hdmi_es_data_reg[15] [17]),
        .I1(out[1]),
        .I2(\hdmi_es_data_reg[15] [16]),
        .I3(out[0]),
        .O(hdmi_vs_de_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_34
       (.I0(\hdmi_es_data_reg[15] [7]),
        .I1(out[7]),
        .I2(\hdmi_es_data_reg[15] [6]),
        .I3(out[6]),
        .O(hdmi_vs_de_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_35
       (.I0(\hdmi_es_data_reg[15] [5]),
        .I1(out[5]),
        .I2(\hdmi_es_data_reg[15] [4]),
        .I3(out[4]),
        .O(hdmi_vs_de_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_36
       (.I0(\hdmi_es_data_reg[15] [3]),
        .I1(out[3]),
        .I2(\hdmi_es_data_reg[15] [2]),
        .I3(out[2]),
        .O(hdmi_vs_de_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_37
       (.I0(\hdmi_es_data_reg[15] [1]),
        .I1(out[1]),
        .I2(\hdmi_es_data_reg[15] [0]),
        .I3(out[0]),
        .O(hdmi_vs_de_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    hdmi_vs_de_i_9
       (.I0(\hdmi_es_data_reg[15] [31]),
        .I1(out[15]),
        .I2(\hdmi_es_data_reg[15] [30]),
        .I3(out[14]),
        .O(hdmi_vs_de_reg_0[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_11
       (.I0(\hdmi_es_data_reg[15] [39]),
        .I1(out[7]),
        .I2(\hdmi_es_data_reg[15] [38]),
        .I3(out[6]),
        .O(hdmi_vs_i_11_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_12
       (.I0(\hdmi_es_data_reg[15] [37]),
        .I1(out[5]),
        .I2(\hdmi_es_data_reg[15] [36]),
        .I3(out[4]),
        .O(hdmi_vs_i_12_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_13
       (.I0(\hdmi_es_data_reg[15] [35]),
        .I1(out[3]),
        .I2(\hdmi_es_data_reg[15] [34]),
        .I3(out[2]),
        .O(hdmi_vs_i_13_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_14
       (.I0(\hdmi_es_data_reg[15] [33]),
        .I1(out[1]),
        .I2(\hdmi_es_data_reg[15] [32]),
        .I3(out[0]),
        .O(hdmi_vs_i_14_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    hdmi_vs_i_3
       (.I0(\hdmi_es_data_reg[15] [47]),
        .I1(out[15]),
        .I2(out[14]),
        .I3(\hdmi_es_data_reg[15] [46]),
        .O(hdmi_vs_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_4
       (.I0(\hdmi_es_data_reg[15] [45]),
        .I1(out[13]),
        .I2(\hdmi_es_data_reg[15] [44]),
        .I3(out[12]),
        .O(hdmi_vs_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_5
       (.I0(\hdmi_es_data_reg[15] [43]),
        .I1(out[11]),
        .I2(\hdmi_es_data_reg[15] [42]),
        .I3(out[10]),
        .O(hdmi_vs_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    hdmi_vs_i_6
       (.I0(\hdmi_es_data_reg[15] [41]),
        .I1(out[9]),
        .I2(\hdmi_es_data_reg[15] [40]),
        .I3(out[8]),
        .O(hdmi_vs_i_6_n_0));
  CARRY4 hdmi_vs_reg_i_1
       (.CI(hdmi_vs_reg_i_2_n_0),
        .CO({CO,hdmi_vs_reg_i_1_n_1,hdmi_vs_reg_i_1_n_2,hdmi_vs_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_vs_i_3_n_0,hdmi_vs_i_4_n_0,hdmi_vs_i_5_n_0,hdmi_vs_i_6_n_0}),
        .O(NLW_hdmi_vs_reg_i_1_O_UNCONNECTED[3:0]),
        .S(\hdmi_vs_count_reg[15] ));
  CARRY4 hdmi_vs_reg_i_2
       (.CI(1'b0),
        .CO({hdmi_vs_reg_i_2_n_0,hdmi_vs_reg_i_2_n_1,hdmi_vs_reg_i_2_n_2,hdmi_vs_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({hdmi_vs_i_11_n_0,hdmi_vs_i_12_n_0,hdmi_vs_i_13_n_0,hdmi_vs_i_14_n_0}),
        .O(NLW_hdmi_vs_reg_i_2_O_UNCONNECTED[3:0]),
        .S(\hdmi_vs_count_reg[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_wdata[23]_i_1 
       (.I0(s_axi_aresetn),
        .O(\up_xfer_data_reg[22]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_wdata[31]_i_1 
       (.I0(s_axi_aresetn),
        .O(\up_xfer_data_reg[186]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    up_wreq_i_2
       (.I0(s_axi_aresetn),
        .O(\up_xfer_data_reg[58]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_xfer_count[0]_i_1 
       (.I0(up_xfer_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \up_xfer_count[1]_i_1 
       (.I0(up_xfer_count_reg__0[0]),
        .I1(up_xfer_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \up_xfer_count[2]_i_1 
       (.I0(up_xfer_count_reg__0[1]),
        .I1(up_xfer_count_reg__0[0]),
        .I2(up_xfer_count_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \up_xfer_count[3]_i_1 
       (.I0(up_xfer_count_reg__0[2]),
        .I1(up_xfer_count_reg__0[0]),
        .I2(up_xfer_count_reg__0[1]),
        .I3(up_xfer_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \up_xfer_count[4]_i_1 
       (.I0(up_xfer_count_reg__0[3]),
        .I1(up_xfer_count_reg__0[1]),
        .I2(up_xfer_count_reg__0[0]),
        .I3(up_xfer_count_reg__0[2]),
        .I4(up_xfer_count_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \up_xfer_count[5]_i_1 
       (.I0(up_xfer_count_reg__0[4]),
        .I1(up_xfer_count_reg__0[2]),
        .I2(up_xfer_count_reg__0[0]),
        .I3(up_xfer_count_reg__0[1]),
        .I4(up_xfer_count_reg__0[3]),
        .I5(up_xfer_count_reg__0[5]),
        .O(p_0_in__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_0_in__0[0]),
        .Q(up_xfer_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_0_in__0[1]),
        .Q(up_xfer_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_0_in__0[2]),
        .Q(up_xfer_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_0_in__0[3]),
        .Q(up_xfer_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_0_in__0[4]),
        .Q(up_xfer_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_0_in__0[5]),
        .Q(up_xfer_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[0]),
        .Q(up_xfer_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[100] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[84]),
        .Q(up_xfer_data[100]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[101] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[85]),
        .Q(up_xfer_data[101]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[102] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[86]),
        .Q(up_xfer_data[102]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[103] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[87]),
        .Q(up_xfer_data[103]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[104] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[88]),
        .Q(up_xfer_data[104]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[105] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[89]),
        .Q(up_xfer_data[105]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[106] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[90]),
        .Q(up_xfer_data[106]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[107] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[91]),
        .Q(up_xfer_data[107]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[108] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[92]),
        .Q(up_xfer_data[108]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[109] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[93]),
        .Q(up_xfer_data[109]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[10]),
        .Q(up_xfer_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[110] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[94]),
        .Q(up_xfer_data[110]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[111] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[95]),
        .Q(up_xfer_data[111]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[112] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[96]),
        .Q(up_xfer_data[112]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[113] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[97]),
        .Q(up_xfer_data[113]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[114] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[98]),
        .Q(up_xfer_data[114]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[115] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[99]),
        .Q(up_xfer_data[115]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[116] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[100]),
        .Q(up_xfer_data[116]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[117] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[101]),
        .Q(up_xfer_data[117]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[118] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[102]),
        .Q(up_xfer_data[118]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[119] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[103]),
        .Q(up_xfer_data[119]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[11]),
        .Q(up_xfer_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[120] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[104]),
        .Q(up_xfer_data[120]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[121] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[105]),
        .Q(up_xfer_data[121]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[122] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[106]),
        .Q(up_xfer_data[122]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[123] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[107]),
        .Q(up_xfer_data[123]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[124] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[108]),
        .Q(up_xfer_data[124]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[125] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[109]),
        .Q(up_xfer_data[125]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[126] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[110]),
        .Q(up_xfer_data[126]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[127] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[111]),
        .Q(up_xfer_data[127]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[128] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[112]),
        .Q(up_xfer_data[128]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[129] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[113]),
        .Q(up_xfer_data[129]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[12]),
        .Q(up_xfer_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[130] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[114]),
        .Q(up_xfer_data[130]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[131] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[115]),
        .Q(up_xfer_data[131]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[132] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[116]),
        .Q(up_xfer_data[132]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[133] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[117]),
        .Q(up_xfer_data[133]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[134] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[118]),
        .Q(up_xfer_data[134]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[135] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[119]),
        .Q(up_xfer_data[135]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[136] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[120]),
        .Q(up_xfer_data[136]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[137] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[121]),
        .Q(up_xfer_data[137]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[138] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[122]),
        .Q(up_xfer_data[138]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[139] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[123]),
        .Q(up_xfer_data[139]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[13]),
        .Q(up_xfer_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[140] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[124]),
        .Q(up_xfer_data[140]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[141] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[125]),
        .Q(up_xfer_data[141]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[142] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[126]),
        .Q(up_xfer_data[142]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[143] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[127]),
        .Q(up_xfer_data[143]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[14]),
        .Q(up_xfer_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[15]),
        .Q(up_xfer_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[160] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[128]),
        .Q(up_xfer_data[160]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[161] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[129]),
        .Q(up_xfer_data[161]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[162] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[130]),
        .Q(up_xfer_data[162]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[163] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[131]),
        .Q(up_xfer_data[163]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[164] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[132]),
        .Q(up_xfer_data[164]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[165] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[133]),
        .Q(up_xfer_data[165]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[166] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[134]),
        .Q(up_xfer_data[166]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[167] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[135]),
        .Q(up_xfer_data[167]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[168] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[136]),
        .Q(up_xfer_data[168]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[169] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[137]),
        .Q(up_xfer_data[169]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[16]),
        .Q(up_xfer_data[16]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[170] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[138]),
        .Q(up_xfer_data[170]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[171] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[139]),
        .Q(up_xfer_data[171]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[172] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[140]),
        .Q(up_xfer_data[172]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[173] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[141]),
        .Q(up_xfer_data[173]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[174] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[142]),
        .Q(up_xfer_data[174]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[175] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[143]),
        .Q(up_xfer_data[175]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[176] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[144]),
        .Q(up_xfer_data[176]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[177] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[145]),
        .Q(up_xfer_data[177]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[178] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[146]),
        .Q(up_xfer_data[178]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[179] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[147]),
        .Q(up_xfer_data[179]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[17]),
        .Q(up_xfer_data[17]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[180] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[148]),
        .Q(up_xfer_data[180]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[181] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[149]),
        .Q(up_xfer_data[181]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[182] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[150]),
        .Q(up_xfer_data[182]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[183] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[151]),
        .Q(up_xfer_data[183]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[184] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(s_axi_aresetn_0),
        .D(D[152]),
        .Q(up_xfer_data[184]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[185] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[153]),
        .Q(up_xfer_data[185]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[186] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[154]),
        .Q(up_xfer_data[186]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[187] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[155]),
        .Q(up_xfer_data[187]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[18]),
        .Q(up_xfer_data[18]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[19]),
        .Q(up_xfer_data[19]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[1]),
        .Q(up_xfer_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[20]),
        .Q(up_xfer_data[20]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[21]),
        .Q(up_xfer_data[21]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[22]),
        .Q(up_xfer_data[22]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[23]),
        .Q(up_xfer_data[23]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[24]),
        .Q(up_xfer_data[24]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[25]),
        .Q(up_xfer_data[25]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[26]),
        .Q(up_xfer_data[26]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[27]),
        .Q(up_xfer_data[27]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[28]),
        .Q(up_xfer_data[28]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[29]),
        .Q(up_xfer_data[29]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[2]),
        .Q(up_xfer_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[30]),
        .Q(up_xfer_data[30]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[186]_0 ),
        .D(D[31]),
        .Q(up_xfer_data[31]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[32] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[32]),
        .Q(up_xfer_data[32]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[33] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[33]),
        .Q(up_xfer_data[33]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[34] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[34]),
        .Q(up_xfer_data[34]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[35] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[35]),
        .Q(up_xfer_data[35]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[36] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[36]),
        .Q(up_xfer_data[36]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[37] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[37]),
        .Q(up_xfer_data[37]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[38] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[38]),
        .Q(up_xfer_data[38]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[39] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[39]),
        .Q(up_xfer_data[39]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[3]),
        .Q(up_xfer_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[40] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[40]),
        .Q(up_xfer_data[40]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[41] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[41]),
        .Q(up_xfer_data[41]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[42] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[42]),
        .Q(up_xfer_data[42]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[43] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[43]),
        .Q(up_xfer_data[43]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[44] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[44]),
        .Q(up_xfer_data[44]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[45] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[45]),
        .Q(up_xfer_data[45]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[46] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[46]),
        .Q(up_xfer_data[46]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[47] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[47]),
        .Q(up_xfer_data[47]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[48] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[48]),
        .Q(up_xfer_data[48]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[49] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[49]),
        .Q(up_xfer_data[49]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[4]),
        .Q(up_xfer_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[50] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[50]),
        .Q(up_xfer_data[50]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[51] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[51]),
        .Q(up_xfer_data[51]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[52] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[52]),
        .Q(up_xfer_data[52]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[53] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[53]),
        .Q(up_xfer_data[53]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[54] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[54]),
        .Q(up_xfer_data[54]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[55] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[55]),
        .Q(up_xfer_data[55]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[56] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[56]),
        .Q(up_xfer_data[56]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[57] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[57]),
        .Q(up_xfer_data[57]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[58] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[58]),
        .Q(up_xfer_data[58]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[59] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[59]),
        .Q(up_xfer_data[59]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[5]),
        .Q(up_xfer_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[60] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[60]),
        .Q(up_xfer_data[60]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[61] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[61]),
        .Q(up_xfer_data[61]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[62] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[62]),
        .Q(up_xfer_data[62]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[63] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[63]),
        .Q(up_xfer_data[63]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[6]),
        .Q(up_xfer_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[7]),
        .Q(up_xfer_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[80] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[64]),
        .Q(up_xfer_data[80]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[81] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[65]),
        .Q(up_xfer_data[81]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[82] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[66]),
        .Q(up_xfer_data[82]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[83] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[67]),
        .Q(up_xfer_data[83]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[84] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[68]),
        .Q(up_xfer_data[84]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[85] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[69]),
        .Q(up_xfer_data[85]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[86] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[70]),
        .Q(up_xfer_data[86]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[87] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[71]),
        .Q(up_xfer_data[87]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[88] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[72]),
        .Q(up_xfer_data[88]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[89] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[22]_0 ),
        .D(D[73]),
        .Q(up_xfer_data[89]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[8]),
        .Q(up_xfer_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[90] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[74]),
        .Q(up_xfer_data[90]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[91] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[75]),
        .Q(up_xfer_data[91]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[92] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[76]),
        .Q(up_xfer_data[92]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[93] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[77]),
        .Q(up_xfer_data[93]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[94] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[78]),
        .Q(up_xfer_data[94]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[95] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(\up_xfer_data_reg[58]_0 ),
        .D(D[79]),
        .Q(up_xfer_data[95]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[96] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[80]),
        .Q(up_xfer_data[96]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[97] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[81]),
        .Q(up_xfer_data[97]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[98] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[82]),
        .Q(up_xfer_data[98]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[99] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[83]),
        .Q(up_xfer_data[99]));
  FDCE #(
    .INIT(1'b0)) 
    \up_xfer_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(D[9]),
        .Q(up_xfer_data[9]));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_state_m1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(d_xfer_toggle),
        .Q(up_xfer_state_m1));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_state_m2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(up_xfer_state_m1),
        .Q(up_xfer_state_m2));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_state_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(up_xfer_state_m2),
        .Q(up_xfer_state));
  LUT3 #(
    .INIT(8'h90)) 
    up_xfer_toggle_i_1
       (.I0(up_xfer_toggle),
        .I1(up_xfer_state),
        .I2(up_xfer_toggle_i_4_n_0),
        .O(up_xfer_toggle_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    up_xfer_toggle_i_2
       (.I0(up_xfer_toggle),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    up_xfer_toggle_i_3
       (.I0(s_axi_aresetn),
        .O(up_xfer_toggle_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    up_xfer_toggle_i_4
       (.I0(up_xfer_count_reg__0[1]),
        .I1(up_xfer_count_reg__0[0]),
        .I2(up_xfer_count_reg__0[5]),
        .I3(up_xfer_count_reg__0[3]),
        .I4(up_xfer_count_reg__0[2]),
        .I5(up_xfer_count_reg__0[4]),
        .O(up_xfer_toggle_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_reg
       (.C(s_axi_aclk),
        .CE(up_xfer_toggle_i_1_n_0),
        .CLR(up_xfer_toggle_i_3_n_0),
        .D(p_1_in),
        .Q(up_xfer_toggle));
endmodule

(* ORIG_REF_NAME = "up_xfer_status" *) 
module system_axi_hdmi_core_0_up_xfer_status
   (\up_rdata_reg[0] ,
    D,
    d_xfer_toggle_reg_0,
    \up_data_status_reg[0]_0 ,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_aresetn_0,
    rst_reg,
    hdmi_clk,
    \up_raddr_reg[0] ,
    hdmi_status_s,
    hdmi_tpm_oos_s,
    vdma_ovf_s,
    Q,
    vdma_unf_s,
    vdma_tpm_oos_s,
    d_xfer_toggle,
    d_xfer_state);
  output \up_rdata_reg[0] ;
  output [2:0]D;
  output d_xfer_toggle_reg_0;
  output \up_data_status_reg[0]_0 ;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_aresetn_0;
  input rst_reg;
  input hdmi_clk;
  input [0:0]\up_raddr_reg[0] ;
  input hdmi_status_s;
  input hdmi_tpm_oos_s;
  input vdma_ovf_s;
  input [2:0]Q;
  input vdma_unf_s;
  input vdma_tpm_oos_s;
  input d_xfer_toggle;
  input d_xfer_state;

  wire [2:0]D;
  wire [2:0]Q;
  wire [1:0]d_acc_data;
  wire \d_acc_data[1]_i_2_n_0 ;
  wire \d_acc_data_reg_n_0_[0] ;
  wire \d_acc_data_reg_n_0_[1] ;
  wire [1:0]d_xfer_data;
  wire \d_xfer_data[0]_i_1_n_0 ;
  wire \d_xfer_data[1]_i_1_n_0 ;
  wire d_xfer_state;
  wire d_xfer_state_0;
  wire d_xfer_state_m1;
  wire d_xfer_state_m2;
  wire d_xfer_toggle;
  wire d_xfer_toggle_1;
  wire d_xfer_toggle_i_1__0_n_0;
  wire d_xfer_toggle_i_3_n_0;
  wire d_xfer_toggle_reg_0;
  wire data7;
  wire hdmi_clk;
  wire hdmi_status_s;
  wire hdmi_tpm_oos_s;
  wire [5:0]\i_vdma_xfer_status/d_xfer_count_reg ;
  wire [5:0]p_0_in__1;
  wire rst_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire \up_data_status[0]_i_1_n_0 ;
  wire \up_data_status[1]_i_1_n_0 ;
  wire \up_data_status_reg[0]_0 ;
  wire [0:0]\up_raddr_reg[0] ;
  wire \up_rdata_reg[0] ;
  wire up_xfer_toggle_m1;
  wire up_xfer_toggle_m2;
  wire up_xfer_toggle_m3;
  wire up_xfer_toggle_reg_n_0;
  wire vdma_ovf_s;
  wire vdma_tpm_oos_s;
  wire vdma_unf_s;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \d_acc_data[0]_i_1 
       (.I0(hdmi_tpm_oos_s),
        .I1(\d_acc_data[1]_i_2_n_0 ),
        .I2(\d_acc_data_reg_n_0_[0] ),
        .O(d_acc_data[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \d_acc_data[0]_i_1__0 
       (.I0(vdma_tpm_oos_s),
        .I1(d_xfer_toggle_reg_0),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \d_acc_data[1]_i_1 
       (.I0(hdmi_status_s),
        .I1(\d_acc_data[1]_i_2_n_0 ),
        .I2(\d_acc_data_reg_n_0_[1] ),
        .O(d_acc_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \d_acc_data[1]_i_1__0 
       (.I0(vdma_unf_s),
        .I1(d_xfer_toggle_reg_0),
        .I2(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h08000008)) 
    \d_acc_data[1]_i_2 
       (.I0(d_xfer_toggle_i_3_n_0),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .I2(\i_vdma_xfer_status/d_xfer_count_reg [5]),
        .I3(d_xfer_state_0),
        .I4(d_xfer_toggle_1),
        .O(\d_acc_data[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \d_acc_data[2]_i_1 
       (.I0(vdma_ovf_s),
        .I1(d_xfer_toggle_reg_0),
        .I2(Q[2]),
        .O(D[2]));
  FDRE #(
    .INIT(1'b0)) 
    \d_acc_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_acc_data[0]),
        .Q(\d_acc_data_reg_n_0_[0] ),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_acc_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_acc_data[1]),
        .Q(\d_acc_data_reg_n_0_[1] ),
        .R(rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \d_xfer_count[0]_i_1 
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .O(p_0_in__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \d_xfer_count[1]_i_1 
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \d_xfer_count[2]_i_1 
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [2]),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .I2(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \d_xfer_count[3]_i_1 
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .I2(\i_vdma_xfer_status/d_xfer_count_reg [2]),
        .I3(\i_vdma_xfer_status/d_xfer_count_reg [3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \d_xfer_count[4]_i_1 
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [4]),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .I2(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .I3(\i_vdma_xfer_status/d_xfer_count_reg [2]),
        .I4(\i_vdma_xfer_status/d_xfer_count_reg [3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \d_xfer_count[5]_i_1 
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [5]),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [3]),
        .I2(\i_vdma_xfer_status/d_xfer_count_reg [2]),
        .I3(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .I4(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .I5(\i_vdma_xfer_status/d_xfer_count_reg [4]),
        .O(p_0_in__1[5]));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_count_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_count_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_count_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(\i_vdma_xfer_status/d_xfer_count_reg [2]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_count_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(\i_vdma_xfer_status/d_xfer_count_reg [3]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_count_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(\i_vdma_xfer_status/d_xfer_count_reg [4]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_count_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(\i_vdma_xfer_status/d_xfer_count_reg [5]),
        .R(rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_xfer_data[0]_i_1 
       (.I0(\d_acc_data_reg_n_0_[0] ),
        .I1(\d_acc_data[1]_i_2_n_0 ),
        .I2(d_xfer_data[0]),
        .O(\d_xfer_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_xfer_data[1]_i_1 
       (.I0(\d_acc_data_reg_n_0_[1] ),
        .I1(\d_acc_data[1]_i_2_n_0 ),
        .I2(d_xfer_data[1]),
        .O(\d_xfer_data[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_xfer_data[0]_i_1_n_0 ),
        .Q(d_xfer_data[0]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\d_xfer_data[1]_i_1_n_0 ),
        .Q(d_xfer_data[1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_state_m1_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(up_xfer_toggle_reg_n_0),
        .Q(d_xfer_state_m1),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_state_m2_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_state_m1),
        .Q(d_xfer_state_m2),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_state_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_state_m2),
        .Q(d_xfer_state_0),
        .R(rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00820000)) 
    d_xfer_toggle_i_1
       (.I0(d_xfer_toggle_i_3_n_0),
        .I1(d_xfer_toggle),
        .I2(d_xfer_state),
        .I3(\i_vdma_xfer_status/d_xfer_count_reg [5]),
        .I4(\i_vdma_xfer_status/d_xfer_count_reg [0]),
        .O(d_xfer_toggle_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_xfer_toggle_i_1__0
       (.I0(\d_acc_data[1]_i_2_n_0 ),
        .I1(d_xfer_toggle_1),
        .O(d_xfer_toggle_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    d_xfer_toggle_i_3
       (.I0(\i_vdma_xfer_status/d_xfer_count_reg [4]),
        .I1(\i_vdma_xfer_status/d_xfer_count_reg [1]),
        .I2(\i_vdma_xfer_status/d_xfer_count_reg [3]),
        .I3(\i_vdma_xfer_status/d_xfer_count_reg [2]),
        .O(d_xfer_toggle_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_toggle_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_toggle_i_1__0_n_0),
        .Q(d_xfer_toggle_1),
        .R(rst_reg));
  LUT4 #(
    .INIT(16'hEB28)) 
    \up_data_status[0]_i_1 
       (.I0(d_xfer_data[0]),
        .I1(up_xfer_toggle_m3),
        .I2(up_xfer_toggle_m2),
        .I3(\up_data_status_reg[0]_0 ),
        .O(\up_data_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \up_data_status[1]_i_1 
       (.I0(d_xfer_data[1]),
        .I1(up_xfer_toggle_m3),
        .I2(up_xfer_toggle_m2),
        .I3(data7),
        .O(\up_data_status[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_data_status_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_data_status[0]_i_1_n_0 ),
        .Q(\up_data_status_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_data_status_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\up_data_status[1]_i_1_n_0 ),
        .Q(data7));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[0]_i_13 
       (.I0(data7),
        .I1(\up_raddr_reg[0] ),
        .O(\up_rdata_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_m1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn),
        .D(d_xfer_toggle_1),
        .Q(up_xfer_toggle_m1));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_m2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn),
        .D(up_xfer_toggle_m1),
        .Q(up_xfer_toggle_m2));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_m3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_xfer_toggle_m2),
        .Q(up_xfer_toggle_m3));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_xfer_toggle_m3),
        .Q(up_xfer_toggle_reg_n_0));
endmodule

(* ORIG_REF_NAME = "up_xfer_status" *) 
module system_axi_hdmi_core_0_up_xfer_status__parameterized0
   (d_xfer_toggle,
    d_xfer_state,
    Q,
    \up_data_status_reg[0]_0 ,
    up_vdma_unf_s,
    up_vdma_ovf_s,
    rst_reg,
    E,
    hdmi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_aresetn_0,
    D,
    s_axi_aresetn_1);
  output d_xfer_toggle;
  output d_xfer_state;
  output [2:0]Q;
  output \up_data_status_reg[0]_0 ;
  output up_vdma_unf_s;
  output up_vdma_ovf_s;
  input rst_reg;
  input [0:0]E;
  input hdmi_clk;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_aresetn_0;
  input [2:0]D;
  input s_axi_aresetn_1;

  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \d_xfer_data_reg_n_0_[0] ;
  wire \d_xfer_data_reg_n_0_[1] ;
  wire \d_xfer_data_reg_n_0_[2] ;
  wire d_xfer_state;
  wire d_xfer_state_m1_reg_n_0;
  wire d_xfer_state_m2_reg_n_0;
  wire d_xfer_toggle;
  wire d_xfer_toggle_i_2_n_0;
  wire hdmi_clk;
  wire rst_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire \up_data_status[0]_i_1_n_0 ;
  wire \up_data_status[1]_i_1_n_0 ;
  wire \up_data_status[2]_i_1_n_0 ;
  wire \up_data_status_reg[0]_0 ;
  wire up_vdma_ovf_s;
  wire up_vdma_unf_s;
  wire up_xfer_toggle_m1_reg_n_0;
  wire up_xfer_toggle_m2;
  wire up_xfer_toggle_m3;
  wire up_xfer_toggle_reg_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \d_acc_data_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_acc_data_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_acc_data_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_data_reg[0] 
       (.C(hdmi_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\d_xfer_data_reg_n_0_[0] ),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_data_reg[1] 
       (.C(hdmi_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\d_xfer_data_reg_n_0_[1] ),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    \d_xfer_data_reg[2] 
       (.C(hdmi_clk),
        .CE(E),
        .D(Q[2]),
        .Q(\d_xfer_data_reg_n_0_[2] ),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_state_m1_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(up_xfer_toggle_reg_n_0),
        .Q(d_xfer_state_m1_reg_n_0),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_state_m2_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_state_m1_reg_n_0),
        .Q(d_xfer_state_m2_reg_n_0),
        .R(rst_reg));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_state_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(d_xfer_state_m2_reg_n_0),
        .Q(d_xfer_state),
        .R(rst_reg));
  LUT1 #(
    .INIT(2'h1)) 
    d_xfer_toggle_i_2
       (.I0(d_xfer_toggle),
        .O(d_xfer_toggle_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_xfer_toggle_reg
       (.C(hdmi_clk),
        .CE(E),
        .D(d_xfer_toggle_i_2_n_0),
        .Q(d_xfer_toggle),
        .R(rst_reg));
  LUT4 #(
    .INIT(16'hEB28)) 
    \up_data_status[0]_i_1 
       (.I0(\d_xfer_data_reg_n_0_[0] ),
        .I1(up_xfer_toggle_m3),
        .I2(up_xfer_toggle_m2),
        .I3(\up_data_status_reg[0]_0 ),
        .O(\up_data_status[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \up_data_status[1]_i_1 
       (.I0(\d_xfer_data_reg_n_0_[1] ),
        .I1(up_xfer_toggle_m3),
        .I2(up_xfer_toggle_m2),
        .I3(up_vdma_unf_s),
        .O(\up_data_status[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \up_data_status[2]_i_1 
       (.I0(\d_xfer_data_reg_n_0_[2] ),
        .I1(up_xfer_toggle_m3),
        .I2(up_xfer_toggle_m2),
        .I3(up_vdma_ovf_s),
        .O(\up_data_status[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_data_status_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_1),
        .D(\up_data_status[0]_i_1_n_0 ),
        .Q(\up_data_status_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \up_data_status_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_1),
        .D(\up_data_status[1]_i_1_n_0 ),
        .Q(up_vdma_unf_s));
  FDCE #(
    .INIT(1'b0)) 
    \up_data_status_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_1),
        .D(\up_data_status[2]_i_1_n_0 ),
        .Q(up_vdma_ovf_s));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_m1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn),
        .D(d_xfer_toggle),
        .Q(up_xfer_toggle_m1_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_m2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn),
        .D(up_xfer_toggle_m1_reg_n_0),
        .Q(up_xfer_toggle_m2));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_m3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn),
        .D(up_xfer_toggle_m2),
        .Q(up_xfer_toggle_m3));
  FDCE #(
    .INIT(1'b0)) 
    up_xfer_toggle_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(up_xfer_toggle_m3),
        .Q(up_xfer_toggle_reg_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
