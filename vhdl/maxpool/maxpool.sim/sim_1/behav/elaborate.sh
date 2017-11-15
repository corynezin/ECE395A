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
ExecStep $xv_path/bin/xelab -wto f2e8ab951e4945c7b5cffce7e0d4d525 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot maxpool_tb_behav xil_defaultlib.maxpool_tb -log elaborate.log
