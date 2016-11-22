# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip.tcl 

adi_ip_create axi_clkgen
adi_ip_files axi_clkgen [list \
  "ad_rst.v" \
  "ad_mmcm_drp.v" \
  "up_axi.v" \
  "up_drp_cntrl.v" \
  "up_clkgen.v" \
  "axi_clkgen.v" ]  ; # most were in "$ad_hdl_dir/library/common

adi_ip_properties axi_clkgen

#set_property physical_name {s_axi_aclk} [ipx::get_port_maps CLK -of_objects \
#  [ipx::get_bus_interfaces s_axi_aclk -of_objects [ipx::current_core]]]

#ipx::remove_bus_interface {signal_clock} [ipx::current_core]

ipx::associate_bus_interfaces -busif s_axi -clock clk -clear [ipx::current_core]
#ipx::associate_bus_interfaces -busif s_axi -clock s_axi_signal_clock -clear [ipx::current_core]
ipx::associate_bus_interfaces -busif s_axi -clock s_axi_aclk [ipx::current_core]

ipx::save_core [ipx::current_core]


