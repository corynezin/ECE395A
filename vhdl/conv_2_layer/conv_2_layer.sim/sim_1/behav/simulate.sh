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
ExecStep $xv_path/bin/xsim conv_layer_2_tb_behav -key {Behavioral:sim_1:Functional:conv_layer_2_tb} -tclbatch conv_layer_2_tb.tcl -view /home/nezin/Documents/ECE395A/vhdl/conv_2_layer/conv_layer_2_tb_behav.wcfg -log simulate.log
