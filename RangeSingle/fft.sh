source Common.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/fft${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/fft
rm -rf ${tRangeFilePath}
mkdir -p ${tRangeFilePath}

toptionVar="262144" 
for (( i=2; i<=$numOfConfig; i=i+2 )) 
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
	build/X86/gem5.opt  -d ${OutputBasePath}/fft/${OutPrefix}C${i} configs/example/se.py   --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}" &
	
	while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
	
done




