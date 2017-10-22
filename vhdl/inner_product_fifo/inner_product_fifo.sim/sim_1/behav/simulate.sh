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
ExecStep $xv_path/bin/xsim dot_tb_behav -key {Behavioral:sim_1:Functional:dot_tb} -tclbatch dot_tb.tcl -view /home/bcv/Documents/ECE395A/vhdl/inner_product_fifo/dot_tb_behav.wcfg -log simulate.log
