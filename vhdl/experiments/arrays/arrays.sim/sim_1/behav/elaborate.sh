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
ExecStep $xv_path/bin/xelab -wto 34f5c262ecf44ef2a09baa0a9c419b7f -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot simple_nn_behav xil_defaultlib.simple_nn -log elaborate.log
