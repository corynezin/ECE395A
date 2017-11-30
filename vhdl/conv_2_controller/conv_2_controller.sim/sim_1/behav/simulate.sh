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
ExecStep $xv_path/bin/xsim conv2_controller_tb_behav -key {Behavioral:sim_1:Functional:conv2_controller_tb} -tclbatch conv2_controller_tb.tcl -view /home/nezin/Documents/ECE395A/vhdl/conv_2_controller/conv2_controller_tb_behav.wcfg -log simulate.log
