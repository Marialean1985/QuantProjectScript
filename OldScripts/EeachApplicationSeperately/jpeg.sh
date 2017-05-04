source Common.sh
options1t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb" 


options1=options1t


BinaryVart=${BinaryBasePath}${BinaryPath}/jpeg 
BinaryVar=${BinaryVart}

for (( c=1; c<$numCpu; c++ ))
do  
   options1+=";${options1t}"
   BinaryVar+=";${BinaryVart}"
done


for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${OutputBasePath}jpeg/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BinaryVar} --options=${options1} &
 
done
