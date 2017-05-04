source Common.sh
applicationName=jmeint
toptionVar="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data"
#source /bigtemp/ml2au/scriptsForProjects/RangeSingle/PstCommon.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/${applicationName}${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/${applicationName}
rm -rf ${tRangeFilePath}
mkdir -p ${tRangeFilePath}
#for (( i=2; i<=$numOfConfig; i=i+2 )) 
for (( i=2; i<=32; i=i+2 ))
	do
	echo configuration number $i	
	RangeFilePathForConfig=${tRangeFilePath}/${i}.txt
	
	optionVar="${toptionVar} "
	optionVar+=" ${RangeFilePathForConfig}_0"
	#variableSizeVar=" 32 ${i} 1"
	variableSizeVar=" 32 32 1"
	optionVar+="${variableSizeVar}"
	BinaryVar=${tBinaryVar}
	for (( c=1; c<$numCpu; c++ ))
		do  
		optionVar+=";${toptionVar} "
		optionVar+="${RangeFilePathForConfig}_${c}"
		optionVar+=${variableSizeVar}
		BinaryVar+=";${tBinaryVar}"
	done
	#configvar="Config$i"
	#echo "${!configvar}"
	echo  optionVar  is $optionVar
	echo binaryVar is $BinaryVar
	build/X86/gem5.opt  -d ${OutputBasePath}/${applicationName}/${OutPrefix}C${i} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}"  &
	
	while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
done



: <<'END'
source Common.sh
applicationName=jmeint
toptionVar="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data"
#source /bigtemp/ml2au/scriptsForProjects/RangeSingle/PstCommon.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/${applicationName}${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/${applicationName}
mkdir -p ${tRangeFilePath}
for (( i=1; i<$numOfConfig; i++ )) 
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
#	configvar="Config$i"
#	echo "${!configvar}"
	echo  optionVar  is $optionVar
	echo binaryVar is $BinaryVar
	build/X86/gem5.opt  -d ${OutputBasePath}/${applicationName}/${OutPrefix}C${i} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}" &
		while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
done
END
: <<'END'
source Common.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/jmeint${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/jmeint
mkdir -p ${tRangeFilePath}

toptionVar="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data"
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
	build/X86/gem5.opt  -d ${OutputBasePath}/jmeint/${OutPrefix}C${i} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${!configvar} -c ${BinaryVar} --options="${optionVar}" &
done
END
: <<'END'
source Common.sh
options1t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data" 
options2t="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_2000K.data"


options1=options1t
options2=options2t

BinaryVart=${BinaryBasePath}${BinaryPath}/jmeint
BinaryVar=${BinaryVart}

for (( c=1; c<$numCpu; c++ ))
do  
   options1+=";${options1t}"
   options2+=";${options1t}"
   BinaryVar+=";${BinaryVart}"
done


for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${OutputBasePath}jmeint/${OutPrefix}C${i}_1000K  configs/example/se.py ${!configvar} -c ${BinaryVar} --options=${options1} &
 build/X86/gem5.opt  -d ${OutputBasePath}jmeint/${OutPrefix}C${i}_2000K  configs/example/se.py ${!configvar} -c ${BinaryVar} --options=${options2} &
done
END
