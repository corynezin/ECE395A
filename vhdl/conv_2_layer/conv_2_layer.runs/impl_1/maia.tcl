proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.cache/wt [current_project]
  set_property parent.project_path /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.xpr [current_project]
  set_property ip_output_repo /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.runs/synth_1/maia.dcp
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/matmul/matmul.srcs/sources_1/ip/activation_fifo/activation_fifo.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/matmul/matmul.srcs/sources_1/ip/activation_fifo/activation_fifo.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/ip/fifo_16/fifo_16.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/ip/fifo_16/fifo_16.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/sources_1/ip/fifo_16x24/fifo_16x24.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/sources_1/ip/fifo_16x24/fifo_16x24.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/conv_relu_pool/conv_relu_pool.srcs/sources_1/ip/fir128_0/fir128_0.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/conv_relu_pool/conv_relu_pool.srcs/sources_1/ip/fir128_0/fir128_0.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/sources_1/ip/fifo_7680/fifo_7680.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/sources_1/ip/fifo_7680/fifo_7680.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/ip/fifo_45/fifo_45.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/ip/fifo_45/fifo_45.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/ip/fifo_generator_0/fifo_generator_0.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/ip/fifo_generator_0/fifo_generator_0.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/conv_relu_pool/conv_relu_pool.srcs/sources_1/ip/fir128_1/fir128_1.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/conv_relu_pool/conv_relu_pool.srcs/sources_1/ip/fir128_1/fir128_1.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/sources_1/ip/fifo_generator_1_1/fifo_generator_1.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/sources_1/ip/fifo_generator_1_1/fifo_generator_1.xci]
  read_ip -quiet /home/nezin/Documents/ECE395A/vhdl/matmul/matmul.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
  set_property is_locked true [get_files /home/nezin/Documents/ECE395A/vhdl/matmul/matmul.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci]
  read_xdc /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_2_layer.srcs/constrs_1/new/timing.xdc
  link_design -top maia -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force maia_opt.dcp
  catch { report_drc -file maia_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force maia_placed.dcp
  catch { report_io -file maia_io_placed.rpt }
  catch { report_utilization -file maia_utilization_placed.rpt -pb maia_utilization_placed.pb }
  catch { report_control_sets -verbose -file maia_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force maia_routed.dcp
  catch { report_drc -file maia_drc_routed.rpt -pb maia_drc_routed.pb -rpx maia_drc_routed.rpx }
  catch { report_methodology -file maia_methodology_drc_routed.rpt -rpx maia_methodology_drc_routed.rpx }
  catch { report_power -file maia_power_routed.rpt -pb maia_power_summary_routed.pb -rpx maia_power_routed.rpx }
  catch { report_route_status -file maia_route_status.rpt -pb maia_route_status.pb }
  catch { report_clock_utilization -file maia_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file maia_timing_summary_routed.rpt -rpx maia_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force maia_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

