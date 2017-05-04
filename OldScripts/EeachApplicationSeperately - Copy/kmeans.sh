source Common.sh
options1="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb" 


for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BasePath}${BinaryPath}/kmeans --options=${options1} &
 
done

#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C1  configs/example/se.py $Config1 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C2  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C3  configs/example/se.py $Config3 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C4  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C5  configs/example/se.py $Config5 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C6  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C7  configs/example/se.py $Config7 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &
#build/X86/gem5.opt  -d ${BasePath}kmeans/${OutPrefix}C8  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/kmeans --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb " &

