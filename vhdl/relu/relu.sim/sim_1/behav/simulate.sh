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
ExecStep $xv_path/bin/xsim relu_testbed_behav -key {Behavioral:sim_1:Functional:relu_testbed} -tclbatch relu_testbed.tcl -log simulate.log
