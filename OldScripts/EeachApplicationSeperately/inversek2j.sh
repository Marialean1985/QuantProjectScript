source Common.sh
options1t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.data" 
options2t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_2000K.data"

options1=options1t
options2=options2t

BinaryVart=${BinaryBasePath}${BinaryPath}/inversek2j
BinaryVar=${BinaryVart}

for (( c=1; c<$numCpu; c++ ))
do  
   options1+=";${options1t}"
   options2+=";${options1t}"
   BinaryVar+=";${BinaryVart}"
done


 
echo $options1
echo $options2
echo $BinaryVar


for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 
 build/X86/gem5.opt  -d ${OutputBasePath}inversek2j/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BinaryVar} --options=${options1} &
 build/X86/gem5.opt  -d ${OutputBasePath}inversek2j/${OutPrefix}C${i}_2000K  configs/example/se.py ${!configvar} -c ${BinaryVar} --options=${options2} &
done

