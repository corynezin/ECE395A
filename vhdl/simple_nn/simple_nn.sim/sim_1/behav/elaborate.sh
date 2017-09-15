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
ExecStep $xv_path/bin/xelab -wto 87b87a6444f24d39a58a581b62472084 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot matrix_multiply_behav xil_defaultlib.matrix_multiply -log elaborate.log
