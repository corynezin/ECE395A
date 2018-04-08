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
  set_property webtalk.parent_dir /home/nezin/Documents/ECE395A/vhdl/slope_bias_loader/slope_bias_loader.cache/wt [current_project]
  set_property parent.project_path /home/nezin/Documents/ECE395A/vhdl/slope_bias_loader/slope_bias_loader.xpr [current_project]
  set_property ip_output_repo /home/nezin/Documents/ECE395A/vhdl/slope_bias_loader/slope_bias_loader.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet /home/nezin/Documents/ECE395A/vhdl/slope_bias_loader/slope_bias_loader.runs/synth_1/slope_bias_loader.dcp
  link_design -top slope_bias_loader -part xc7z020clg484-1
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
  write_checkpoint -force slope_bias_loader_opt.dcp
  catch { report_drc -file slope_bias_loader_drc_opted.rpt }
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
  write_checkpoint -force slope_bias_loader_placed.dcp
  catch { report_io -file slope_bias_loader_io_placed.rpt }
  catch { report_utilization -file slope_bias_loader_utilization_placed.rpt -pb slope_bias_loader_utilization_placed.pb }
  catch { report_control_sets -verbose -file slope_bias_loader_control_sets_placed.rpt }
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
  write_checkpoint -force slope_bias_loader_routed.dcp
  catch { report_drc -file slope_bias_loader_drc_routed.rpt -pb slope_bias_loader_drc_routed.pb -rpx slope_bias_loader_drc_routed.rpx }
  catch { report_methodology -file slope_bias_loader_methodology_drc_routed.rpt -rpx slope_bias_loader_methodology_drc_routed.rpx }
  catch { report_power -file slope_bias_loader_power_routed.rpt -pb slope_bias_loader_power_summary_routed.pb -rpx slope_bias_loader_power_routed.rpx }
  catch { report_route_status -file slope_bias_loader_route_status.rpt -pb slope_bias_loader_route_status.pb }
  catch { report_clock_utilization -file slope_bias_loader_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file slope_bias_loader_timing_summary_routed.rpt -rpx slope_bias_loader_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force slope_bias_loader_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

