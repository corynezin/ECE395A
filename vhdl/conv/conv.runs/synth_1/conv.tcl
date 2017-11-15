# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/bcv/Documents/ECE395A/vhdl/conv/conv.cache/wt [current_project]
set_property parent.project_path /home/bcv/Documents/ECE395A/vhdl/conv/conv.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo /home/bcv/Documents/ECE395A/vhdl/conv/conv.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/bcv/Documents/ECE395A/vhdl/helpers/conv/taps.coe
read_vhdl -library xil_defaultlib /home/bcv/Documents/ECE395A/vhdl/conv/conv.srcs/sources_1/new/conv.vhd
read_ip -quiet /home/bcv/Documents/ECE395A/vhdl/conv/conv.srcs/sources_1/ip/fir128/fir128.xci
set_property used_in_implementation false [get_files -all /home/bcv/Documents/ECE395A/vhdl/conv/conv.srcs/sources_1/ip/fir128/constraints/fir_compiler_v7_2.xdc]
set_property used_in_implementation false [get_files -all /home/bcv/Documents/ECE395A/vhdl/conv/conv.srcs/sources_1/ip/fir128/fir128_ooc.xdc]
set_property is_locked true [get_files /home/bcv/Documents/ECE395A/vhdl/conv/conv.srcs/sources_1/ip/fir128/fir128.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top conv -part xc7z020clg484-1


write_checkpoint -force -noxdef conv.dcp

catch { report_utilization -file conv_utilization_synth.rpt -pb conv_utilization_synth.pb }