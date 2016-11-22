


source adi_env.tcl ;# was in ../../scripts/
source adi_project.tcl ;# was in $ad_hdl_dir/projects/scripts/

adi_project_create adv7511_zed
adi_project_files adv7511_zed [list \
  "system_top.v" \
  "zed_system_constr.xdc" \
  "$ad_hdl_dir/library/common/ad_iobuf.v"]

adi_project_run adv7511_zed


