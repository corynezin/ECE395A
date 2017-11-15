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
ExecStep $xv_path/bin/xsim maxpool_tb_behav -key {Behavioral:sim_1:Functional:maxpool_tb} -tclbatch maxpool_tb.tcl -view /home/bcv/Documents/ECE395A/vhdl/maxpool/maxpool_tb_behav.wcfg -log simulate.log
