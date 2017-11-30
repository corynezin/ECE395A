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
ExecStep $xv_path/bin/xelab -wto aa9b6b718a674f00a1aaf4e9568b6d9f -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip -L xpm --snapshot conv2_controller_tb_behav xil_defaultlib.conv2_controller_tb -log elaborate.log
