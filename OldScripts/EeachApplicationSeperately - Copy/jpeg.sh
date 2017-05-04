source Common.sh
options1="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb" 


for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BasePath}${BinaryPath}/jpeg --options=${options1} &
 
done

#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C1  configs/example/se.py  $Config1  -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb  " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C2  configs/example/se.py   $Config2 -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C3  configs/example/se.py  $Config3  -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb  " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C4  configs/example/se.py   $Config4 -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C5  configs/example/se.py  $Config5  -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb  " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C6  configs/example/se.py   $Config6 -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C7  configs/example/se.py  $Config7  -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb  " &
#build/X86/gem5.opt  -d ${BasePath}jpeg/${OutPrefix}C8  configs/example/se.py   $Config8 -c ${BasePath}${BinaryPath}/jpeg --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb " &
