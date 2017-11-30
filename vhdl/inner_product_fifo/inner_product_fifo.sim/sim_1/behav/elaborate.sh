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
ExecStep $xv_path/bin/xelab -wto bb79c9be18554338a50bde0601eb8e86 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip -L xpm --snapshot dot_tb_behav xil_defaultlib.dot_tb -log elaborate.log
