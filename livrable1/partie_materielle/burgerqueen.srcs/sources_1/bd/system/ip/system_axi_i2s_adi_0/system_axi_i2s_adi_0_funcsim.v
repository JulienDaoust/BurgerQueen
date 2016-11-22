// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Sat Oct 17 14:16:08 2015
// Host        : Najib-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Najib/Desktop/Projet_INF3995/tp2Code/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_i2s_adi_0/system_axi_i2s_adi_0_funcsim.v
// Design      : system_axi_i2s_adi_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_i2s_adi_0,axi_i2s_adi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_i2s_adi,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module system_axi_i2s_adi_0
   (DATA_CLK_I,
    BCLK_O,
    LRCLK_O,
    SDATA_O,
    SDATA_I,
    DMA_REQ_TX_ACLK,
    DMA_REQ_TX_RSTN,
    DMA_REQ_TX_DAVALID,
    DMA_REQ_TX_DATYPE,
    DMA_REQ_TX_DAREADY,
    DMA_REQ_TX_DRVALID,
    DMA_REQ_TX_DRTYPE,
    DMA_REQ_TX_DRLAST,
    DMA_REQ_TX_DRREADY,
    DMA_REQ_RX_ACLK,
    DMA_REQ_RX_RSTN,
    DMA_REQ_RX_DAVALID,
    DMA_REQ_RX_DATYPE,
    DMA_REQ_RX_DAREADY,
    DMA_REQ_RX_DRVALID,
    DMA_REQ_RX_DRTYPE,
    DMA_REQ_RX_DRLAST,
    DMA_REQ_RX_DRREADY,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_AWREADY);
  input DATA_CLK_I;
  output [0:0]BCLK_O;
  output [0:0]LRCLK_O;
  output [0:0]SDATA_O;
  input [0:0]SDATA_I;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 DMA_REQ_TX_ACLK CLK, xilinx.com:signal:clock:1.0 DMA_REQ_TX_DMA_ACK_TX_signal_clock CLK" *) input DMA_REQ_TX_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 DMA_REQ_TX_DMA_ACK_TX_signal_reset RST" *) input DMA_REQ_TX_RSTN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_ACK_TX TVALID" *) input DMA_REQ_TX_DAVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_ACK_TX TUSER" *) input [1:0]DMA_REQ_TX_DATYPE;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_ACK_TX TREADY" *) output DMA_REQ_TX_DAREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_TX TVALID" *) output DMA_REQ_TX_DRVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_TX TUSER" *) output [1:0]DMA_REQ_TX_DRTYPE;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_TX TLAST" *) output DMA_REQ_TX_DRLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_TX TREADY" *) input DMA_REQ_TX_DRREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 DMA_REQ_RX_ACLK CLK, xilinx.com:signal:clock:1.0 DMA_REQ_RX_DMA_ACK_RX_signal_clock CLK" *) input DMA_REQ_RX_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 DMA_REQ_RX_DMA_ACK_RX_signal_reset RST" *) input DMA_REQ_RX_RSTN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_ACK_RX TVALID" *) input DMA_REQ_RX_DAVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_ACK_RX TUSER" *) input [1:0]DMA_REQ_RX_DATYPE;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_ACK_RX TREADY" *) output DMA_REQ_RX_DAREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_RX TVALID" *) output DMA_REQ_RX_DRVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_RX TUSER" *) output [1:0]DMA_REQ_RX_DRTYPE;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_RX TLAST" *) output DMA_REQ_RX_DRLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 DMA_REQ_RX TREADY" *) input DMA_REQ_RX_DRREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [15:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]BCLK_O;
  wire DATA_CLK_I;
  wire DMA_REQ_RX_ACLK;
  wire [1:0]DMA_REQ_RX_DATYPE;
  wire DMA_REQ_RX_DAVALID;
  wire DMA_REQ_RX_DRREADY;
  wire [1:1]\^DMA_REQ_RX_DRTYPE ;
  wire DMA_REQ_RX_DRVALID;
  wire DMA_REQ_RX_RSTN;
  wire DMA_REQ_TX_ACLK;
  wire [1:0]DMA_REQ_TX_DATYPE;
  wire DMA_REQ_TX_DAVALID;
  wire DMA_REQ_TX_DRREADY;
  wire [1:1]\^DMA_REQ_TX_DRTYPE ;
  wire DMA_REQ_TX_DRVALID;
  wire DMA_REQ_TX_RSTN;
  wire [0:0]LRCLK_O;
  wire [0:0]SDATA_I;
  wire [0:0]SDATA_O;
  wire S_AXI_ACLK;
  wire [15:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [15:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;

  assign DMA_REQ_RX_DAREADY = \<const1> ;
  assign DMA_REQ_RX_DRLAST = \<const0> ;
  assign DMA_REQ_RX_DRTYPE[1] = \^DMA_REQ_RX_DRTYPE [1];
  assign DMA_REQ_RX_DRTYPE[0] = \<const0> ;
  assign DMA_REQ_TX_DAREADY = \<const1> ;
  assign DMA_REQ_TX_DRLAST = \<const0> ;
  assign DMA_REQ_TX_DRTYPE[1] = \^DMA_REQ_TX_DRTYPE [1];
  assign DMA_REQ_TX_DRTYPE[0] = \<const0> ;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = S_AXI_AWREADY;
  GND GND
       (.G(\<const0> ));
  system_axi_i2s_adi_0_axi_i2s_adi U0
       (.BCLK_O(BCLK_O),
        .DATA_CLK_I(DATA_CLK_I),
        .DMA_REQ_RX_ACLK(DMA_REQ_RX_ACLK),
        .DMA_REQ_RX_DATYPE(DMA_REQ_RX_DATYPE),
        .DMA_REQ_RX_DAVALID(DMA_REQ_RX_DAVALID),
        .DMA_REQ_RX_DRREADY(DMA_REQ_RX_DRREADY),
        .DMA_REQ_RX_DRTYPE(\^DMA_REQ_RX_DRTYPE ),
        .DMA_REQ_RX_DRVALID(DMA_REQ_RX_DRVALID),
        .DMA_REQ_RX_RSTN(DMA_REQ_RX_RSTN),
        .DMA_REQ_TX_ACLK(DMA_REQ_TX_ACLK),
        .DMA_REQ_TX_DATYPE(DMA_REQ_TX_DATYPE),
        .DMA_REQ_TX_DAVALID(DMA_REQ_TX_DAVALID),
        .DMA_REQ_TX_DRREADY(DMA_REQ_TX_DRREADY),
        .DMA_REQ_TX_DRTYPE(\^DMA_REQ_TX_DRTYPE ),
        .DMA_REQ_TX_DRVALID(DMA_REQ_TX_DRVALID),
        .DMA_REQ_TX_RSTN(DMA_REQ_TX_RSTN),
        .LRCLK_O(LRCLK_O),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[5:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[5:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "axi_ctrlif" *) 
module system_axi_i2s_adi_0_axi_ctrlif
   (S_AXI_RVALID,
    \wr_addr_reg[0] ,
    wr_stb,
    \rd_addr_reg[0]_0 ,
    S_AXI_RDATA,
    S_AXI_AWREADY,
    S_AXI_BVALID,
    p_0_in1_out,
    \wr_addr_reg[0]_0 ,
    \rd_addr_reg[0]_1 ,
    S_AXI_ARREADY,
    \I2S_RESET_REG_reg[1] ,
    E,
    \I2S_CLK_CONTROL_REG_reg[0] ,
    SR,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    full,
    empty_reg,
    Q,
    data3,
    \PERIOD_LEN_REG_reg[15] ,
    out_data,
    S_AXI_ARESETN,
    tx_fifo_reset,
    wr_addr,
    rd_addr,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    \I2S_CONTROL_REG_reg[0] ,
    rx_enable,
    S_AXI_BREADY,
    S_AXI_ARADDR);
  output S_AXI_RVALID;
  output \wr_addr_reg[0] ;
  output wr_stb;
  output \rd_addr_reg[0]_0 ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_AWREADY;
  output S_AXI_BVALID;
  output p_0_in1_out;
  output \wr_addr_reg[0]_0 ;
  output \rd_addr_reg[0]_1 ;
  output S_AXI_ARREADY;
  output \I2S_RESET_REG_reg[1] ;
  output [0:0]E;
  output [0:0]\I2S_CLK_CONTROL_REG_reg[0] ;
  input [0:0]SR;
  input S_AXI_ACLK;
  input [3:0]S_AXI_AWADDR;
  input full;
  input empty_reg;
  input [15:0]Q;
  input [7:0]data3;
  input [15:0]\PERIOD_LEN_REG_reg[15] ;
  input [23:0]out_data;
  input S_AXI_ARESETN;
  input tx_fifo_reset;
  input [0:0]wr_addr;
  input [0:0]rd_addr;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input \I2S_CONTROL_REG_reg[0] ;
  input rx_enable;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;

  wire [0:0]E;
  wire [0:0]\I2S_CLK_CONTROL_REG_reg[0] ;
  wire \I2S_CONTROL_REG_reg[0] ;
  wire \I2S_RESET_REG_reg[1] ;
  wire [15:0]\PERIOD_LEN_REG_reg[15] ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire \S_AXI_RDATA[0]_INST_0_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_INST_0_i_1_n_0 ;
  wire \S_AXI_RDATA[7]_INST_0_i_1_n_0 ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WVALID;
  wire [7:0]data3;
  wire empty_reg;
  wire full;
  wire [23:0]out_data;
  wire p_0_in1_out;
  wire [0:0]rd_addr;
  wire \rd_addr[3]_i_1_n_0 ;
  wire [3:0]rd_addr__0;
  wire \rd_addr_reg[0]_0 ;
  wire \rd_addr_reg[0]_1 ;
  wire \rd_state[0]_i_1_n_0 ;
  wire rx_enable;
  wire rx_fifo_ack;
  wire tx_fifo_reset;
  wire [0:0]wr_addr;
  wire \wr_addr_reg[0] ;
  wire \wr_addr_reg[0]_0 ;
  wire [1:0]wr_state;
  wire \wr_state[0]_i_1_n_0 ;
  wire \wr_state[1]_i_1_n_0 ;
  wire wr_stb;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2S_CLK_CONTROL_REG[23]_i_1 
       (.I0(wr_stb),
        .I1(S_AXI_AWADDR[0]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[3]),
        .I4(S_AXI_AWADDR[2]),
        .O(\I2S_CLK_CONTROL_REG_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \I2S_CLK_CONTROL_REG[23]_i_2 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(wr_state[1]),
        .I3(wr_state[0]),
        .O(wr_stb));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \I2S_RESET_REG[2]_i_2 
       (.I0(wr_state[0]),
        .I1(wr_state[1]),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_ARESETN),
        .O(\I2S_RESET_REG_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \PERIOD_LEN_REG[15]_i_1 
       (.I0(wr_stb),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_AWADDR[2]),
        .I3(S_AXI_AWADDR[0]),
        .I4(S_AXI_AWADDR[3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_RVALID),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_AWREADY_INST_0
       (.I0(wr_state[1]),
        .I1(wr_state[0]),
        .O(S_AXI_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_BVALID_INST_0
       (.I0(wr_state[0]),
        .I1(wr_state[1]),
        .O(S_AXI_BVALID));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(\I2S_CONTROL_REG_reg[0] ),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[1]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(\S_AXI_RDATA[0]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[0]));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \S_AXI_RDATA[0]_INST_0_i_1 
       (.I0(rd_addr__0[1]),
        .I1(Q[0]),
        .I2(rd_addr__0[3]),
        .I3(data3[0]),
        .I4(rd_addr__0[2]),
        .I5(\PERIOD_LEN_REG_reg[15] [0]),
        .O(\S_AXI_RDATA[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[10]_INST_0 
       (.I0(out_data[2]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [10]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[10]));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[11]_INST_0 
       (.I0(out_data[3]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [11]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[11]));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[12]_INST_0 
       (.I0(out_data[4]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [12]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[12]));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[13]_INST_0 
       (.I0(out_data[5]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [13]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[13]));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[14]_INST_0 
       (.I0(out_data[6]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [14]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[14]));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[15]_INST_0 
       (.I0(out_data[7]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [15]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[15]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[16]_INST_0 
       (.I0(Q[8]),
        .I1(rd_addr__0[3]),
        .I2(out_data[8]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[16]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[17]_INST_0 
       (.I0(Q[9]),
        .I1(rd_addr__0[3]),
        .I2(out_data[9]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[17]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[18]_INST_0 
       (.I0(Q[10]),
        .I1(rd_addr__0[3]),
        .I2(out_data[10]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[18]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[19]_INST_0 
       (.I0(Q[11]),
        .I1(rd_addr__0[3]),
        .I2(out_data[11]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[19]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(rx_enable),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[1]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(\S_AXI_RDATA[1]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[1]));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \S_AXI_RDATA[1]_INST_0_i_1 
       (.I0(rd_addr__0[1]),
        .I1(Q[1]),
        .I2(rd_addr__0[3]),
        .I3(data3[1]),
        .I4(rd_addr__0[2]),
        .I5(\PERIOD_LEN_REG_reg[15] [1]),
        .O(\S_AXI_RDATA[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[20]_INST_0 
       (.I0(Q[12]),
        .I1(rd_addr__0[3]),
        .I2(out_data[12]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[20]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[21]_INST_0 
       (.I0(Q[13]),
        .I1(rd_addr__0[3]),
        .I2(out_data[13]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[21]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[22]_INST_0 
       (.I0(Q[14]),
        .I1(rd_addr__0[3]),
        .I2(out_data[14]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[22]));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \S_AXI_RDATA[23]_INST_0 
       (.I0(Q[15]),
        .I1(rd_addr__0[3]),
        .I2(out_data[15]),
        .I3(rd_addr__0[2]),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[1]),
        .O(S_AXI_RDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[24]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[16]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[24]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[25]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[17]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[25]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[26]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[18]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[26]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[27]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[19]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[27]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[28]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[20]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[28]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[29]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[21]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[29]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(Q[2]),
        .I1(rd_addr__0[3]),
        .I2(data3[2]),
        .I3(rd_addr__0[2]),
        .I4(\PERIOD_LEN_REG_reg[15] [2]),
        .I5(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[2]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[30]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[22]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[30]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \S_AXI_RDATA[31]_INST_0 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[0]),
        .I2(rd_addr__0[1]),
        .I3(out_data[23]),
        .I4(rd_addr__0[3]),
        .O(S_AXI_RDATA[31]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(Q[3]),
        .I1(rd_addr__0[3]),
        .I2(data3[3]),
        .I3(rd_addr__0[2]),
        .I4(\PERIOD_LEN_REG_reg[15] [3]),
        .I5(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[4]_INST_0 
       (.I0(Q[4]),
        .I1(rd_addr__0[3]),
        .I2(data3[4]),
        .I3(rd_addr__0[2]),
        .I4(\PERIOD_LEN_REG_reg[15] [4]),
        .I5(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[5]_INST_0 
       (.I0(Q[5]),
        .I1(rd_addr__0[3]),
        .I2(data3[5]),
        .I3(rd_addr__0[2]),
        .I4(\PERIOD_LEN_REG_reg[15] [5]),
        .I5(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[6]_INST_0 
       (.I0(Q[6]),
        .I1(rd_addr__0[3]),
        .I2(data3[6]),
        .I3(rd_addr__0[2]),
        .I4(\PERIOD_LEN_REG_reg[15] [6]),
        .I5(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[7]_INST_0 
       (.I0(Q[7]),
        .I1(rd_addr__0[3]),
        .I2(data3[7]),
        .I3(rd_addr__0[2]),
        .I4(\PERIOD_LEN_REG_reg[15] [7]),
        .I5(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ),
        .O(S_AXI_RDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \S_AXI_RDATA[7]_INST_0_i_1 
       (.I0(rd_addr__0[0]),
        .I1(rd_addr__0[1]),
        .O(\S_AXI_RDATA[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[8]_INST_0 
       (.I0(out_data[0]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [8]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[8]));
  LUT6 #(
    .INIT(64'h0000000038080000)) 
    \S_AXI_RDATA[9]_INST_0 
       (.I0(out_data[1]),
        .I1(rd_addr__0[3]),
        .I2(rd_addr__0[2]),
        .I3(\PERIOD_LEN_REG_reg[15] [9]),
        .I4(rd_addr__0[1]),
        .I5(rd_addr__0[0]),
        .O(S_AXI_RDATA[9]));
  LUT3 #(
    .INIT(8'h08)) 
    data_fifo_reg_0_7_0_5_i_1
       (.I0(\wr_addr_reg[0] ),
        .I1(S_AXI_ARESETN),
        .I2(tx_fifo_reset),
        .O(p_0_in1_out));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    data_fifo_reg_0_7_0_5_i_2
       (.I0(wr_stb),
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_AWADDR[0]),
        .I3(S_AXI_AWADDR[1]),
        .I4(S_AXI_AWADDR[2]),
        .I5(full),
        .O(\wr_addr_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[0]_i_1__2 
       (.I0(\rd_addr_reg[0]_0 ),
        .I1(rd_addr),
        .O(\rd_addr_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_addr[2]_i_2 
       (.I0(rx_fifo_ack),
        .I1(empty_reg),
        .O(\rd_addr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \rd_addr[2]_i_3 
       (.I0(rd_addr__0[2]),
        .I1(rd_addr__0[1]),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .I4(rd_addr__0[0]),
        .I5(rd_addr__0[3]),
        .O(rx_fifo_ack));
  LUT3 #(
    .INIT(8'h20)) 
    \rd_addr[3]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARVALID),
        .O(\rd_addr[3]_i_1_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(S_AXI_ARADDR[0]),
        .Q(rd_addr__0[0]),
        .R(1'b0));
  FDRE \rd_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(S_AXI_ARADDR[1]),
        .Q(rd_addr__0[1]),
        .R(1'b0));
  FDRE \rd_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(S_AXI_ARADDR[2]),
        .Q(rd_addr__0[2]),
        .R(1'b0));
  FDRE \rd_addr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(S_AXI_ARADDR[3]),
        .Q(rd_addr__0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \rd_state[0]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RREADY),
        .I2(S_AXI_RVALID),
        .O(\rd_state[0]_i_1_n_0 ));
  FDRE \rd_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_state[0]_i_1_n_0 ),
        .Q(S_AXI_RVALID),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[0]_i_1__0 
       (.I0(\wr_addr_reg[0] ),
        .I1(wr_addr),
        .O(\wr_addr_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \wr_state[0]_i_1 
       (.I0(wr_state[1]),
        .I1(wr_state[0]),
        .I2(S_AXI_BREADY),
        .O(\wr_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \wr_state[1]_i_1 
       (.I0(wr_state[1]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(wr_state[0]),
        .O(\wr_state[1]_i_1_n_0 ));
  FDRE \wr_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_state[0]_i_1_n_0 ),
        .Q(wr_state[0]),
        .R(SR));
  FDRE \wr_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_state[1]_i_1_n_0 ),
        .Q(wr_state[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_i2s_adi" *) 
module system_axi_i2s_adi_0_axi_i2s_adi
   (S_AXI_RDATA,
    S_AXI_AWREADY,
    S_AXI_BVALID,
    DMA_REQ_TX_DRTYPE,
    DMA_REQ_TX_DRVALID,
    DMA_REQ_RX_DRTYPE,
    DMA_REQ_RX_DRVALID,
    BCLK_O,
    LRCLK_O,
    SDATA_O,
    S_AXI_ARREADY,
    S_AXI_RVALID,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    DATA_CLK_I,
    S_AXI_WDATA,
    SDATA_I,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    DMA_REQ_TX_RSTN,
    DMA_REQ_TX_DATYPE,
    DMA_REQ_TX_DAVALID,
    DMA_REQ_TX_DRREADY,
    DMA_REQ_TX_ACLK,
    DMA_REQ_RX_RSTN,
    DMA_REQ_RX_DATYPE,
    DMA_REQ_RX_DAVALID,
    DMA_REQ_RX_DRREADY,
    DMA_REQ_RX_ACLK,
    S_AXI_ARVALID,
    S_AXI_RREADY);
  output [31:0]S_AXI_RDATA;
  output S_AXI_AWREADY;
  output S_AXI_BVALID;
  output [0:0]DMA_REQ_TX_DRTYPE;
  output DMA_REQ_TX_DRVALID;
  output [0:0]DMA_REQ_RX_DRTYPE;
  output DMA_REQ_RX_DRVALID;
  output [0:0]BCLK_O;
  output [0:0]LRCLK_O;
  output [0:0]SDATA_O;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input DATA_CLK_I;
  input [31:0]S_AXI_WDATA;
  input [0:0]SDATA_I;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input DMA_REQ_TX_RSTN;
  input [1:0]DMA_REQ_TX_DATYPE;
  input DMA_REQ_TX_DAVALID;
  input DMA_REQ_TX_DRREADY;
  input DMA_REQ_TX_ACLK;
  input DMA_REQ_RX_RSTN;
  input [1:0]DMA_REQ_RX_DATYPE;
  input DMA_REQ_RX_DAVALID;
  input DMA_REQ_RX_DRREADY;
  input DMA_REQ_RX_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;

  wire [0:0]BCLK_O;
  wire DATA_CLK_I;
  wire DMA_REQ_RX_ACLK;
  wire [1:0]DMA_REQ_RX_DATYPE;
  wire DMA_REQ_RX_DAVALID;
  wire DMA_REQ_RX_DRREADY;
  wire [0:0]DMA_REQ_RX_DRTYPE;
  wire DMA_REQ_RX_DRVALID;
  wire DMA_REQ_RX_RSTN;
  wire DMA_REQ_TX_ACLK;
  wire [1:0]DMA_REQ_TX_DATYPE;
  wire DMA_REQ_TX_DAVALID;
  wire DMA_REQ_TX_DRREADY;
  wire [0:0]DMA_REQ_TX_DRTYPE;
  wire DMA_REQ_TX_DRVALID;
  wire DMA_REQ_TX_RSTN;
  wire \I2S_CONTROL_REG[0]_i_1_n_0 ;
  wire \I2S_CONTROL_REG[1]_i_1_n_0 ;
  wire \I2S_CONTROL_REG[1]_i_2_n_0 ;
  wire \I2S_CONTROL_REG_reg_n_0_[0] ;
  wire \I2S_RESET_REG[1]_i_1_n_0 ;
  wire \I2S_RESET_REG[2]_i_1_n_0 ;
  wire [0:0]LRCLK_O;
  wire \PERIOD_LEN_REG_reg_n_0_[0] ;
  wire \PERIOD_LEN_REG_reg_n_0_[10] ;
  wire \PERIOD_LEN_REG_reg_n_0_[11] ;
  wire \PERIOD_LEN_REG_reg_n_0_[12] ;
  wire \PERIOD_LEN_REG_reg_n_0_[13] ;
  wire \PERIOD_LEN_REG_reg_n_0_[14] ;
  wire \PERIOD_LEN_REG_reg_n_0_[15] ;
  wire \PERIOD_LEN_REG_reg_n_0_[1] ;
  wire \PERIOD_LEN_REG_reg_n_0_[2] ;
  wire \PERIOD_LEN_REG_reg_n_0_[3] ;
  wire \PERIOD_LEN_REG_reg_n_0_[4] ;
  wire \PERIOD_LEN_REG_reg_n_0_[5] ;
  wire \PERIOD_LEN_REG_reg_n_0_[6] ;
  wire \PERIOD_LEN_REG_reg_n_0_[7] ;
  wire \PERIOD_LEN_REG_reg_n_0_[8] ;
  wire \PERIOD_LEN_REG_reg_n_0_[9] ;
  wire [0:0]SDATA_I;
  wire [0:0]SDATA_O;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire ctrl_n_0;
  wire ctrl_n_8;
  wire ctrl_n_9;
  wire ctrlif_n_1;
  wire ctrlif_n_3;
  wire ctrlif_n_39;
  wire ctrlif_n_40;
  wire ctrlif_n_42;
  wire ctrlif_n_43;
  wire ctrlif_n_44;
  wire [23:0]data1;
  wire [7:0]data3;
  wire empty;
  wire [0:0]\fifo/rd_addr ;
  wire [0:0]\fifo/wr_addr ;
  wire [0:0]free_cnt;
  wire full;
  wire p_0_in1_out;
  wire \pl330_dma_rx_gen.rx_fifo_n_1 ;
  wire \pl330_dma_rx_gen.rx_fifo_n_2 ;
  wire \pl330_dma_tx_gen.tx_fifo_n_26 ;
  wire \pl330_dma_tx_gen.tx_fifo_n_29 ;
  wire [23:0]rx_data;
  wire rx_enable;
  wire rx_fifo_reset;
  wire [23:0]rx_sample;
  wire rx_stb;
  wire [23:1]tx_data;
  wire tx_fifo_reset;
  wire \tx_gen.tx/channel_sync_int ;
  wire \tx_gen.tx/channel_sync_int_d1 ;
  wire \tx_gen.tx/enable_int ;
  wire wr_stb;
  wire [3:3]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;

  FDRE \I2S_CLK_CONTROL_REG_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[0]),
        .Q(data1[0]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[16]),
        .Q(data1[16]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[17]),
        .Q(data1[17]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[18]),
        .Q(data1[18]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[19]),
        .Q(data1[19]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[1]),
        .Q(data1[1]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[20]),
        .Q(data1[20]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[21]),
        .Q(data1[21]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[22]),
        .Q(data1[22]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[23]),
        .Q(data1[23]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[2]),
        .Q(data1[2]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[3]),
        .Q(data1[3]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[4]),
        .Q(data1[4]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[5]),
        .Q(data1[5]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[6]),
        .Q(data1[6]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_44),
        .D(S_AXI_WDATA[7]),
        .Q(data1[7]),
        .R(ctrl_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \I2S_CONTROL_REG[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(wr_stb),
        .I2(S_AXI_AWADDR[3]),
        .I3(S_AXI_AWADDR[0]),
        .I4(\I2S_CONTROL_REG[1]_i_2_n_0 ),
        .I5(\I2S_CONTROL_REG_reg_n_0_[0] ),
        .O(\I2S_CONTROL_REG[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \I2S_CONTROL_REG[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(wr_stb),
        .I2(S_AXI_AWADDR[3]),
        .I3(S_AXI_AWADDR[0]),
        .I4(\I2S_CONTROL_REG[1]_i_2_n_0 ),
        .I5(rx_enable),
        .O(\I2S_CONTROL_REG[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \I2S_CONTROL_REG[1]_i_2 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_AWADDR[2]),
        .O(\I2S_CONTROL_REG[1]_i_2_n_0 ));
  FDRE \I2S_CONTROL_REG_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\I2S_CONTROL_REG[0]_i_1_n_0 ),
        .Q(\I2S_CONTROL_REG_reg_n_0_[0] ),
        .R(ctrl_n_0));
  FDRE \I2S_CONTROL_REG_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\I2S_CONTROL_REG[1]_i_1_n_0 ),
        .Q(rx_enable),
        .R(ctrl_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2S_RESET_REG[1]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_WDATA[1]),
        .I3(S_AXI_AWADDR[1]),
        .I4(S_AXI_AWADDR[2]),
        .I5(ctrlif_n_42),
        .O(\I2S_RESET_REG[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \I2S_RESET_REG[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_WDATA[2]),
        .I3(S_AXI_AWADDR[1]),
        .I4(S_AXI_AWADDR[2]),
        .I5(ctrlif_n_42),
        .O(\I2S_RESET_REG[2]_i_1_n_0 ));
  FDRE \I2S_RESET_REG_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\I2S_RESET_REG[1]_i_1_n_0 ),
        .Q(tx_fifo_reset),
        .R(1'b0));
  FDRE \I2S_RESET_REG_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\I2S_RESET_REG[2]_i_1_n_0 ),
        .Q(rx_fifo_reset),
        .R(1'b0));
  FDRE \PERIOD_LEN_REG_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[0]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[0] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[10]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[10] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[11]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[11] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[12]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[12] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[13]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[13] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[14]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[14] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[15]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[15] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[1]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[1] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[2]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[2] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[3]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[3] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[4]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[4] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[5]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[5] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[6]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[6] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[7]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[7] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[8]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[8] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(ctrlif_n_43),
        .D(S_AXI_WDATA[9]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[9] ),
        .R(ctrl_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[0]_i_2 
       (.I0(data3[3]),
        .O(\cnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[0]_i_3 
       (.I0(data3[2]),
        .O(\cnt[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[0]_i_4 
       (.I0(data3[1]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5 
       (.I0(data3[0]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[4]_i_2 
       (.I0(data3[7]),
        .O(\cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[4]_i_3 
       (.I0(data3[6]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[4]_i_4 
       (.I0(data3[5]),
        .O(\cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt[4]_i_5 
       (.I0(data3[4]),
        .O(\cnt[4]_i_5_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(data3[0]),
        .R(ctrl_n_0));
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt[0]_i_2_n_0 ,\cnt[0]_i_3_n_0 ,\cnt[0]_i_4_n_0 ,\cnt[0]_i_5_n_0 }));
  FDRE \cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(data3[1]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(data3[2]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(data3[3]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(data3[4]),
        .R(ctrl_n_0));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [3],\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt[4]_i_2_n_0 ,\cnt[4]_i_3_n_0 ,\cnt[4]_i_4_n_0 ,\cnt[4]_i_5_n_0 }));
  FDRE \cnt_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(data3[5]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(data3[6]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(data3[7]),
        .R(ctrl_n_0));
  system_axi_i2s_adi_0_i2s_controller ctrl
       (.BCLK_O(BCLK_O),
        .D(free_cnt),
        .DATA_CLK_I(DATA_CLK_I),
        .\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg_n_0_[0] ),
        .LRCLK_O(LRCLK_O),
        .Q({data1[23:16],data1[7:0]}),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .SR(ctrl_n_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\S_AXI_RDATA[30] (rx_data),
        .channel_sync_int(\tx_gen.tx/channel_sync_int ),
        .channel_sync_int_d1(\tx_gen.tx/channel_sync_int_d1 ),
        .empty(empty),
        .enable_int(\tx_gen.tx/enable_int ),
        .\free_cnt_reg[0] (\pl330_dma_tx_gen.tx_fifo_n_29 ),
        .\free_cnt_reg[2] (ctrl_n_8),
        .\free_cnt_reg[3] (ctrl_n_9),
        .full_reg(\pl330_dma_rx_gen.rx_fifo_n_2 ),
        .full_reg_0(ctrlif_n_1),
        .out_data(tx_data),
        .\rd_addr_reg[2] (\pl330_dma_tx_gen.tx_fifo_n_26 ),
        .rx_enable(rx_enable),
        .rx_stb(rx_stb));
  system_axi_i2s_adi_0_axi_ctrlif ctrlif
       (.E(ctrlif_n_43),
        .\I2S_CLK_CONTROL_REG_reg[0] (ctrlif_n_44),
        .\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg_n_0_[0] ),
        .\I2S_RESET_REG_reg[1] (ctrlif_n_42),
        .\PERIOD_LEN_REG_reg[15] ({\PERIOD_LEN_REG_reg_n_0_[15] ,\PERIOD_LEN_REG_reg_n_0_[14] ,\PERIOD_LEN_REG_reg_n_0_[13] ,\PERIOD_LEN_REG_reg_n_0_[12] ,\PERIOD_LEN_REG_reg_n_0_[11] ,\PERIOD_LEN_REG_reg_n_0_[10] ,\PERIOD_LEN_REG_reg_n_0_[9] ,\PERIOD_LEN_REG_reg_n_0_[8] ,\PERIOD_LEN_REG_reg_n_0_[7] ,\PERIOD_LEN_REG_reg_n_0_[6] ,\PERIOD_LEN_REG_reg_n_0_[5] ,\PERIOD_LEN_REG_reg_n_0_[4] ,\PERIOD_LEN_REG_reg_n_0_[3] ,\PERIOD_LEN_REG_reg_n_0_[2] ,\PERIOD_LEN_REG_reg_n_0_[1] ,\PERIOD_LEN_REG_reg_n_0_[0] }),
        .Q({data1[23:16],data1[7:0]}),
        .SR(ctrl_n_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WVALID(S_AXI_WVALID),
        .data3(data3),
        .empty_reg(\pl330_dma_rx_gen.rx_fifo_n_1 ),
        .full(full),
        .out_data(rx_sample),
        .p_0_in1_out(p_0_in1_out),
        .rd_addr(\fifo/rd_addr ),
        .\rd_addr_reg[0]_0 (ctrlif_n_3),
        .\rd_addr_reg[0]_1 (ctrlif_n_40),
        .rx_enable(rx_enable),
        .tx_fifo_reset(tx_fifo_reset),
        .wr_addr(\fifo/wr_addr ),
        .\wr_addr_reg[0] (ctrlif_n_1),
        .\wr_addr_reg[0]_0 (ctrlif_n_39),
        .wr_stb(wr_stb));
  system_axi_i2s_adi_0_pl330_dma_fifo__parameterized0 \pl330_dma_rx_gen.rx_fifo 
       (.DMA_REQ_RX_ACLK(DMA_REQ_RX_ACLK),
        .DMA_REQ_RX_DATYPE(DMA_REQ_RX_DATYPE),
        .DMA_REQ_RX_DAVALID(DMA_REQ_RX_DAVALID),
        .DMA_REQ_RX_DRREADY(DMA_REQ_RX_DRREADY),
        .DMA_REQ_RX_DRTYPE(DMA_REQ_RX_DRTYPE),
        .DMA_REQ_RX_DRVALID(DMA_REQ_RX_DRVALID),
        .DMA_REQ_RX_RSTN(DMA_REQ_RX_RSTN),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .empty_reg(ctrlif_n_3),
        .\free_cnt_reg[0] (\pl330_dma_rx_gen.rx_fifo_n_2 ),
        .in_data(rx_data),
        .out_data(rx_sample),
        .\rd_addr_reg[0] (\pl330_dma_rx_gen.rx_fifo_n_1 ),
        .\rd_addr_reg[0]_0 (ctrlif_n_40),
        .\rd_addr_reg[1] (\fifo/rd_addr ),
        .rx_enable(rx_enable),
        .rx_fifo_reset(rx_fifo_reset),
        .rx_stb(rx_stb),
        .sequencer_state_reg(ctrl_n_9));
  system_axi_i2s_adi_0_pl330_dma_fifo \pl330_dma_tx_gen.tx_fifo 
       (.D(free_cnt),
        .DMA_REQ_TX_ACLK(DMA_REQ_TX_ACLK),
        .DMA_REQ_TX_DATYPE(DMA_REQ_TX_DATYPE),
        .DMA_REQ_TX_DAVALID(DMA_REQ_TX_DAVALID),
        .DMA_REQ_TX_DRREADY(DMA_REQ_TX_DRREADY),
        .DMA_REQ_TX_DRTYPE(DMA_REQ_TX_DRTYPE),
        .DMA_REQ_TX_DRVALID(DMA_REQ_TX_DRVALID),
        .DMA_REQ_TX_RSTN(DMA_REQ_TX_RSTN),
        .\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg_n_0_[0] ),
        .Q(\pl330_dma_tx_gen.tx_fifo_n_29 ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_WDATA(S_AXI_WDATA[31:8]),
        .channel_sync_int(\tx_gen.tx/channel_sync_int ),
        .channel_sync_int_d1(\tx_gen.tx/channel_sync_int_d1 ),
        .empty(empty),
        .enable_int(\tx_gen.tx/enable_int ),
        .enable_int_reg(ctrl_n_8),
        .full(full),
        .full_reg(ctrlif_n_1),
        .\gen[0].data_int_reg[0][8] (\pl330_dma_tx_gen.tx_fifo_n_26 ),
        .out_data(tx_data),
        .p_0_in1_out(p_0_in1_out),
        .tx_fifo_reset(tx_fifo_reset),
        .\wr_addr_reg[0] (ctrlif_n_39),
        .\wr_addr_reg[1] (\fifo/wr_addr ));
endmodule

(* ORIG_REF_NAME = "dma_fifo" *) 
module system_axi_i2s_adi_0_dma_fifo
   (out_data,
    ADDRD,
    \free_cnt_reg[1]_0 ,
    full,
    \gen[0].data_int_reg[0][8] ,
    \state_reg[1] ,
    Q,
    S_AXI_ACLK,
    p_0_in1_out,
    S_AXI_WDATA,
    \wr_addr_reg[0]_0 ,
    channel_sync_int,
    tx_fifo_reset,
    S_AXI_ARESETN,
    \I2S_CONTROL_REG_reg[0] ,
    full_reg_0,
    enable_int_reg,
    channel_sync_int_d1,
    enable_int,
    D);
  output [22:0]out_data;
  output [0:0]ADDRD;
  output \free_cnt_reg[1]_0 ;
  output full;
  output [0:0]\gen[0].data_int_reg[0][8] ;
  output \state_reg[1] ;
  output [0:0]Q;
  input S_AXI_ACLK;
  input p_0_in1_out;
  input [23:0]S_AXI_WDATA;
  input \wr_addr_reg[0]_0 ;
  input channel_sync_int;
  input tx_fifo_reset;
  input S_AXI_ARESETN;
  input \I2S_CONTROL_REG_reg[0] ;
  input full_reg_0;
  input enable_int_reg;
  input channel_sync_int_d1;
  input enable_int;
  input [0:0]D;

  wire [0:0]ADDRD;
  wire [0:0]D;
  wire \I2S_CONTROL_REG_reg[0] ;
  wire [0:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [23:0]S_AXI_WDATA;
  wire channel_sync_int;
  wire channel_sync_int_d1;
  wire empty_i_1_n_0;
  wire enable_int;
  wire enable_int_reg;
  wire [3:1]free_cnt;
  wire \free_cnt_reg[1]_0 ;
  wire \free_cnt_reg_n_0_[1] ;
  wire \free_cnt_reg_n_0_[2] ;
  wire \free_cnt_reg_n_0_[3] ;
  wire full;
  wire full_i_1_n_0;
  wire full_reg_0;
  wire [0:0]\gen[0].data_int_reg[0][8] ;
  wire [22:0]out_data;
  wire p_0_in1_out;
  wire [2:0]rd_addr;
  wire \rd_addr[0]_i_1__1_n_0 ;
  wire \rd_addr[1]_i_1__1_n_0 ;
  wire \rd_addr[2]_i_1_n_0 ;
  wire \state_reg[1] ;
  wire [0:0]tx_data;
  wire tx_fifo_reset;
  wire [2:1]wr_addr;
  wire \wr_addr[1]_i_1__0_n_0 ;
  wire \wr_addr[2]_i_1__0_n_0 ;
  wire \wr_addr[2]_i_2_n_0 ;
  wire \wr_addr_reg[0]_0 ;
  wire [1:0]NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED;

  RAM32M data_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr,ADDRD}),
        .DIA(S_AXI_WDATA[1:0]),
        .DIB(S_AXI_WDATA[3:2]),
        .DIC(S_AXI_WDATA[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({out_data[0],tx_data}),
        .DOB(out_data[2:1]),
        .DOC(out_data[4:3]),
        .DOD(NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out));
  RAM32M data_fifo_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr,ADDRD}),
        .DIA(S_AXI_WDATA[13:12]),
        .DIB(S_AXI_WDATA[15:14]),
        .DIC(S_AXI_WDATA[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[12:11]),
        .DOB(out_data[14:13]),
        .DOC(out_data[16:15]),
        .DOD(NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out));
  RAM32M data_fifo_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr,ADDRD}),
        .DIA(S_AXI_WDATA[19:18]),
        .DIB(S_AXI_WDATA[21:20]),
        .DIC(S_AXI_WDATA[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[18:17]),
        .DOB(out_data[20:19]),
        .DOC(out_data[22:21]),
        .DOD(NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out));
  RAM32M data_fifo_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr,ADDRD}),
        .DIA(S_AXI_WDATA[7:6]),
        .DIB(S_AXI_WDATA[9:8]),
        .DIC(S_AXI_WDATA[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[6:5]),
        .DOB(out_data[8:7]),
        .DOC(out_data[10:9]),
        .DOD(NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out));
  LUT6 #(
    .INIT(64'h0000400000290000)) 
    empty_i_1
       (.I0(full_reg_0),
        .I1(enable_int_reg),
        .I2(Q),
        .I3(\free_cnt_reg_n_0_[1] ),
        .I4(\free_cnt_reg_n_0_[3] ),
        .I5(\free_cnt_reg_n_0_[2] ),
        .O(empty_i_1_n_0));
  FDSE empty_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .Q(\free_cnt_reg[1]_0 ),
        .S(\wr_addr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9C999999C6CCCCCC)) 
    \free_cnt[1]_i_1 
       (.I0(Q),
        .I1(\free_cnt_reg_n_0_[1] ),
        .I2(\free_cnt_reg[1]_0 ),
        .I3(channel_sync_int_d1),
        .I4(enable_int),
        .I5(full_reg_0),
        .O(free_cnt[1]));
  LUT5 #(
    .INIT(32'hF708EF10)) 
    \free_cnt[2]_i_1 
       (.I0(Q),
        .I1(enable_int_reg),
        .I2(full_reg_0),
        .I3(\free_cnt_reg_n_0_[2] ),
        .I4(\free_cnt_reg_n_0_[1] ),
        .O(free_cnt[2]));
  LUT6 #(
    .INIT(64'hBFFF4000FFFD0002)) 
    \free_cnt[3]_i_1 
       (.I0(full_reg_0),
        .I1(enable_int_reg),
        .I2(Q),
        .I3(\free_cnt_reg_n_0_[1] ),
        .I4(\free_cnt_reg_n_0_[3] ),
        .I5(\free_cnt_reg_n_0_[2] ),
        .O(free_cnt[3]));
  FDRE \free_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D),
        .Q(Q),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \free_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(free_cnt[1]),
        .Q(\free_cnt_reg_n_0_[1] ),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \free_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(free_cnt[2]),
        .Q(\free_cnt_reg_n_0_[2] ),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDSE \free_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(free_cnt[3]),
        .Q(\free_cnt_reg_n_0_[3] ),
        .S(\wr_addr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001001080000001)) 
    full_i_1
       (.I0(\free_cnt_reg_n_0_[2] ),
        .I1(\free_cnt_reg_n_0_[3] ),
        .I2(Q),
        .I3(\free_cnt_reg_n_0_[1] ),
        .I4(enable_int_reg),
        .I5(full_reg_0),
        .O(full_i_1_n_0));
  FDRE full_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(full_i_1_n_0),
        .Q(full),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen[0].data_int[0][8]_i_1 
       (.I0(tx_data),
        .I1(channel_sync_int),
        .O(\gen[0].data_int_reg[0][8] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \rd_addr[0]_i_1__1 
       (.I0(\free_cnt_reg[1]_0 ),
        .I1(channel_sync_int_d1),
        .I2(enable_int),
        .I3(rd_addr[0]),
        .O(\rd_addr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \rd_addr[1]_i_1__1 
       (.I0(rd_addr[0]),
        .I1(enable_int),
        .I2(channel_sync_int_d1),
        .I3(\free_cnt_reg[1]_0 ),
        .I4(rd_addr[1]),
        .O(\rd_addr[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \rd_addr[2]_i_1 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(enable_int),
        .I3(channel_sync_int_d1),
        .I4(\free_cnt_reg[1]_0 ),
        .I5(rd_addr[2]),
        .O(\rd_addr[2]_i_1_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1__1_n_0 ),
        .Q(rd_addr[0]),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \rd_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1__1_n_0 ),
        .Q(rd_addr[1]),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \rd_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[2]_i_1_n_0 ),
        .Q(rd_addr[2]),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_4 
       (.I0(\I2S_CONTROL_REG_reg[0] ),
        .I1(full),
        .O(\state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_addr[1]_i_1__0 
       (.I0(ADDRD),
        .I1(full_reg_0),
        .I2(wr_addr[1]),
        .O(\wr_addr[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \wr_addr[2]_i_1__0 
       (.I0(tx_fifo_reset),
        .I1(S_AXI_ARESETN),
        .O(\wr_addr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_addr[2]_i_2 
       (.I0(ADDRD),
        .I1(wr_addr[1]),
        .I2(full_reg_0),
        .I3(wr_addr[2]),
        .O(\wr_addr[2]_i_2_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr_reg[0]_0 ),
        .Q(ADDRD),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \wr_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1__0_n_0 ),
        .Q(wr_addr[1]),
        .R(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \wr_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[2]_i_2_n_0 ),
        .Q(wr_addr[2]),
        .R(\wr_addr[2]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "dma_fifo" *) 
module system_axi_i2s_adi_0_dma_fifo_0
   (rd_addr,
    \rd_addr_reg[0]_0 ,
    \free_cnt_reg[0]_0 ,
    \state_reg[1] ,
    out_data,
    S_AXI_ACLK,
    \rd_addr_reg[0]_1 ,
    rx_fifo_reset,
    S_AXI_ARESETN,
    rx_enable,
    empty_reg_0,
    sequencer_state_reg,
    rx_stb,
    in_data);
  output [0:0]rd_addr;
  output \rd_addr_reg[0]_0 ;
  output \free_cnt_reg[0]_0 ;
  output \state_reg[1] ;
  output [23:0]out_data;
  input S_AXI_ACLK;
  input \rd_addr_reg[0]_1 ;
  input rx_fifo_reset;
  input S_AXI_ARESETN;
  input rx_enable;
  input empty_reg_0;
  input sequencer_state_reg;
  input rx_stb;
  input [23:0]in_data;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire empty_i_1__0_n_0;
  wire empty_reg_0;
  wire \free_cnt[0]_i_1__0_n_0 ;
  wire \free_cnt[1]_i_1__0_n_0 ;
  wire \free_cnt[2]_i_1__0_n_0 ;
  wire \free_cnt[3]_i_1__0_n_0 ;
  wire \free_cnt_reg[0]_0 ;
  wire \free_cnt_reg_n_0_[0] ;
  wire \free_cnt_reg_n_0_[1] ;
  wire \free_cnt_reg_n_0_[2] ;
  wire \free_cnt_reg_n_0_[3] ;
  wire full_i_1__0_n_0;
  wire [23:0]in_data;
  wire [23:0]out_data;
  wire p_0_in1_out__0;
  wire [0:0]rd_addr;
  wire \rd_addr[1]_i_1__2_n_0 ;
  wire \rd_addr[2]_i_1__0_n_0 ;
  wire [2:1]rd_addr_0;
  wire \rd_addr_reg[0]_0 ;
  wire \rd_addr_reg[0]_1 ;
  wire rx_enable;
  wire rx_fifo_reset;
  wire rx_stb;
  wire sequencer_state_reg;
  wire \state_reg[1] ;
  wire [2:0]wr_addr;
  wire \wr_addr[0]_i_1__1_n_0 ;
  wire \wr_addr[1]_i_1__1_n_0 ;
  wire \wr_addr[2]_i_1_n_0 ;
  wire \wr_addr[2]_i_2__0_n_0 ;
  wire [1:0]NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED;

  RAM32M data_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(in_data[1:0]),
        .DIB(in_data[3:2]),
        .DIC(in_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[1:0]),
        .DOB(out_data[3:2]),
        .DOC(out_data[5:4]),
        .DOD(NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out__0));
  LUT4 #(
    .INIT(16'h0040)) 
    data_fifo_reg_0_7_0_5_i_1__0
       (.I0(\free_cnt_reg[0]_0 ),
        .I1(rx_stb),
        .I2(S_AXI_ARESETN),
        .I3(rx_fifo_reset),
        .O(p_0_in1_out__0));
  RAM32M data_fifo_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(in_data[13:12]),
        .DIB(in_data[15:14]),
        .DIC(in_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[13:12]),
        .DOB(out_data[15:14]),
        .DOC(out_data[17:16]),
        .DOD(NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out__0));
  RAM32M data_fifo_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(in_data[19:18]),
        .DIB(in_data[21:20]),
        .DIC(in_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[19:18]),
        .DOB(out_data[21:20]),
        .DOC(out_data[23:22]),
        .DOD(NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out__0));
  RAM32M data_fifo_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr_0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(in_data[7:6]),
        .DIB(in_data[9:8]),
        .DIC(in_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[7:6]),
        .DOB(out_data[9:8]),
        .DOC(out_data[11:10]),
        .DOD(NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(p_0_in1_out__0));
  LUT6 #(
    .INIT(64'h0000400000290000)) 
    empty_i_1__0
       (.I0(sequencer_state_reg),
        .I1(empty_reg_0),
        .I2(\free_cnt_reg_n_0_[0] ),
        .I3(\free_cnt_reg_n_0_[1] ),
        .I4(\free_cnt_reg_n_0_[3] ),
        .I5(\free_cnt_reg_n_0_[2] ),
        .O(empty_i_1__0_n_0));
  FDSE empty_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(empty_i_1__0_n_0),
        .Q(\rd_addr_reg[0]_0 ),
        .S(\wr_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \free_cnt[0]_i_1__0 
       (.I0(rx_stb),
        .I1(\free_cnt_reg[0]_0 ),
        .I2(empty_reg_0),
        .I3(\free_cnt_reg_n_0_[0] ),
        .O(\free_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6CC96C6C)) 
    \free_cnt[1]_i_1__0 
       (.I0(\free_cnt_reg_n_0_[0] ),
        .I1(\free_cnt_reg_n_0_[1] ),
        .I2(empty_reg_0),
        .I3(\free_cnt_reg[0]_0 ),
        .I4(rx_stb),
        .O(\free_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F778088FEFF0100)) 
    \free_cnt[2]_i_1__0 
       (.I0(\free_cnt_reg_n_0_[0] ),
        .I1(empty_reg_0),
        .I2(\free_cnt_reg[0]_0 ),
        .I3(rx_stb),
        .I4(\free_cnt_reg_n_0_[2] ),
        .I5(\free_cnt_reg_n_0_[1] ),
        .O(\free_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFFD0002)) 
    \free_cnt[3]_i_1__0 
       (.I0(sequencer_state_reg),
        .I1(empty_reg_0),
        .I2(\free_cnt_reg_n_0_[0] ),
        .I3(\free_cnt_reg_n_0_[1] ),
        .I4(\free_cnt_reg_n_0_[3] ),
        .I5(\free_cnt_reg_n_0_[2] ),
        .O(\free_cnt[3]_i_1__0_n_0 ));
  FDRE \free_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\free_cnt[0]_i_1__0_n_0 ),
        .Q(\free_cnt_reg_n_0_[0] ),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDRE \free_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\free_cnt[1]_i_1__0_n_0 ),
        .Q(\free_cnt_reg_n_0_[1] ),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDRE \free_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\free_cnt[2]_i_1__0_n_0 ),
        .Q(\free_cnt_reg_n_0_[2] ),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDSE \free_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\free_cnt[3]_i_1__0_n_0 ),
        .Q(\free_cnt_reg_n_0_[3] ),
        .S(\wr_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001001080000001)) 
    full_i_1__0
       (.I0(\free_cnt_reg_n_0_[2] ),
        .I1(\free_cnt_reg_n_0_[3] ),
        .I2(\free_cnt_reg_n_0_[0] ),
        .I3(\free_cnt_reg_n_0_[1] ),
        .I4(empty_reg_0),
        .I5(sequencer_state_reg),
        .O(full_i_1__0_n_0));
  FDRE full_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(full_i_1__0_n_0),
        .Q(\free_cnt_reg[0]_0 ),
        .R(\wr_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_addr[1]_i_1__2 
       (.I0(rd_addr),
        .I1(empty_reg_0),
        .I2(rd_addr_0[1]),
        .O(\rd_addr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_addr[2]_i_1__0 
       (.I0(rd_addr),
        .I1(rd_addr_0[1]),
        .I2(empty_reg_0),
        .I3(rd_addr_0[2]),
        .O(\rd_addr[2]_i_1__0_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr_reg[0]_1 ),
        .Q(rd_addr),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDRE \rd_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1__2_n_0 ),
        .Q(rd_addr_0[1]),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDRE \rd_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[2]_i_1__0_n_0 ),
        .Q(rd_addr_0[2]),
        .R(\wr_addr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_4__0 
       (.I0(rx_enable),
        .I1(\rd_addr_reg[0]_0 ),
        .O(\state_reg[1] ));
  LUT3 #(
    .INIT(8'hB4)) 
    \wr_addr[0]_i_1__1 
       (.I0(\free_cnt_reg[0]_0 ),
        .I1(rx_stb),
        .I2(wr_addr[0]),
        .O(\wr_addr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \wr_addr[1]_i_1__1 
       (.I0(wr_addr[0]),
        .I1(rx_stb),
        .I2(\free_cnt_reg[0]_0 ),
        .I3(wr_addr[1]),
        .O(\wr_addr[1]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \wr_addr[2]_i_1 
       (.I0(rx_fifo_reset),
        .I1(S_AXI_ARESETN),
        .O(\wr_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \wr_addr[2]_i_2__0 
       (.I0(wr_addr[0]),
        .I1(wr_addr[1]),
        .I2(rx_stb),
        .I3(\free_cnt_reg[0]_0 ),
        .I4(wr_addr[2]),
        .O(\wr_addr[2]_i_2__0_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1__1_n_0 ),
        .Q(wr_addr[0]),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDRE \wr_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1__1_n_0 ),
        .Q(wr_addr[1]),
        .R(\wr_addr[2]_i_1_n_0 ));
  FDRE \wr_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[2]_i_2__0_n_0 ),
        .Q(wr_addr[2]),
        .R(\wr_addr[2]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "fifo_synchronizer" *) 
module system_axi_i2s_adi_0_fifo_synchronizer
   (tick_d1_reg_0,
    \gen[0].data_int_reg[0][9] ,
    out_data0_out,
    channel_sync_int,
    E,
    DATA_CLK_I,
    S_AXI_ACLK,
    bclk_d1,
    S_AXI_ARESETN,
    rx_stb,
    rx_enable,
    Q);
  output tick_d1_reg_0;
  output \gen[0].data_int_reg[0][9] ;
  output [3:0]out_data0_out;
  output channel_sync_int;
  output [0:0]E;
  input DATA_CLK_I;
  input S_AXI_ACLK;
  input bclk_d1;
  input S_AXI_ARESETN;
  input rx_stb;
  input rx_enable;
  input [4:0]Q;

  wire DATA_CLK_I;
  wire [0:0]E;
  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire bclk_d1;
  wire channel_sync_int;
  wire fifo_reg_0_3_0_4_n_2;
  wire \gen[0].data_int_reg[0][9] ;
  wire [4:0]out_data0__0;
  wire [3:0]out_data0_out;
  wire \out_data[4]_i_1__0_n_0 ;
  wire [1:0]rd_addr;
  wire \rd_addr[0]_i_1__0_n_0 ;
  wire \rd_addr[1]_i_1__0_n_0 ;
  wire rx_enable;
  wire rx_stb;
  wire tick_d1;
  wire tick_d1_reg_0;
  wire tick_d2;
  wire tick_i_1_n_0;
  wire tick_reg_n_0;
  wire [1:0]wr_addr;
  wire \wr_addr[0]_i_1_n_0 ;
  wire \wr_addr[1]_i_1_n_0 ;
  wire [1:1]NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED;
  wire [1:0]NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \BCLK_O[0]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(tick_d1_reg_0));
  RAM32M fifo_reg_0_3_0_4
       (.ADDRA({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,1'b0,wr_addr}),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC({1'b0,Q[4]}),
        .DID({1'b0,1'b0}),
        .DOA(out_data0__0[1:0]),
        .DOB({fifo_reg_0_3_0_4_n_2,out_data0__0[2]}),
        .DOC({NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED[1],out_data0__0[4]}),
        .DOD(NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED[1:0]),
        .WCLK(DATA_CLK_I),
        .WE(S_AXI_ARESETN));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen[0].data_int[0][31]_i_2__0 
       (.I0(out_data0_out[2]),
        .I1(bclk_d1),
        .O(\gen[0].data_int_reg[0][9] ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \gen[0].data_latched[0][23]_i_1 
       (.I0(out_data0_out[0]),
        .I1(rx_stb),
        .I2(out_data0_out[2]),
        .I3(bclk_d1),
        .I4(S_AXI_ARESETN),
        .I5(rx_enable),
        .O(E));
  LUT3 #(
    .INIT(8'h28)) 
    \out_data[4]_i_1__0 
       (.I0(S_AXI_ARESETN),
        .I1(tick_d2),
        .I2(tick_d1),
        .O(\out_data[4]_i_1__0_n_0 ));
  FDRE \out_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[0]),
        .Q(out_data0_out[0]),
        .R(1'b0));
  FDRE \out_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[1]),
        .Q(out_data0_out[1]),
        .R(1'b0));
  FDRE \out_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[2]),
        .Q(out_data0_out[2]),
        .R(1'b0));
  FDRE \out_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[4]),
        .Q(out_data0_out[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \rd_addr[0]_i_1__0 
       (.I0(tick_d2),
        .I1(tick_d1),
        .I2(rd_addr[0]),
        .O(\rd_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \rd_addr[1]_i_1__0 
       (.I0(rd_addr[0]),
        .I1(tick_d1),
        .I2(tick_d2),
        .I3(rd_addr[1]),
        .O(\rd_addr[1]_i_1__0_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1__0_n_0 ),
        .Q(rd_addr[0]),
        .R(tick_d1_reg_0));
  FDRE \rd_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1__0_n_0 ),
        .Q(rd_addr[1]),
        .R(tick_d1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    sequencer_state_i_2
       (.I0(out_data0_out[0]),
        .I1(bclk_d1),
        .I2(out_data0_out[2]),
        .O(channel_sync_int));
  FDRE tick_d1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(tick_reg_n_0),
        .Q(tick_d1),
        .R(tick_d1_reg_0));
  FDRE tick_d2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(tick_d1),
        .Q(tick_d2),
        .R(tick_d1_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_i_1
       (.I0(tick_reg_n_0),
        .O(tick_i_1_n_0));
  FDRE tick_reg
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(tick_reg_n_0),
        .R(tick_d1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_addr[0]_i_1 
       (.I0(wr_addr[0]),
        .O(\wr_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[1]_i_1 
       (.I0(wr_addr[0]),
        .I1(wr_addr[1]),
        .O(\wr_addr[1]_i_1_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1_n_0 ),
        .Q(wr_addr[0]),
        .R(tick_d1_reg_0));
  FDRE \wr_addr_reg[1] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1_n_0 ),
        .Q(wr_addr[1]),
        .R(tick_d1_reg_0));
endmodule

(* ORIG_REF_NAME = "fifo_synchronizer" *) 
module system_axi_i2s_adi_0_fifo_synchronizer_1
   (out_data0_out,
    S_AXI_ARESETN_0,
    DATA_CLK_I,
    S_AXI_ACLK,
    tick_d1,
    tick_d2,
    S_AXI_ARESETN,
    in_data);
  output [4:0]out_data0_out;
  input S_AXI_ARESETN_0;
  input DATA_CLK_I;
  input S_AXI_ACLK;
  input tick_d1;
  input tick_d2;
  input S_AXI_ARESETN;
  input [4:0]in_data;

  wire DATA_CLK_I;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire fifo_reg_0_3_0_4_i_1_n_0;
  wire [4:0]in_data;
  wire [4:0]out_data0;
  wire [4:0]out_data0_out;
  wire \out_data[4]_i_1_n_0 ;
  wire [1:0]rd_addr;
  wire \rd_addr[0]_i_1_n_0 ;
  wire \rd_addr[1]_i_1_n_0 ;
  wire tick;
  wire tick_d1;
  wire tick_d1_0;
  wire tick_d2;
  wire tick_d2_1;
  wire tick_i_1__1_n_0;
  wire [1:0]wr_addr;
  wire \wr_addr[0]_i_1_n_0 ;
  wire \wr_addr[1]_i_1_n_0 ;
  wire [1:1]NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED;
  wire [1:0]NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED;

  RAM32M fifo_reg_0_3_0_4
       (.ADDRA({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,1'b0,wr_addr}),
        .DIA(in_data[1:0]),
        .DIB(in_data[3:2]),
        .DIC({1'b0,in_data[4]}),
        .DID({1'b0,1'b0}),
        .DOA(out_data0[1:0]),
        .DOB(out_data0[3:2]),
        .DOC({NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED[1],out_data0[4]}),
        .DOD(NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXI_ACLK),
        .WE(fifo_reg_0_3_0_4_i_1_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    fifo_reg_0_3_0_4_i_1
       (.I0(tick_d1),
        .I1(tick_d2),
        .I2(S_AXI_ARESETN),
        .O(fifo_reg_0_3_0_4_i_1_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    \out_data[4]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(tick_d2_1),
        .I2(tick_d1_0),
        .O(\out_data[4]_i_1_n_0 ));
  FDRE \out_data_reg[0] 
       (.C(DATA_CLK_I),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[0]),
        .Q(out_data0_out[0]),
        .R(1'b0));
  FDRE \out_data_reg[1] 
       (.C(DATA_CLK_I),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[1]),
        .Q(out_data0_out[1]),
        .R(1'b0));
  FDRE \out_data_reg[2] 
       (.C(DATA_CLK_I),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[2]),
        .Q(out_data0_out[2]),
        .R(1'b0));
  FDRE \out_data_reg[3] 
       (.C(DATA_CLK_I),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[3]),
        .Q(out_data0_out[3]),
        .R(1'b0));
  FDRE \out_data_reg[4] 
       (.C(DATA_CLK_I),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[4]),
        .Q(out_data0_out[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \rd_addr[0]_i_1 
       (.I0(tick_d2_1),
        .I1(tick_d1_0),
        .I2(rd_addr[0]),
        .O(\rd_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \rd_addr[1]_i_1 
       (.I0(rd_addr[0]),
        .I1(tick_d1_0),
        .I2(tick_d2_1),
        .I3(rd_addr[1]),
        .O(\rd_addr[1]_i_1_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1_n_0 ),
        .Q(rd_addr[0]),
        .R(S_AXI_ARESETN_0));
  FDRE \rd_addr_reg[1] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1_n_0 ),
        .Q(rd_addr[1]),
        .R(S_AXI_ARESETN_0));
  FDRE tick_d1_reg
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tick),
        .Q(tick_d1_0),
        .R(S_AXI_ARESETN_0));
  FDRE tick_d2_reg
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tick_d1_0),
        .Q(tick_d2_1),
        .R(S_AXI_ARESETN_0));
  LUT3 #(
    .INIT(8'h96)) 
    tick_i_1__1
       (.I0(tick_d1),
        .I1(tick_d2),
        .I2(tick),
        .O(tick_i_1__1_n_0));
  FDRE tick_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(tick_i_1__1_n_0),
        .Q(tick),
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \wr_addr[0]_i_1 
       (.I0(tick_d1),
        .I1(tick_d2),
        .I2(wr_addr[0]),
        .O(\wr_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \wr_addr[1]_i_1 
       (.I0(wr_addr[0]),
        .I1(tick_d2),
        .I2(tick_d1),
        .I3(wr_addr[1]),
        .O(\wr_addr[1]_i_1_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1_n_0 ),
        .Q(wr_addr[0]),
        .R(S_AXI_ARESETN_0));
  FDRE \wr_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1_n_0 ),
        .Q(wr_addr[1]),
        .R(S_AXI_ARESETN_0));
endmodule

(* ORIG_REF_NAME = "i2s_clkgen" *) 
module system_axi_i2s_adi_0_i2s_clkgen
   (tx_bclk,
    in_data,
    channel_sync_int_d1_reg,
    S_AXI_ACLK,
    Q,
    S_AXI_ARESETN,
    \I2S_CONTROL_REG_reg[0] ,
    rx_enable,
    tick_d1,
    tick_d2,
    bclk_d1);
  output tx_bclk;
  output [2:0]in_data;
  output channel_sync_int_d1_reg;
  input S_AXI_ACLK;
  input [15:0]Q;
  input S_AXI_ARESETN;
  input \I2S_CONTROL_REG_reg[0] ;
  input rx_enable;
  input tick_d1;
  input tick_d2;
  input bclk_d1;

  wire \I2S_CONTROL_REG_reg[0] ;
  wire [15:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [7:0]bclk_count;
  wire \bclk_count[0]_i_1_n_0 ;
  wire \bclk_count[1]_i_1_n_0 ;
  wire \bclk_count[2]_i_1_n_0 ;
  wire \bclk_count[3]_i_1_n_0 ;
  wire \bclk_count[3]_i_2_n_0 ;
  wire \bclk_count[4]_i_1_n_0 ;
  wire \bclk_count[4]_i_2_n_0 ;
  wire \bclk_count[5]_i_1_n_0 ;
  wire \bclk_count[5]_i_2_n_0 ;
  wire \bclk_count[6]_i_1_n_0 ;
  wire \bclk_count[7]_i_1_n_0 ;
  wire \bclk_count[7]_i_2_n_0 ;
  wire \bclk_count[7]_i_4_n_0 ;
  wire \bclk_count[7]_i_6_n_0 ;
  wire \bclk_count[7]_i_7_n_0 ;
  wire bclk_d1;
  wire bclk_int0;
  wire bclk_int_i_1_n_0;
  wire channel_sync_int_d1_reg;
  wire fifo_reg_0_3_0_4_i_5_n_0;
  wire fifo_reg_0_3_0_4_i_6_n_0;
  wire [2:0]in_data;
  wire [7:0]lrclk_count;
  wire \lrclk_count[0]_i_1_n_0 ;
  wire \lrclk_count[1]_i_1_n_0 ;
  wire \lrclk_count[2]_i_1_n_0 ;
  wire \lrclk_count[3]_i_1_n_0 ;
  wire \lrclk_count[3]_i_2_n_0 ;
  wire \lrclk_count[4]_i_1_n_0 ;
  wire \lrclk_count[4]_i_2_n_0 ;
  wire \lrclk_count[5]_i_1_n_0 ;
  wire \lrclk_count[5]_i_2_n_0 ;
  wire \lrclk_count[6]_i_1_n_0 ;
  wire \lrclk_count[7]_i_1_n_0 ;
  wire \lrclk_count[7]_i_2_n_0 ;
  wire \lrclk_count[7]_i_3_n_0 ;
  wire \lrclk_count[7]_i_5_n_0 ;
  wire \lrclk_count[7]_i_6_n_0 ;
  wire lrclk_int0;
  wire lrclk_int_i_1_n_0;
  wire reset_int;
  wire rx_enable;
  wire tick_d1;
  wire tick_d2;
  wire tx_bclk;
  wire tx_tick;

  LUT6 #(
    .INIT(64'h222A222A222AEEEA)) 
    \bclk_count[0]_i_1 
       (.I0(Q[0]),
        .I1(S_AXI_ARESETN),
        .I2(\I2S_CONTROL_REG_reg[0] ),
        .I3(rx_enable),
        .I4(bclk_count[0]),
        .I5(bclk_int0),
        .O(\bclk_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \bclk_count[1]_i_1 
       (.I0(Q[1]),
        .I1(reset_int),
        .I2(bclk_count[1]),
        .I3(bclk_count[0]),
        .I4(bclk_int0),
        .O(\bclk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \bclk_count[2]_i_1 
       (.I0(Q[2]),
        .I1(reset_int),
        .I2(bclk_count[2]),
        .I3(bclk_count[1]),
        .I4(bclk_count[0]),
        .I5(bclk_int0),
        .O(\bclk_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \bclk_count[3]_i_1 
       (.I0(Q[3]),
        .I1(reset_int),
        .I2(bclk_count[3]),
        .I3(\bclk_count[3]_i_2_n_0 ),
        .I4(bclk_int0),
        .O(\bclk_count[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bclk_count[3]_i_2 
       (.I0(bclk_count[2]),
        .I1(bclk_count[0]),
        .I2(bclk_count[1]),
        .O(\bclk_count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \bclk_count[4]_i_1 
       (.I0(Q[4]),
        .I1(reset_int),
        .I2(bclk_count[4]),
        .I3(\bclk_count[4]_i_2_n_0 ),
        .I4(bclk_int0),
        .O(\bclk_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bclk_count[4]_i_2 
       (.I0(bclk_count[3]),
        .I1(bclk_count[1]),
        .I2(bclk_count[0]),
        .I3(bclk_count[2]),
        .O(\bclk_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \bclk_count[5]_i_1 
       (.I0(Q[5]),
        .I1(reset_int),
        .I2(bclk_count[5]),
        .I3(\bclk_count[5]_i_2_n_0 ),
        .I4(bclk_int0),
        .O(\bclk_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \bclk_count[5]_i_2 
       (.I0(bclk_count[4]),
        .I1(bclk_count[2]),
        .I2(bclk_count[0]),
        .I3(bclk_count[1]),
        .I4(bclk_count[3]),
        .O(\bclk_count[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \bclk_count[6]_i_1 
       (.I0(Q[6]),
        .I1(reset_int),
        .I2(bclk_count[6]),
        .I3(\bclk_count[7]_i_4_n_0 ),
        .I4(bclk_int0),
        .O(\bclk_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFFFF1F)) 
    \bclk_count[7]_i_1 
       (.I0(rx_enable),
        .I1(\I2S_CONTROL_REG_reg[0] ),
        .I2(S_AXI_ARESETN),
        .I3(tick_d1),
        .I4(tick_d2),
        .O(\bclk_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \bclk_count[7]_i_2 
       (.I0(Q[7]),
        .I1(reset_int),
        .I2(bclk_count[7]),
        .I3(bclk_count[6]),
        .I4(\bclk_count[7]_i_4_n_0 ),
        .I5(bclk_int0),
        .O(\bclk_count[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \bclk_count[7]_i_3 
       (.I0(S_AXI_ARESETN),
        .I1(\I2S_CONTROL_REG_reg[0] ),
        .I2(rx_enable),
        .O(reset_int));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bclk_count[7]_i_4 
       (.I0(bclk_count[5]),
        .I1(bclk_count[3]),
        .I2(bclk_count[1]),
        .I3(bclk_count[0]),
        .I4(bclk_count[2]),
        .I5(bclk_count[4]),
        .O(\bclk_count[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \bclk_count[7]_i_5 
       (.I0(Q[7]),
        .I1(bclk_count[7]),
        .I2(Q[6]),
        .I3(bclk_count[6]),
        .I4(\bclk_count[7]_i_6_n_0 ),
        .I5(\bclk_count[7]_i_7_n_0 ),
        .O(bclk_int0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \bclk_count[7]_i_6 
       (.I0(bclk_count[3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(bclk_count[5]),
        .I4(Q[4]),
        .I5(bclk_count[4]),
        .O(\bclk_count[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \bclk_count[7]_i_7 
       (.I0(bclk_count[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(bclk_count[2]),
        .I4(Q[1]),
        .I5(bclk_count[1]),
        .O(\bclk_count[7]_i_7_n_0 ));
  FDRE \bclk_count_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[0]_i_1_n_0 ),
        .Q(bclk_count[0]),
        .R(1'b0));
  FDRE \bclk_count_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[1]_i_1_n_0 ),
        .Q(bclk_count[1]),
        .R(1'b0));
  FDRE \bclk_count_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[2]_i_1_n_0 ),
        .Q(bclk_count[2]),
        .R(1'b0));
  FDRE \bclk_count_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[3]_i_1_n_0 ),
        .Q(bclk_count[3]),
        .R(1'b0));
  FDRE \bclk_count_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[4]_i_1_n_0 ),
        .Q(bclk_count[4]),
        .R(1'b0));
  FDRE \bclk_count_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[5]_i_1_n_0 ),
        .Q(bclk_count[5]),
        .R(1'b0));
  FDRE \bclk_count_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[6]_i_1_n_0 ),
        .Q(bclk_count[6]),
        .R(1'b0));
  FDRE \bclk_count_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[7]_i_2_n_0 ),
        .Q(bclk_count[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF96AA)) 
    bclk_int_i_1
       (.I0(tx_bclk),
        .I1(tick_d1),
        .I2(tick_d2),
        .I3(bclk_int0),
        .I4(reset_int),
        .O(bclk_int_i_1_n_0));
  FDRE bclk_int_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(bclk_int_i_1_n_0),
        .Q(tx_bclk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00040000)) 
    channel_sync_int_d1_i_1
       (.I0(lrclk_count[7]),
        .I1(fifo_reg_0_3_0_4_i_6_n_0),
        .I2(lrclk_count[6]),
        .I3(tx_bclk),
        .I4(bclk_d1),
        .O(channel_sync_int_d1_reg));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    fifo_reg_0_3_0_4_i_2
       (.I0(lrclk_count[0]),
        .I1(fifo_reg_0_3_0_4_i_5_n_0),
        .I2(lrclk_count[7]),
        .I3(lrclk_count[6]),
        .I4(lrclk_count[4]),
        .I5(lrclk_count[5]),
        .O(in_data[1]));
  LUT3 #(
    .INIT(8'h04)) 
    fifo_reg_0_3_0_4_i_3
       (.I0(lrclk_count[6]),
        .I1(fifo_reg_0_3_0_4_i_6_n_0),
        .I2(lrclk_count[7]),
        .O(in_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_reg_0_3_0_4_i_5
       (.I0(lrclk_count[2]),
        .I1(lrclk_count[3]),
        .I2(in_data[2]),
        .I3(lrclk_count[1]),
        .O(fifo_reg_0_3_0_4_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    fifo_reg_0_3_0_4_i_6
       (.I0(lrclk_count[3]),
        .I1(lrclk_count[0]),
        .I2(lrclk_count[2]),
        .I3(lrclk_count[1]),
        .I4(lrclk_count[5]),
        .I5(lrclk_count[4]),
        .O(fifo_reg_0_3_0_4_i_6_n_0));
  LUT6 #(
    .INIT(64'h222A222A222AEEEA)) 
    \lrclk_count[0]_i_1 
       (.I0(Q[8]),
        .I1(S_AXI_ARESETN),
        .I2(\I2S_CONTROL_REG_reg[0] ),
        .I3(rx_enable),
        .I4(lrclk_count[0]),
        .I5(lrclk_int0),
        .O(\lrclk_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \lrclk_count[1]_i_1 
       (.I0(Q[9]),
        .I1(reset_int),
        .I2(lrclk_count[1]),
        .I3(lrclk_count[0]),
        .I4(lrclk_int0),
        .O(\lrclk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \lrclk_count[2]_i_1 
       (.I0(Q[10]),
        .I1(reset_int),
        .I2(lrclk_count[2]),
        .I3(lrclk_count[1]),
        .I4(lrclk_count[0]),
        .I5(lrclk_int0),
        .O(\lrclk_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \lrclk_count[3]_i_1 
       (.I0(Q[11]),
        .I1(reset_int),
        .I2(lrclk_count[3]),
        .I3(\lrclk_count[3]_i_2_n_0 ),
        .I4(lrclk_int0),
        .O(\lrclk_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \lrclk_count[3]_i_2 
       (.I0(lrclk_count[2]),
        .I1(lrclk_count[0]),
        .I2(lrclk_count[1]),
        .O(\lrclk_count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \lrclk_count[4]_i_1 
       (.I0(Q[12]),
        .I1(reset_int),
        .I2(lrclk_count[4]),
        .I3(\lrclk_count[4]_i_2_n_0 ),
        .I4(lrclk_int0),
        .O(\lrclk_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lrclk_count[4]_i_2 
       (.I0(lrclk_count[3]),
        .I1(lrclk_count[1]),
        .I2(lrclk_count[0]),
        .I3(lrclk_count[2]),
        .O(\lrclk_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \lrclk_count[5]_i_1 
       (.I0(Q[13]),
        .I1(reset_int),
        .I2(lrclk_count[5]),
        .I3(\lrclk_count[5]_i_2_n_0 ),
        .I4(lrclk_int0),
        .O(\lrclk_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lrclk_count[5]_i_2 
       (.I0(lrclk_count[4]),
        .I1(lrclk_count[2]),
        .I2(lrclk_count[0]),
        .I3(lrclk_count[1]),
        .I4(lrclk_count[3]),
        .O(\lrclk_count[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \lrclk_count[6]_i_1 
       (.I0(Q[14]),
        .I1(reset_int),
        .I2(lrclk_count[6]),
        .I3(\lrclk_count[7]_i_3_n_0 ),
        .I4(lrclk_int0),
        .O(\lrclk_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEEAAAAA)) 
    \lrclk_count[7]_i_1 
       (.I0(reset_int),
        .I1(tx_bclk),
        .I2(tick_d1),
        .I3(tick_d2),
        .I4(bclk_int0),
        .O(\lrclk_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \lrclk_count[7]_i_2 
       (.I0(Q[15]),
        .I1(reset_int),
        .I2(lrclk_count[7]),
        .I3(lrclk_count[6]),
        .I4(\lrclk_count[7]_i_3_n_0 ),
        .I5(lrclk_int0),
        .O(\lrclk_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lrclk_count[7]_i_3 
       (.I0(lrclk_count[5]),
        .I1(lrclk_count[3]),
        .I2(lrclk_count[1]),
        .I3(lrclk_count[0]),
        .I4(lrclk_count[2]),
        .I5(lrclk_count[4]),
        .O(\lrclk_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \lrclk_count[7]_i_4 
       (.I0(Q[15]),
        .I1(lrclk_count[7]),
        .I2(Q[14]),
        .I3(lrclk_count[6]),
        .I4(\lrclk_count[7]_i_5_n_0 ),
        .I5(\lrclk_count[7]_i_6_n_0 ),
        .O(lrclk_int0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \lrclk_count[7]_i_5 
       (.I0(lrclk_count[3]),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(lrclk_count[5]),
        .I4(Q[12]),
        .I5(lrclk_count[4]),
        .O(\lrclk_count[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \lrclk_count[7]_i_6 
       (.I0(lrclk_count[0]),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(lrclk_count[2]),
        .I4(Q[9]),
        .I5(lrclk_count[1]),
        .O(\lrclk_count[7]_i_6_n_0 ));
  FDRE \lrclk_count_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[0]_i_1_n_0 ),
        .Q(lrclk_count[0]),
        .R(1'b0));
  FDRE \lrclk_count_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[1]_i_1_n_0 ),
        .Q(lrclk_count[1]),
        .R(1'b0));
  FDRE \lrclk_count_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[2]_i_1_n_0 ),
        .Q(lrclk_count[2]),
        .R(1'b0));
  FDRE \lrclk_count_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[3]_i_1_n_0 ),
        .Q(lrclk_count[3]),
        .R(1'b0));
  FDRE \lrclk_count_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[4]_i_1_n_0 ),
        .Q(lrclk_count[4]),
        .R(1'b0));
  FDRE \lrclk_count_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[5]_i_1_n_0 ),
        .Q(lrclk_count[5]),
        .R(1'b0));
  FDRE \lrclk_count_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[6]_i_1_n_0 ),
        .Q(lrclk_count[6]),
        .R(1'b0));
  FDRE \lrclk_count_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[7]_i_2_n_0 ),
        .Q(lrclk_count[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    lrclk_int_i_1
       (.I0(in_data[2]),
        .I1(lrclk_int0),
        .I2(tx_bclk),
        .I3(tx_tick),
        .I4(bclk_int0),
        .I5(reset_int),
        .O(lrclk_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    lrclk_int_i_2
       (.I0(tick_d2),
        .I1(tick_d1),
        .O(tx_tick));
  FDRE lrclk_int_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(lrclk_int_i_1_n_0),
        .Q(in_data[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_controller" *) 
module system_axi_i2s_adi_0_i2s_controller
   (SR,
    channel_sync_int_d1,
    channel_sync_int,
    BCLK_O,
    LRCLK_O,
    SDATA_O,
    enable_int,
    rx_stb,
    \free_cnt_reg[2] ,
    \free_cnt_reg[3] ,
    D,
    \S_AXI_RDATA[30] ,
    S_AXI_ACLK,
    DATA_CLK_I,
    empty,
    S_AXI_ARESETN,
    full_reg,
    rx_enable,
    \I2S_CONTROL_REG_reg[0] ,
    Q,
    out_data,
    full_reg_0,
    \free_cnt_reg[0] ,
    \rd_addr_reg[2] ,
    SDATA_I);
  output [0:0]SR;
  output channel_sync_int_d1;
  output channel_sync_int;
  output [0:0]BCLK_O;
  output [0:0]LRCLK_O;
  output [0:0]SDATA_O;
  output enable_int;
  output rx_stb;
  output \free_cnt_reg[2] ;
  output \free_cnt_reg[3] ;
  output [0:0]D;
  output [23:0]\S_AXI_RDATA[30] ;
  input S_AXI_ACLK;
  input DATA_CLK_I;
  input empty;
  input S_AXI_ARESETN;
  input full_reg;
  input rx_enable;
  input \I2S_CONTROL_REG_reg[0] ;
  input [15:0]Q;
  input [22:0]out_data;
  input full_reg_0;
  input [0:0]\free_cnt_reg[0] ;
  input [0:0]\rd_addr_reg[2] ;
  input [0:0]SDATA_I;

  wire [0:0]BCLK_O;
  wire [0:0]D;
  wire DATA_CLK_I;
  wire \I2S_CONTROL_REG_reg[0] ;
  wire [0:0]LRCLK_O;
  wire [15:0]Q;
  wire [0:0]SDATA_I;
  wire [0:0]SDATA_O;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [23:0]\S_AXI_RDATA[30] ;
  wire bclk_d1;
  wire bclk_d1_1;
  wire channel_sync_int;
  wire channel_sync_int_0;
  wire channel_sync_int_d1;
  wire clkgen_n_3;
  wire empty;
  wire enable_int;
  wire [0:0]\free_cnt_reg[0] ;
  wire \free_cnt_reg[2] ;
  wire \free_cnt_reg[3] ;
  wire full_reg;
  wire full_reg_0;
  wire [22:0]out_data;
  wire [0:0]\rd_addr_reg[2] ;
  wire rx_bclk;
  wire rx_enable;
  wire rx_frame_sync;
  wire \rx_gen.rx_sync_n_1 ;
  wire \rx_gen.rx_sync_n_5 ;
  wire \rx_gen.rx_sync_n_7 ;
  wire rx_sdata;
  wire rx_stb;
  wire [4:0]rx_sync_fifo_in;
  wire tick_d1;
  wire tick_d2;
  wire tick_i_1__0_n_0;
  wire tick_reg_n_0;
  wire tx_bclk;
  wire tx_frame_sync;
  wire tx_lrclk;
  wire tx_sdata;
  wire [4:0]tx_sync_fifo_out;

  FDSE \BCLK_O_reg[0] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tx_sync_fifo_out[2]),
        .Q(BCLK_O),
        .S(SR));
  FDSE \LRCLK_O_reg[0] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tx_sync_fifo_out[3]),
        .Q(LRCLK_O),
        .S(SR));
  FDRE \SDATA_O_reg[0] 
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tx_sync_fifo_out[4]),
        .Q(SDATA_O),
        .R(SR));
  system_axi_i2s_adi_0_i2s_clkgen clkgen
       (.\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg[0] ),
        .Q(Q),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .bclk_d1(bclk_d1_1),
        .channel_sync_int_d1_reg(channel_sync_int),
        .in_data({tx_lrclk,tx_frame_sync,clkgen_n_3}),
        .rx_enable(rx_enable),
        .tick_d1(tick_d1),
        .tick_d2(tick_d2),
        .tx_bclk(tx_bclk));
  system_axi_i2s_adi_0_i2s_rx \rx_gen.rx 
       (.E(\rx_gen.rx_sync_n_7 ),
        .Q({rx_sdata,rx_bclk,rx_frame_sync,\rx_gen.rx_sync_n_5 }),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(SR),
        .\S_AXI_RDATA[30] (\S_AXI_RDATA[30] ),
        .bclk_d1(bclk_d1),
        .channel_sync_int(channel_sync_int_0),
        .\free_cnt_reg[3] (\free_cnt_reg[3] ),
        .full_reg(full_reg),
        .\out_data_reg[2] (\rx_gen.rx_sync_n_1 ),
        .rx_enable(rx_enable),
        .sequencer_state_reg_0(rx_stb));
  system_axi_i2s_adi_0_fifo_synchronizer \rx_gen.rx_sync 
       (.DATA_CLK_I(DATA_CLK_I),
        .E(\rx_gen.rx_sync_n_7 ),
        .Q(rx_sync_fifo_in),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .bclk_d1(bclk_d1),
        .channel_sync_int(channel_sync_int_0),
        .\gen[0].data_int_reg[0][9] (\rx_gen.rx_sync_n_1 ),
        .out_data0_out({rx_sdata,rx_bclk,rx_frame_sync,\rx_gen.rx_sync_n_5 }),
        .rx_enable(rx_enable),
        .rx_stb(rx_stb),
        .tick_d1_reg_0(SR));
  FDRE \rx_sync_fifo_in_reg[0] 
       (.C(DATA_CLK_I),
        .CE(S_AXI_ARESETN),
        .D(tx_sync_fifo_out[0]),
        .Q(rx_sync_fifo_in[0]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[1] 
       (.C(DATA_CLK_I),
        .CE(S_AXI_ARESETN),
        .D(tx_sync_fifo_out[1]),
        .Q(rx_sync_fifo_in[1]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[2] 
       (.C(DATA_CLK_I),
        .CE(S_AXI_ARESETN),
        .D(tx_sync_fifo_out[2]),
        .Q(rx_sync_fifo_in[2]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[3] 
       (.C(DATA_CLK_I),
        .CE(S_AXI_ARESETN),
        .D(tx_sync_fifo_out[3]),
        .Q(rx_sync_fifo_in[3]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[4] 
       (.C(DATA_CLK_I),
        .CE(S_AXI_ARESETN),
        .D(SDATA_I),
        .Q(rx_sync_fifo_in[4]),
        .R(1'b0));
  FDRE tick_d1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(tick_reg_n_0),
        .Q(tick_d1),
        .R(SR));
  FDRE tick_d2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(tick_d1),
        .Q(tick_d2),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    tick_i_1__0
       (.I0(tick_reg_n_0),
        .O(tick_i_1__0_n_0));
  FDRE tick_reg
       (.C(DATA_CLK_I),
        .CE(1'b1),
        .D(tick_i_1__0_n_0),
        .Q(tick_reg_n_0),
        .R(SR));
  system_axi_i2s_adi_0_i2s_tx \tx_gen.tx 
       (.D(D),
        .\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg[0] ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(SR),
        .bclk_d1(bclk_d1_1),
        .channel_sync_int_d1(channel_sync_int_d1),
        .empty(empty),
        .\free_cnt_reg[0] (enable_int),
        .\free_cnt_reg[0]_0 (\free_cnt_reg[0] ),
        .\free_cnt_reg[2] (\free_cnt_reg[2] ),
        .full_reg(full_reg_0),
        .in_data({tx_bclk,tx_frame_sync}),
        .\lrclk_count_reg[7] (channel_sync_int),
        .out_data(out_data),
        .\out_data_reg[1] (tx_sdata),
        .\rd_addr_reg[2] (\rd_addr_reg[2] ));
  system_axi_i2s_adi_0_fifo_synchronizer_1 tx_sync
       (.DATA_CLK_I(DATA_CLK_I),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(SR),
        .in_data({tx_sdata,tx_lrclk,tx_bclk,tx_frame_sync,clkgen_n_3}),
        .out_data0_out(tx_sync_fifo_out),
        .tick_d1(tick_d1),
        .tick_d2(tick_d2));
endmodule

(* ORIG_REF_NAME = "i2s_rx" *) 
module system_axi_i2s_adi_0_i2s_rx
   (bclk_d1,
    sequencer_state_reg_0,
    \free_cnt_reg[3] ,
    \S_AXI_RDATA[30] ,
    \out_data_reg[2] ,
    S_AXI_ACLK,
    Q,
    S_AXI_ARESETN_0,
    full_reg,
    S_AXI_ARESETN,
    rx_enable,
    channel_sync_int,
    E);
  output bclk_d1;
  output sequencer_state_reg_0;
  output \free_cnt_reg[3] ;
  output [23:0]\S_AXI_RDATA[30] ;
  input \out_data_reg[2] ;
  input S_AXI_ACLK;
  input [3:0]Q;
  input S_AXI_ARESETN_0;
  input full_reg;
  input S_AXI_ARESETN;
  input rx_enable;
  input channel_sync_int;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire [23:0]\S_AXI_RDATA[30] ;
  wire bclk_d1;
  wire channel_sync_int;
  wire enable_int_i_1__0_n_0;
  wire enable_int_reg_n_0;
  wire \free_cnt_reg[3] ;
  wire full_reg;
  wire \gen[0].data_int[0][31]_i_1_n_0 ;
  wire \gen[0].data_int_reg[0][6]_srl7___U0_ctrl_rx_gen.rx_gen_r_5_n_0 ;
  wire \gen[0].data_int_reg[0][7]_U0_ctrl_rx_gen.rx_gen_r_6_n_0 ;
  wire \gen[0].data_int_reg_n_0_[0][10] ;
  wire \gen[0].data_int_reg_n_0_[0][11] ;
  wire \gen[0].data_int_reg_n_0_[0][12] ;
  wire \gen[0].data_int_reg_n_0_[0][13] ;
  wire \gen[0].data_int_reg_n_0_[0][14] ;
  wire \gen[0].data_int_reg_n_0_[0][15] ;
  wire \gen[0].data_int_reg_n_0_[0][16] ;
  wire \gen[0].data_int_reg_n_0_[0][17] ;
  wire \gen[0].data_int_reg_n_0_[0][18] ;
  wire \gen[0].data_int_reg_n_0_[0][19] ;
  wire \gen[0].data_int_reg_n_0_[0][20] ;
  wire \gen[0].data_int_reg_n_0_[0][21] ;
  wire \gen[0].data_int_reg_n_0_[0][22] ;
  wire \gen[0].data_int_reg_n_0_[0][23] ;
  wire \gen[0].data_int_reg_n_0_[0][24] ;
  wire \gen[0].data_int_reg_n_0_[0][25] ;
  wire \gen[0].data_int_reg_n_0_[0][26] ;
  wire \gen[0].data_int_reg_n_0_[0][27] ;
  wire \gen[0].data_int_reg_n_0_[0][28] ;
  wire \gen[0].data_int_reg_n_0_[0][29] ;
  wire \gen[0].data_int_reg_n_0_[0][30] ;
  wire \gen[0].data_int_reg_n_0_[0][31] ;
  wire \gen[0].data_int_reg_n_0_[0][8] ;
  wire \gen[0].data_int_reg_n_0_[0][9] ;
  wire gen_gate_n_0;
  wire gen_r_0_n_0;
  wire gen_r_1_n_0;
  wire gen_r_2_n_0;
  wire gen_r_3_n_0;
  wire gen_r_4_n_0;
  wire gen_r_5_n_0;
  wire gen_r_6_n_0;
  wire gen_r_n_0;
  wire \out_data_reg[2] ;
  wire ovf_frame_cnt;
  wire \ovf_frame_cnt[0]_i_1_n_0 ;
  wire rx_enable;
  wire sequencer_state_i_1_n_0;
  wire sequencer_state_reg_0;

  FDRE bclk_d1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(bclk_d1),
        .R(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'hFF00000040000000)) 
    enable_int_i_1__0
       (.I0(bclk_d1),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(rx_enable),
        .I4(S_AXI_ARESETN),
        .I5(enable_int_reg_n_0),
        .O(enable_int_i_1__0_n_0));
  FDRE enable_int_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(enable_int_i_1__0_n_0),
        .Q(enable_int_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \free_cnt[3]_i_2__0 
       (.I0(sequencer_state_reg_0),
        .I1(full_reg),
        .O(\free_cnt_reg[3] ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen[0].data_int[0][31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(rx_enable),
        .O(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][9] ),
        .Q(\gen[0].data_int_reg_n_0_[0][10] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][10] ),
        .Q(\gen[0].data_int_reg_n_0_[0][11] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][11] ),
        .Q(\gen[0].data_int_reg_n_0_[0][12] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][12] ),
        .Q(\gen[0].data_int_reg_n_0_[0][13] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][13] ),
        .Q(\gen[0].data_int_reg_n_0_[0][14] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][14] ),
        .Q(\gen[0].data_int_reg_n_0_[0][15] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][15] ),
        .Q(\gen[0].data_int_reg_n_0_[0][16] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][16] ),
        .Q(\gen[0].data_int_reg_n_0_[0][17] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][17] ),
        .Q(\gen[0].data_int_reg_n_0_[0][18] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][18] ),
        .Q(\gen[0].data_int_reg_n_0_[0][19] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][19] ),
        .Q(\gen[0].data_int_reg_n_0_[0][20] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][20] ),
        .Q(\gen[0].data_int_reg_n_0_[0][21] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][21] ),
        .Q(\gen[0].data_int_reg_n_0_[0][22] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][22] ),
        .Q(\gen[0].data_int_reg_n_0_[0][23] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][23] ),
        .Q(\gen[0].data_int_reg_n_0_[0][24] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][24] ),
        .Q(\gen[0].data_int_reg_n_0_[0][25] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][25] ),
        .Q(\gen[0].data_int_reg_n_0_[0][26] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][26] ),
        .Q(\gen[0].data_int_reg_n_0_[0][27] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][27] ),
        .Q(\gen[0].data_int_reg_n_0_[0][28] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][28] ),
        .Q(\gen[0].data_int_reg_n_0_[0][29] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][29] ),
        .Q(\gen[0].data_int_reg_n_0_[0][30] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][30] ),
        .Q(\gen[0].data_int_reg_n_0_[0][31] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  (* srl_bus_name = "\U0/ctrl/rx_gen.rx/gen[0].data_int_reg[0] " *) 
  (* srl_name = "\U0/ctrl/rx_gen.rx/gen[0].data_int_reg[0][6]_srl7___U0_ctrl_rx_gen.rx_gen_r_5 " *) 
  SRL16E \gen[0].data_int_reg[0][6]_srl7___U0_ctrl_rx_gen.rx_gen_r_5 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\out_data_reg[2] ),
        .CLK(S_AXI_ACLK),
        .D(Q[3]),
        .Q(\gen[0].data_int_reg[0][6]_srl7___U0_ctrl_rx_gen.rx_gen_r_5_n_0 ));
  FDRE \gen[0].data_int_reg[0][7]_U0_ctrl_rx_gen.rx_gen_r_6 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg[0][6]_srl7___U0_ctrl_rx_gen.rx_gen_r_5_n_0 ),
        .Q(\gen[0].data_int_reg[0][7]_U0_ctrl_rx_gen.rx_gen_r_6_n_0 ),
        .R(1'b0));
  FDRE \gen[0].data_int_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_gate_n_0),
        .Q(\gen[0].data_int_reg_n_0_[0][8] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(\gen[0].data_int_reg_n_0_[0][8] ),
        .Q(\gen[0].data_int_reg_n_0_[0][9] ),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE \gen[0].data_latched_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][8] ),
        .Q(\S_AXI_RDATA[30] [0]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][18] ),
        .Q(\S_AXI_RDATA[30] [10]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][19] ),
        .Q(\S_AXI_RDATA[30] [11]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][20] ),
        .Q(\S_AXI_RDATA[30] [12]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][21] ),
        .Q(\S_AXI_RDATA[30] [13]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][22] ),
        .Q(\S_AXI_RDATA[30] [14]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][23] ),
        .Q(\S_AXI_RDATA[30] [15]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][24] ),
        .Q(\S_AXI_RDATA[30] [16]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][25] ),
        .Q(\S_AXI_RDATA[30] [17]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][26] ),
        .Q(\S_AXI_RDATA[30] [18]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][27] ),
        .Q(\S_AXI_RDATA[30] [19]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][9] ),
        .Q(\S_AXI_RDATA[30] [1]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][28] ),
        .Q(\S_AXI_RDATA[30] [20]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][29] ),
        .Q(\S_AXI_RDATA[30] [21]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][30] ),
        .Q(\S_AXI_RDATA[30] [22]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][31] ),
        .Q(\S_AXI_RDATA[30] [23]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][10] ),
        .Q(\S_AXI_RDATA[30] [2]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][11] ),
        .Q(\S_AXI_RDATA[30] [3]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][12] ),
        .Q(\S_AXI_RDATA[30] [4]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][13] ),
        .Q(\S_AXI_RDATA[30] [5]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][14] ),
        .Q(\S_AXI_RDATA[30] [6]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][15] ),
        .Q(\S_AXI_RDATA[30] [7]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][16] ),
        .Q(\S_AXI_RDATA[30] [8]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][17] ),
        .Q(\S_AXI_RDATA[30] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    gen_gate
       (.I0(\gen[0].data_int_reg[0][7]_U0_ctrl_rx_gen.rx_gen_r_6_n_0 ),
        .I1(gen_r_6_n_0),
        .O(gen_gate_n_0));
  FDRE gen_r
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(1'b1),
        .Q(gen_r_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_0
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_n_0),
        .Q(gen_r_0_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_1
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_0_n_0),
        .Q(gen_r_1_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_2
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_1_n_0),
        .Q(gen_r_2_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_3
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_2_n_0),
        .Q(gen_r_3_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_4
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_3_n_0),
        .Q(gen_r_4_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_5
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_4_n_0),
        .Q(gen_r_5_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  FDRE gen_r_6
       (.C(S_AXI_ACLK),
        .CE(\out_data_reg[2] ),
        .D(gen_r_5_n_0),
        .Q(gen_r_6_n_0),
        .R(\gen[0].data_int[0][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002CCC0000)) 
    \ovf_frame_cnt[0]_i_1 
       (.I0(sequencer_state_reg_0),
        .I1(ovf_frame_cnt),
        .I2(Q[0]),
        .I3(\out_data_reg[2] ),
        .I4(enable_int_reg_n_0),
        .I5(\gen[0].data_int[0][31]_i_1_n_0 ),
        .O(\ovf_frame_cnt[0]_i_1_n_0 ));
  FDRE \ovf_frame_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\ovf_frame_cnt[0]_i_1_n_0 ),
        .Q(ovf_frame_cnt),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F4040000)) 
    sequencer_state_i_1
       (.I0(ovf_frame_cnt),
        .I1(channel_sync_int),
        .I2(sequencer_state_reg_0),
        .I3(full_reg),
        .I4(enable_int_reg_n_0),
        .I5(\gen[0].data_int[0][31]_i_1_n_0 ),
        .O(sequencer_state_i_1_n_0));
  FDRE sequencer_state_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sequencer_state_i_1_n_0),
        .Q(sequencer_state_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_tx" *) 
module system_axi_i2s_adi_0_i2s_tx
   (bclk_d1,
    channel_sync_int_d1,
    \free_cnt_reg[0] ,
    \free_cnt_reg[2] ,
    \out_data_reg[1] ,
    D,
    S_AXI_ARESETN_0,
    in_data,
    S_AXI_ACLK,
    \lrclk_count_reg[7] ,
    empty,
    S_AXI_ARESETN,
    \I2S_CONTROL_REG_reg[0] ,
    out_data,
    full_reg,
    \free_cnt_reg[0]_0 ,
    \rd_addr_reg[2] );
  output bclk_d1;
  output channel_sync_int_d1;
  output \free_cnt_reg[0] ;
  output \free_cnt_reg[2] ;
  output [0:0]\out_data_reg[1] ;
  output [0:0]D;
  input S_AXI_ARESETN_0;
  input [1:0]in_data;
  input S_AXI_ACLK;
  input \lrclk_count_reg[7] ;
  input empty;
  input S_AXI_ARESETN;
  input \I2S_CONTROL_REG_reg[0] ;
  input [22:0]out_data;
  input full_reg;
  input [0:0]\free_cnt_reg[0]_0 ;
  input [0:0]\rd_addr_reg[2] ;

  wire [0:0]D;
  wire \I2S_CONTROL_REG_reg[0] ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire bclk_d1;
  wire channel_sync_int_d1;
  wire empty;
  wire enable_int_i_1_n_0;
  wire \free_cnt_reg[0] ;
  wire [0:0]\free_cnt_reg[0]_0 ;
  wire \free_cnt_reg[2] ;
  wire full_reg;
  wire \gen[0].data_int[0][10]_i_1_n_0 ;
  wire \gen[0].data_int[0][11]_i_1_n_0 ;
  wire \gen[0].data_int[0][12]_i_1_n_0 ;
  wire \gen[0].data_int[0][13]_i_1_n_0 ;
  wire \gen[0].data_int[0][14]_i_1_n_0 ;
  wire \gen[0].data_int[0][15]_i_1_n_0 ;
  wire \gen[0].data_int[0][16]_i_1_n_0 ;
  wire \gen[0].data_int[0][17]_i_1_n_0 ;
  wire \gen[0].data_int[0][18]_i_1_n_0 ;
  wire \gen[0].data_int[0][19]_i_1_n_0 ;
  wire \gen[0].data_int[0][20]_i_1_n_0 ;
  wire \gen[0].data_int[0][21]_i_1_n_0 ;
  wire \gen[0].data_int[0][22]_i_1_n_0 ;
  wire \gen[0].data_int[0][23]_i_1_n_0 ;
  wire \gen[0].data_int[0][24]_i_1_n_0 ;
  wire \gen[0].data_int[0][25]_i_1_n_0 ;
  wire \gen[0].data_int[0][26]_i_1_n_0 ;
  wire \gen[0].data_int[0][27]_i_1_n_0 ;
  wire \gen[0].data_int[0][28]_i_1_n_0 ;
  wire \gen[0].data_int[0][29]_i_1_n_0 ;
  wire \gen[0].data_int[0][30]_i_1_n_0 ;
  wire \gen[0].data_int[0][31]_i_1__0_n_0 ;
  wire \gen[0].data_int[0][31]_i_2_n_0 ;
  wire \gen[0].data_int[0][31]_i_3_n_0 ;
  wire \gen[0].data_int[0][9]_i_1_n_0 ;
  wire \gen[0].data_int_reg_n_0_[0][10] ;
  wire \gen[0].data_int_reg_n_0_[0][11] ;
  wire \gen[0].data_int_reg_n_0_[0][12] ;
  wire \gen[0].data_int_reg_n_0_[0][13] ;
  wire \gen[0].data_int_reg_n_0_[0][14] ;
  wire \gen[0].data_int_reg_n_0_[0][15] ;
  wire \gen[0].data_int_reg_n_0_[0][16] ;
  wire \gen[0].data_int_reg_n_0_[0][17] ;
  wire \gen[0].data_int_reg_n_0_[0][18] ;
  wire \gen[0].data_int_reg_n_0_[0][19] ;
  wire \gen[0].data_int_reg_n_0_[0][20] ;
  wire \gen[0].data_int_reg_n_0_[0][21] ;
  wire \gen[0].data_int_reg_n_0_[0][22] ;
  wire \gen[0].data_int_reg_n_0_[0][23] ;
  wire \gen[0].data_int_reg_n_0_[0][24] ;
  wire \gen[0].data_int_reg_n_0_[0][25] ;
  wire \gen[0].data_int_reg_n_0_[0][26] ;
  wire \gen[0].data_int_reg_n_0_[0][27] ;
  wire \gen[0].data_int_reg_n_0_[0][28] ;
  wire \gen[0].data_int_reg_n_0_[0][29] ;
  wire \gen[0].data_int_reg_n_0_[0][30] ;
  wire \gen[0].data_int_reg_n_0_[0][8] ;
  wire \gen[0].data_int_reg_n_0_[0][9] ;
  wire [1:0]in_data;
  wire \lrclk_count_reg[7] ;
  wire [22:0]out_data;
  wire [0:0]\out_data_reg[1] ;
  wire p_0_in;
  wire [0:0]\rd_addr_reg[2] ;

  FDRE bclk_d1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(in_data[1]),
        .Q(bclk_d1),
        .R(S_AXI_ARESETN_0));
  FDRE channel_sync_int_d1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\lrclk_count_reg[7] ),
        .Q(channel_sync_int_d1),
        .R(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'hFF00000040000000)) 
    enable_int_i_1
       (.I0(empty),
        .I1(in_data[0]),
        .I2(\gen[0].data_int[0][31]_i_2_n_0 ),
        .I3(\I2S_CONTROL_REG_reg[0] ),
        .I4(S_AXI_ARESETN),
        .I5(\free_cnt_reg[0] ),
        .O(enable_int_i_1_n_0));
  FDRE enable_int_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(enable_int_i_1_n_0),
        .Q(\free_cnt_reg[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_reg_0_3_0_4_i_4
       (.I0(\free_cnt_reg[0] ),
        .I1(p_0_in),
        .O(\out_data_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h5595AA6A)) 
    \free_cnt[0]_i_1 
       (.I0(full_reg),
        .I1(\free_cnt_reg[0] ),
        .I2(channel_sync_int_d1),
        .I3(empty),
        .I4(\free_cnt_reg[0]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \free_cnt[3]_i_2 
       (.I0(\free_cnt_reg[0] ),
        .I1(channel_sync_int_d1),
        .I2(empty),
        .O(\free_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][10]_i_1 
       (.I0(out_data[1]),
        .I1(\gen[0].data_int_reg_n_0_[0][9] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][11]_i_1 
       (.I0(out_data[2]),
        .I1(\gen[0].data_int_reg_n_0_[0][10] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][12]_i_1 
       (.I0(out_data[3]),
        .I1(\gen[0].data_int_reg_n_0_[0][11] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][13]_i_1 
       (.I0(out_data[4]),
        .I1(\gen[0].data_int_reg_n_0_[0][12] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][14]_i_1 
       (.I0(out_data[5]),
        .I1(\gen[0].data_int_reg_n_0_[0][13] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][15]_i_1 
       (.I0(out_data[6]),
        .I1(\gen[0].data_int_reg_n_0_[0][14] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][16]_i_1 
       (.I0(out_data[7]),
        .I1(\gen[0].data_int_reg_n_0_[0][15] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][17]_i_1 
       (.I0(out_data[8]),
        .I1(\gen[0].data_int_reg_n_0_[0][16] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][18]_i_1 
       (.I0(out_data[9]),
        .I1(\gen[0].data_int_reg_n_0_[0][17] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][19]_i_1 
       (.I0(out_data[10]),
        .I1(\gen[0].data_int_reg_n_0_[0][18] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][20]_i_1 
       (.I0(out_data[11]),
        .I1(\gen[0].data_int_reg_n_0_[0][19] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][21]_i_1 
       (.I0(out_data[12]),
        .I1(\gen[0].data_int_reg_n_0_[0][20] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][22]_i_1 
       (.I0(out_data[13]),
        .I1(\gen[0].data_int_reg_n_0_[0][21] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][23]_i_1 
       (.I0(out_data[14]),
        .I1(\gen[0].data_int_reg_n_0_[0][22] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][24]_i_1 
       (.I0(out_data[15]),
        .I1(\gen[0].data_int_reg_n_0_[0][23] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][25]_i_1 
       (.I0(out_data[16]),
        .I1(\gen[0].data_int_reg_n_0_[0][24] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][26]_i_1 
       (.I0(out_data[17]),
        .I1(\gen[0].data_int_reg_n_0_[0][25] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][27]_i_1 
       (.I0(out_data[18]),
        .I1(\gen[0].data_int_reg_n_0_[0][26] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][28]_i_1 
       (.I0(out_data[19]),
        .I1(\gen[0].data_int_reg_n_0_[0][27] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][29]_i_1 
       (.I0(out_data[20]),
        .I1(\gen[0].data_int_reg_n_0_[0][28] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][30]_i_1 
       (.I0(out_data[21]),
        .I1(\gen[0].data_int_reg_n_0_[0][29] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen[0].data_int[0][31]_i_1__0 
       (.I0(S_AXI_ARESETN),
        .I1(\I2S_CONTROL_REG_reg[0] ),
        .O(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen[0].data_int[0][31]_i_2 
       (.I0(bclk_d1),
        .I1(in_data[1]),
        .O(\gen[0].data_int[0][31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][31]_i_3 
       (.I0(out_data[22]),
        .I1(\gen[0].data_int_reg_n_0_[0][30] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gen[0].data_int[0][9]_i_1 
       (.I0(out_data[0]),
        .I1(\gen[0].data_int_reg_n_0_[0][8] ),
        .I2(\lrclk_count_reg[7] ),
        .O(\gen[0].data_int[0][9]_i_1_n_0 ));
  FDRE \gen[0].data_int_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][10]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][10] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][11]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][11] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][12]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][12] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][13]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][13] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][14]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][14] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][15]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][15] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][16]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][16] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][17]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][17] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][18]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][18] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][19]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][19] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][20]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][20] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][21]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][21] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][22]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][22] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][23]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][23] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][24]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][24] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][25]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][25] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][26]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][26] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][27]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][27] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][28]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][28] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][29]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][29] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][30]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][30] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][31]_i_3_n_0 ),
        .Q(p_0_in),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\rd_addr_reg[2] ),
        .Q(\gen[0].data_int_reg_n_0_[0][8] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
  FDRE \gen[0].data_int_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(\gen[0].data_int[0][31]_i_2_n_0 ),
        .D(\gen[0].data_int[0][9]_i_1_n_0 ),
        .Q(\gen[0].data_int_reg_n_0_[0][9] ),
        .R(\gen[0].data_int[0][31]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "pl330_dma_fifo" *) 
module system_axi_i2s_adi_0_pl330_dma_fifo
   (out_data,
    \wr_addr_reg[1] ,
    empty,
    full,
    \gen[0].data_int_reg[0][8] ,
    DMA_REQ_TX_DRTYPE,
    DMA_REQ_TX_DRVALID,
    Q,
    S_AXI_ACLK,
    p_0_in1_out,
    S_AXI_WDATA,
    \wr_addr_reg[0] ,
    channel_sync_int,
    tx_fifo_reset,
    S_AXI_ARESETN,
    \I2S_CONTROL_REG_reg[0] ,
    full_reg,
    enable_int_reg,
    D,
    channel_sync_int_d1,
    enable_int,
    DMA_REQ_TX_DATYPE,
    DMA_REQ_TX_DAVALID,
    DMA_REQ_TX_RSTN,
    DMA_REQ_TX_DRREADY,
    DMA_REQ_TX_ACLK);
  output [22:0]out_data;
  output [0:0]\wr_addr_reg[1] ;
  output empty;
  output full;
  output [0:0]\gen[0].data_int_reg[0][8] ;
  output [0:0]DMA_REQ_TX_DRTYPE;
  output DMA_REQ_TX_DRVALID;
  output [0:0]Q;
  input S_AXI_ACLK;
  input p_0_in1_out;
  input [23:0]S_AXI_WDATA;
  input \wr_addr_reg[0] ;
  input channel_sync_int;
  input tx_fifo_reset;
  input S_AXI_ARESETN;
  input \I2S_CONTROL_REG_reg[0] ;
  input full_reg;
  input enable_int_reg;
  input [0:0]D;
  input channel_sync_int_d1;
  input enable_int;
  input [1:0]DMA_REQ_TX_DATYPE;
  input DMA_REQ_TX_DAVALID;
  input DMA_REQ_TX_RSTN;
  input DMA_REQ_TX_DRREADY;
  input DMA_REQ_TX_ACLK;

  wire [0:0]D;
  wire DMA_REQ_TX_ACLK;
  wire [1:0]DMA_REQ_TX_DATYPE;
  wire DMA_REQ_TX_DAVALID;
  wire DMA_REQ_TX_DRREADY;
  wire [0:0]DMA_REQ_TX_DRTYPE;
  wire DMA_REQ_TX_DRVALID;
  wire DMA_REQ_TX_RSTN;
  wire \I2S_CONTROL_REG_reg[0] ;
  wire [0:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [23:0]S_AXI_WDATA;
  wire channel_sync_int;
  wire channel_sync_int_d1;
  wire empty;
  wire enable_int;
  wire enable_int_reg;
  wire fifo_n_27;
  wire full;
  wire full_reg;
  wire [0:0]\gen[0].data_int_reg[0][8] ;
  wire [22:0]out_data;
  wire p_0_in1_out;
  wire state0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[1] ;
  wire tx_fifo_reset;
  wire \wr_addr_reg[0] ;
  wire [0:0]\wr_addr_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \DMA_REQ_TX_DRTYPE[1]_INST_0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(DMA_REQ_TX_DRVALID),
        .O(DMA_REQ_TX_DRTYPE));
  system_axi_i2s_adi_0_dma_fifo fifo
       (.ADDRD(\wr_addr_reg[1] ),
        .D(D),
        .\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg[0] ),
        .Q(Q),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_WDATA(S_AXI_WDATA),
        .channel_sync_int(channel_sync_int),
        .channel_sync_int_d1(channel_sync_int_d1),
        .enable_int(enable_int),
        .enable_int_reg(enable_int_reg),
        .\free_cnt_reg[1]_0 (empty),
        .full(full),
        .full_reg_0(full_reg),
        .\gen[0].data_int_reg[0][8] (\gen[0].data_int_reg[0][8] ),
        .out_data(out_data),
        .p_0_in1_out(p_0_in1_out),
        .\state_reg[1] (fifo_n_27),
        .tx_fifo_reset(tx_fifo_reset),
        .\wr_addr_reg[0]_0 (\wr_addr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \state[0]_i_1 
       (.I0(DMA_REQ_TX_DRVALID),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(DMA_REQ_TX_RSTN),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \state[0]_i_2 
       (.I0(fifo_n_27),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[0]_i_5_n_0 ),
        .I3(DMA_REQ_TX_DRVALID),
        .I4(DMA_REQ_TX_DRREADY),
        .I5(state0),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h07070707FF050505)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(tx_fifo_reset),
        .I2(DMA_REQ_TX_DRVALID),
        .I3(DMA_REQ_TX_DATYPE[1]),
        .I4(DMA_REQ_TX_DAVALID),
        .I5(DMA_REQ_TX_DATYPE[0]),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \state[0]_i_5 
       (.I0(tx_fifo_reset),
        .I1(DMA_REQ_TX_DATYPE[0]),
        .I2(DMA_REQ_TX_DATYPE[1]),
        .I3(DMA_REQ_TX_DAVALID),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[0]_i_6 
       (.I0(DMA_REQ_TX_DATYPE[0]),
        .I1(DMA_REQ_TX_DAVALID),
        .I2(DMA_REQ_TX_DATYPE[1]),
        .O(state0));
  LUT4 #(
    .INIT(16'hE200)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(DMA_REQ_TX_RSTN),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h52505250FF505250)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(tx_fifo_reset),
        .I2(DMA_REQ_TX_DRVALID),
        .I3(DMA_REQ_TX_DATYPE[1]),
        .I4(DMA_REQ_TX_DAVALID),
        .I5(DMA_REQ_TX_DATYPE[0]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(DMA_REQ_TX_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(DMA_REQ_TX_DRVALID),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(DMA_REQ_TX_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pl330_dma_fifo" *) 
module system_axi_i2s_adi_0_pl330_dma_fifo__parameterized0
   (\rd_addr_reg[1] ,
    \rd_addr_reg[0] ,
    \free_cnt_reg[0] ,
    DMA_REQ_RX_DRTYPE,
    DMA_REQ_RX_DRVALID,
    out_data,
    S_AXI_ACLK,
    \rd_addr_reg[0]_0 ,
    rx_fifo_reset,
    S_AXI_ARESETN,
    rx_enable,
    empty_reg,
    sequencer_state_reg,
    rx_stb,
    DMA_REQ_RX_DATYPE,
    DMA_REQ_RX_DAVALID,
    in_data,
    DMA_REQ_RX_RSTN,
    DMA_REQ_RX_DRREADY,
    DMA_REQ_RX_ACLK);
  output [0:0]\rd_addr_reg[1] ;
  output \rd_addr_reg[0] ;
  output \free_cnt_reg[0] ;
  output [0:0]DMA_REQ_RX_DRTYPE;
  output DMA_REQ_RX_DRVALID;
  output [23:0]out_data;
  input S_AXI_ACLK;
  input \rd_addr_reg[0]_0 ;
  input rx_fifo_reset;
  input S_AXI_ARESETN;
  input rx_enable;
  input empty_reg;
  input sequencer_state_reg;
  input rx_stb;
  input [1:0]DMA_REQ_RX_DATYPE;
  input DMA_REQ_RX_DAVALID;
  input [23:0]in_data;
  input DMA_REQ_RX_RSTN;
  input DMA_REQ_RX_DRREADY;
  input DMA_REQ_RX_ACLK;

  wire DMA_REQ_RX_ACLK;
  wire [1:0]DMA_REQ_RX_DATYPE;
  wire DMA_REQ_RX_DAVALID;
  wire DMA_REQ_RX_DRREADY;
  wire [0:0]DMA_REQ_RX_DRTYPE;
  wire DMA_REQ_RX_DRVALID;
  wire DMA_REQ_RX_RSTN;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire empty_reg;
  wire fifo_n_3;
  wire \free_cnt_reg[0] ;
  wire [23:0]in_data;
  wire [23:0]out_data;
  wire \rd_addr_reg[0] ;
  wire \rd_addr_reg[0]_0 ;
  wire [0:0]\rd_addr_reg[1] ;
  wire rx_enable;
  wire rx_fifo_reset;
  wire rx_stb;
  wire sequencer_state_reg;
  wire state0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_5__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \DMA_REQ_RX_DRTYPE[1]_INST_0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(DMA_REQ_RX_DRVALID),
        .O(DMA_REQ_RX_DRTYPE));
  system_axi_i2s_adi_0_dma_fifo_0 fifo
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .empty_reg_0(empty_reg),
        .\free_cnt_reg[0]_0 (\free_cnt_reg[0] ),
        .in_data(in_data),
        .out_data(out_data),
        .rd_addr(\rd_addr_reg[1] ),
        .\rd_addr_reg[0]_0 (\rd_addr_reg[0] ),
        .\rd_addr_reg[0]_1 (\rd_addr_reg[0]_0 ),
        .rx_enable(rx_enable),
        .rx_fifo_reset(rx_fifo_reset),
        .rx_stb(rx_stb),
        .sequencer_state_reg(sequencer_state_reg),
        .\state_reg[1] (fifo_n_3));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \state[0]_i_1 
       (.I0(DMA_REQ_RX_DRVALID),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(DMA_REQ_RX_RSTN),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \state[0]_i_2 
       (.I0(fifo_n_3),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[0]_i_5__0_n_0 ),
        .I3(DMA_REQ_RX_DRVALID),
        .I4(DMA_REQ_RX_DRREADY),
        .I5(state0),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h07070707FF050505)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_fifo_reset),
        .I2(DMA_REQ_RX_DRVALID),
        .I3(DMA_REQ_RX_DATYPE[1]),
        .I4(DMA_REQ_RX_DAVALID),
        .I5(DMA_REQ_RX_DATYPE[0]),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \state[0]_i_5__0 
       (.I0(rx_fifo_reset),
        .I1(DMA_REQ_RX_DATYPE[0]),
        .I2(DMA_REQ_RX_DATYPE[1]),
        .I3(DMA_REQ_RX_DAVALID),
        .O(\state[0]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[0]_i_6__0 
       (.I0(DMA_REQ_RX_DATYPE[0]),
        .I1(DMA_REQ_RX_DAVALID),
        .I2(DMA_REQ_RX_DATYPE[1]),
        .O(state0));
  LUT4 #(
    .INIT(16'hE200)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(DMA_REQ_RX_RSTN),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h52505250FF505250)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_fifo_reset),
        .I2(DMA_REQ_RX_DRVALID),
        .I3(DMA_REQ_RX_DATYPE[1]),
        .I4(DMA_REQ_RX_DAVALID),
        .I5(DMA_REQ_RX_DATYPE[0]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(DMA_REQ_RX_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(DMA_REQ_RX_DRVALID),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(DMA_REQ_RX_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
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
