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
ExecStep $xv_path/bin/xsim inner_product_testbed_behav -key {Behavioral:sim_1:Functional:inner_product_testbed} -tclbatch inner_product_testbed.tcl -view /home/bcv/Documents/ECE395A/vhdl/inner_product/inner_product.sim/inner_product_testbed_behav.wcfg -log simulate.log
