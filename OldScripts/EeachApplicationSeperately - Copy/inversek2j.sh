source Common.sh
options1="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data" 
options2="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data"

for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 
 build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BasePath}${BinaryPath}/inversek2j --options=${options1} &
 build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C${i}_2000K  configs/example/se.py ${!configvar} -c ${BasePath}${BinaryPath}/inversek2j --options=${options2} &
done

#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C1_1000K  configs/example/se.py $Config1 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C2_1000K  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data" &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C3_1000K  configs/example/se.py $Config3 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C4_1000K  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data" &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C5_1000K  configs/example/se.py $Config5 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C6_1000K  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data" &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C7_1000K  configs/example/se.py $Config7 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C8_1000K  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data" &

#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C1_2000K  configs/example/se.py $Config1 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C2_2000K  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data" &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C3_2000K  configs/example/se.py $Config3 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C4_2000K  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data" &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C5_2000K  configs/example/se.py $Config5 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C6_2000K  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data" &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C7_2000K  configs/example/se.py $Config7 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data " &
#build/X86/gem5.opt  -d ${BasePath}inversek2j/${OutPrefix}C8_2000K  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/inversek2j --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data" &

