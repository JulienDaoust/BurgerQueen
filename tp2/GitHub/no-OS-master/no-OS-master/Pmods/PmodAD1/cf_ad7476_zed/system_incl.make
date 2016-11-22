#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:D:\AD\GitHub\no-OS\Pmods\PmodAD1\cf_ad7476_zed\system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

SHELL = CMD

XILINX_EDK_DIR = D:/Xilinx/14.4/ISE_DS/EDK

SYSTEM = system

MHSFILE = system.mhs

PCWPRJFILE = data/ps7_system_prj.xml

FPGA_ARCH = zynq

DEVICE = xc7z020clg484-1

INTSTYLE = default

XPS_HDL_LANG = vhdl
GLOBAL_SEARCHPATHOPT = 
PROJECT_SEARCHPATHOPT =  -lp D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/

SEARCHPATHOPT = $(PROJECT_SEARCHPATHOPT) $(GLOBAL_SEARCHPATHOPT)

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) -msg __xps/ise/xmsgprops.lst

OBSERVE_PAR_OPTIONS = -error yes

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
MICROBLAZE_BOOTLOOP_LE = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop_le.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

BRAMINIT_ELF_IMP_FILES =
BRAMINIT_ELF_IMP_FILE_ARGS =

BRAMINIT_ELF_SIM_FILES =
BRAMINIT_ELF_SIM_FILE_ARGS =

SIM_CMD = isim_system

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.tcl

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.tcl

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.tcl

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_SIM_FILE_ARGS) -msg __xps/ise/xmsgprops.lst -s isim -X D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_ad7476_zed/


CORE_STATE_DEVELOPMENT_FILES = D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/proc_common_pkg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_pkg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate128.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family_support.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/coregen_comp_defs.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/common_types_pkg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/conv_funs_pkg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/async_fifo_fg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/sync_fifo_fg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/basic_sfifo_fg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/blk_mem_gen_wrapper.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/addsub.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter_bit.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/direct_path_cntr.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/direct_path_cntr_ai.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/down_counter.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/eval_timer.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/inferred_lut4.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_steer.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_steer128.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_mirror128.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ld_arith_reg.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ld_arith_reg2.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/mux_onehot.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_bits.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_adder_bit.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_adder.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_counter_bit.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_counter.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_counter_top.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_occ_counter.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_occ_counter_top.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_dpram_select.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect_mask.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl16_fifo.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo2.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo3.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_rbu.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/valid_be.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_with_enable_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/muxf_struct_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/cntr_incr_decr_addn_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/dynshreg_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/dynshreg_i_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/mux_onehot_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_rbu_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/compare_vectors_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate_f.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/soft_reset.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_lite_ipif_v1_01_a/hdl/vhdl/address_decoder.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_lite_ipif_v1_01_a/hdl/vhdl/slave_attachment.vhd \
D:/Xilinx/14.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_lite_ipif_v1_01_a/hdl/vhdl/axi_lite_ipif.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_mem.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_mul.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_add.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_csc_1.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_csc_RGB2CrYCb.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_ss_444to422.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_vdma.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_hdmi.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_hdmi_tx_16b.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/user_logic.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/vhdl/axi_hdmi_tx_16b.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_spdif_tx_v1_00_a/hdl/vhdl/axi_spdif_tx.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_spdif_tx_v1_00_a/hdl/vhdl/tx_package.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_spdif_tx_v1_00_a/hdl/vhdl/tx_encoder.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/vhdl/axi_ctrlif.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/vhdl/axi_streaming_dma_tx_fifo.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/vhdl/pl330_dma_fifo.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/vhdl/dma_fifo.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/vhdl/axi_streaming_dma_rx_fifo.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/mem.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/mul_u16.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/axis_inf.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/dma_core.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/up_axi.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/up_adc_common.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/up_adc_channel.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/ad_datafmt.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/adi_common_v1_00_a/hdl/verilog/ad_iqcor.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_clkgen_v1_00_a/hdl/verilog/cf_clkgen.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_clkgen_v1_00_a/hdl/verilog/user_logic.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_clkgen_v1_00_a/hdl/vhdl/axi_clkgen.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/axi_i2s_adi.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/i2s_controller.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/i2s_rx.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/i2s_tx.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/i2s_clkgen.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/fifo_synchronizer.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/util_i2c_mixer_v1_00_a/hdl/vhdl/util_i2c_mixer.vhd \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_ad7476_v1_00_a/hdl/verilog/axi_ad7476_dev_if.v \
D:/AD/GitHub/no-OS/Pmods/PmodAD1/cf_lib/edk/pcores/axi_ad7476_v1_00_a/hdl/verilog/axi_ad7476.v

WRAPPER_NGC_FILES = implementation/system_processing_system7_0_wrapper.ngc \
implementation/system_axi_vdma_0_wrapper.ngc \
implementation/system_axi_interconnect_1_wrapper.ngc \
implementation/system_axi_interconnect_2_wrapper.ngc \
implementation/system_axi_hdmi_tx_16b_0_wrapper.ngc \
implementation/system_axi_spdif_tx_0_wrapper.ngc \
implementation/system_axi_iic_0_wrapper.ngc \
implementation/system_axi_clkgen_0_wrapper.ngc \
implementation/system_clock_generator_0_wrapper.ngc \
implementation/system_util_vector_logic_0_wrapper.ngc \
implementation/system_axi_i2s_adi_0_wrapper.ngc \
implementation/system_util_i2c_mixer_0_wrapper.ngc \
implementation/system_axi_iic_1_wrapper.ngc \
implementation/system_axi_interconnect_3_wrapper.ngc \
implementation/system_axi_dma_0_wrapper.ngc \
implementation/system_axi_ad7476_0_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data\system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

SDK_EXPORT_DIR = SDK\SDK_Export\hw
SYSTEM_HW_HANDOFF = $(SDK_EXPORT_DIR)/$(SYSTEM).xml
SYSTEM_HW_HANDOFF_BIT = $(SDK_EXPORT_DIR)/$(SYSTEM).bit
SYSTEM_HW_HANDOFF_DEP = $(SYSTEM_HW_HANDOFF) $(SYSTEM_HW_HANDOFF_BIT)
