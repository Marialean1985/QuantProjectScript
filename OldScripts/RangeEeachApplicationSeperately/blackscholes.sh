source Common.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/blackscholes${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/blackscholes
mkdir -p ${tRangeFilePath}

toptionVar="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/blackscholes/test.data/input/blackscholesTest_400K.data"
for i in {1..23}
	do
	echo configuration number $i	
	RangeFilePathForConfig=${tRangeFilePath}/${i}.txt
	
	optionVar="${toptionVar} "${RangeFilePathForConfig}_0
	BinaryVar=${tBinaryVar}
	for (( c=1; c<$numCpu; c++ ))
		do  
		optionVar+=";${toptionVar} "${RangeFilePathForConfig}_${c}
		BinaryVar+=";${tBinaryVar}"
	done
	configvar="Config$i"
	echo "${!configvar}"
	echo  optionVar  is $optionVar
	echo binaryVar is $BinaryVar
	build/X86/gem5.opt  -d ${OutputBasePath}/blackscholes/${OutPrefix}C${i} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${!configvar} -c ${BinaryVar} --options="${optionVar}" &
done




: <<'END'

source Common.sh


options1t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/blackscholes/test.data/input/blackscholesTest_200K.data" 
options2t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/blackscholes/test.data/input/blackscholesTest_400K.data"
options1=options1t
options2=options2t
BinaryVart=${BinaryBasePath}${BinaryPath}/blackscholes
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
 build/X86/gem5.opt  -d ${OutputBasePath}blackscholes/${OutPrefix}C${i}_200  configs/example/se.py  ${!configvar} -c ${BinaryVar} --options=${options1} &
 build/X86/gem5.opt  -d ${OutputBasePath}blackscholes/${OutPrefix}C${i}_400  configs/example/se.py  ${!configvar} -c ${BinaryVar} --options=${options2} &
done

END
