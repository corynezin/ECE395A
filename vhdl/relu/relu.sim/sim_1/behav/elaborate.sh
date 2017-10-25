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
ExecStep $xv_path/bin/xelab -wto 850dba13e0cc45baa47485968ba713b6 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot relu_testbed_behav xil_defaultlib.relu_testbed -log elaborate.log
