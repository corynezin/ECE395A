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
ExecStep $xv_path/bin/xsim simple_nn_behav -key {Behavioral:sim_1:Functional:simple_nn} -tclbatch simple_nn.tcl -log simulate.log
