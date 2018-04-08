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
ExecStep $xv_path/bin/xelab -wto 3f5294364a47484fb8ae0c17b9cfe1ee -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip -L xpm --snapshot matmul_tb_behav xil_defaultlib.matmul_tb -log elaborate.log
