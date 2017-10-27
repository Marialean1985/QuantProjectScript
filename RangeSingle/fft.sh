source Common.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/fft${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/fft
rm -rf ${tRangeFilePath}
mkdir -p ${tRangeFilePath}

toptionVar="262144" 
#toptionVar="2048" 
for (( i=$StartConfig; i<=$numOfConfig; i=i+$StepConfig )) 
	do
	echo configuration number $i	
	RangeFilePathForConfig=${tRangeFilePath}/${i}.txt
	
	optionVar="${toptionVar} "${RangeFilePathForConfig}_0
	BinaryVar=${tBinaryVar}
	numCpu=NumberOFCoresArray[$i]
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
        if [ 10 -gt $i ]
		then
			configNumberStr+="${configNumberStr}"0
		
	fi
	configNumberStr+="${i}"
	echo $configNumberStr
	build/X86/gem5.opt  -d ${OutputBasePath}/fft${runNum}/${OutPrefix}C${configNumberStr} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}" &
	
	while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
	
done




