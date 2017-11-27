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
ExecStep $xv_path/bin/xelab -wto 84e58d72a82c486ea931d03c8ccc4535 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L xbip_utils_v3_0_7 -L axi_utils_v2_0_3 -L fir_compiler_v7_2_8 -L secureip -L xpm --snapshot conv_relu_pool_tb_behav xil_defaultlib.conv_relu_pool_tb -log elaborate.log
