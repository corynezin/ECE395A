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
ExecStep $xv_path/bin/xelab -wto 364b9ed49a124346bd2858ab9ecd691c -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot slope_bias_loader_tb_behav xil_defaultlib.slope_bias_loader_tb -log elaborate.log
