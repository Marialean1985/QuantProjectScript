source Common.sh
options1="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data" 
options2="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data"

for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BasePath}${BinaryPath}/jmeint --options=${options1} &
 build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C${i}_2000K  configs/example/se.py ${!configvar} -c ${BasePath}${BinaryPath}/jmeint --options=${options2} &
done

#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C1_1000K  configs/example/se.py  $Config1 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C2_1000K  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data  " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C3_1000K  configs/example/se.py  $Config3 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C4_1000K  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data  " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C5_1000K  configs/example/se.py  $Config5 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C6_1000K  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data  " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C7_1000K  configs/example/se.py  $Config7 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C8_1000K  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data  " &
#wait to start the next batch

#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C1_2000K  configs/example/se.py  $Config1 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C2_2000K  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data  " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C3_2000K  configs/example/se.py  $Config3 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C4_2000K  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data  " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C5_2000K  configs/example/se.py  $Config5 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C6_2000K  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data  " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C7_2000K  configs/example/se.py  $Config7 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}jmeint/${OutPrefix}C8_2000K  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/jmeint --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data  " &

