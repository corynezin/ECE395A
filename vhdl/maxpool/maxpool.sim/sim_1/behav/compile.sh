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
echo "xvhdl -m64 --relax -prj maxpool_tb_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj maxpool_tb_vhdl.prj 2>&1 | tee -a compile.log
