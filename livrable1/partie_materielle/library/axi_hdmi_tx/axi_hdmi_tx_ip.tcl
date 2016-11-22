# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip.tcl

adi_ip_create axi_hdmi_tx
adi_ip_files axi_hdmi_tx [list \
  "ad_mem.v" \
  "ad_rst.v" \
  "ad_csc_1_mul.v" \
  "ad_csc_1_add.v" \
  "ad_csc_1.v" \
  "ad_csc_RGB2CrYCb.v" \
  "ad_ss_444to422.v" \
  "up_axi.v" \
  "up_xfer_cntrl.v" \
  "up_xfer_status.v" \
  "up_clock_mon.v" \
  "up_hdmi_tx.v" \
  "axi_hdmi_tx_vdma.v" \
  "axi_hdmi_tx_core.v" \
  "axi_hdmi_tx.v" \
  "axi_hdmi_tx_constr.xdc" ]

adi_ip_properties axi_hdmi_tx
adi_ip_constraints axi_hdmi_tx [list \
  "axi_hdmi_tx_constr.xdc" ]

ipx::save_core [ipx::current_core]

