source Common.sh
applicationName=convolution
toptionVar="224 224 3 3 1 1 2 2 512 512"
#source /bigtemp/ml2au/scriptsForProjects/RangeSingle/PstCommon.sh
tBinaryVar=${BinaryBasePath}/${BinaryPath}/${applicationName}${BinaryNamePostfix}
tRangeFilePath=${RangeFilePath}/${applicationName}Vgg
rm -rf ${tRangeFilePath}
mkdir -p ${tRangeFilePath}
#for (( i=2; i<=$numOfConfig; i=i+2 )) 
for (( i=$StartConfig; i<=$numOfConfig; i=i+$StepConfig  ))

	do
	echo configuration number $i	
	RangeFilePathForConfig=${tRangeFilePath}/${i}.txt
	
	optionVar="${toptionVar} "
	optionVar+=" ${RangeFilePathForConfig}_0"
	#variableSizeVar=" 32 ${i}"
	#variableSizeVar=" 32 32"
	optionVar+="${variableSizeVar}"
	BinaryVar=${tBinaryVar}
	numCpu=NumberOFCoresArray[$i]
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
	configNumberStr=""
        if [ 10 -gt $i ]
		then
			configNumberStr+="${configNumberStr}"0
		
	fi
	configNumberStr+="${i}"
	echo $configNumberStr
	build/X86/gem5.opt  -d ${OutputBasePath}/${applicationName}Vgg/${OutPrefix}C${configNumberStr} configs/example/se.py    --rangeFileName=${RangeFilePathForConfig} ${Configs[$i]} -c ${BinaryVar} --options="${optionVar}"  &
	
	while [ ! -f ${RangeFilePathForConfig}_0 ]
	do
		sleep 2
	done
done
