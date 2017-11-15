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
ExecStep $xv_path/bin/xelab -wto 5992ad49c8454188972ffb863494dac6 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot argmax_tb_behav xil_defaultlib.argmax_tb -log elaborate.log
