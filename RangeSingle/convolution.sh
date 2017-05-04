source Common.sh
applicationName=convolution
toptionVar="224 224 11 11 0 0 2 2 100 100"
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
	#variableSizeVar=" 32 ${i}"
	#variableSizeVar=" 32 32"
	optionVar+="${variableSizeVar}"
	BinaryVar=${tBinaryVar}
	for (( c=1; c<$numCpu; c++ ))
		do  
		optionVar+=";${toptionVar} "
		optionVar+="${RangeFilePathForConfig}_${c}"
		#optionVar+=${variableSizeVar}
		BinaryVar+=";${tBinaryVar}"
	done
	#configvar="Config$i"
	#echo "${!configvar}"
	echo  optionVar  is $optionVar
	echo binaryVar is $BinaryVar
	build/X86/gem5.opt  -d ${OutputBasePath}/${applicationName}/${OutPrefix}C${i} configs/example/se.py    --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}"  &
	
	while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
done
