
source Common.sh
applicationName=jpeg
toptionVar="/if22/ml2au/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb" 
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
	configNumberStr=""
        if [ 9 -gt $i ]
		then
			configNumberStr+="${configNumberStr}"0
		
	fi
	configNumberStr+="${i}"
	echo $configNumberStr
	build/X86/gem5.opt  -d ${OutputBasePath}/${applicationName}/${OutPrefix}C${configNumberStr} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}" &
		while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
done

: <<'END'
source Common.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/jpeg${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/jpeg
mkdir -p ${tRangeFilePath}

toptionVar="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb" 
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
	build/X86/gem5.opt  -d ${OutputBasePath}/jpeg/${OutPrefix}C${i} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${!configvar} -c ${BinaryVar} --options="${optionVar}" &
done
END
: <<'END'
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
END
