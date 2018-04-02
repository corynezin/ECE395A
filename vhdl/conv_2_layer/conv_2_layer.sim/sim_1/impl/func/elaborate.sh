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
ExecStep $xv_path/bin/xelab -wto 1cbc5c9936544b3ea85088fe181abbb3 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot conv_layer_2_tb_func_impl xil_defaultlib.conv_layer_2_tb -log elaborate.log
