#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim slope_bias_loader_tb_behav -key {Behavioral:sim_1:Functional:slope_bias_loader_tb} -tclbatch slope_bias_loader_tb.tcl -view /home/nezin/Documents/ECE395A/vhdl/slope_bias_loader/slope_bias_loader_tb_behav.wcfg -log simulate.log
