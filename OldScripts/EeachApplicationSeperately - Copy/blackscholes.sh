source Common.sh
options1="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/blackscholes/test.data/input/blackscholesTest_200K.data " 
options2="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/blackscholes/test.data/input/blackscholesTest_400K.data "


for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C${i}_200  configs/example/se.py  ${!configvar} -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
 build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C${i}_400  configs/example/se.py  ${!configvar} -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &
done


#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C2_200  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C3_200  configs/example/se.py  $Config3 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C4_200  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C5_200  configs/example/se.py  $Config5 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C6_200  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C7_200  configs/example/se.py  $Config7 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C8_200  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/blackscholes --options=${options1} &


#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C1_400  configs/example/se.py  $Config1 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C2_400  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C3_400  configs/example/se.py  $Config3 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C4_400  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C5_400  configs/example/se.py  $Config5 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2}&
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C6_400  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C7_400  configs/example/se.py  $Config7 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2}&
#build/X86/gem5.opt  -d ${BasePath}blackscholes/${OutPrefix}C8_400  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/blackscholes --options=${options2} &

