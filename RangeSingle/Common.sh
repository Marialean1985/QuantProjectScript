cd ~/gem5/UndertestBetaGemv1

#OutPrefix="Short"
echo $HOSTNAME
echo ${OutPrefix}
#numCpu=4
#numOfConfig=32
#numOfConfig=10
numOfConfig=10
BinaryPath="binRangeFileeffect"
BinaryBasePath="/zf14/ml2au/AxBenchResults/bin"

#OutputBasePath="/bigtemp/ml2au/AxBenchResults/L2_5Cycle_8CPU"
#OutputBasePath="/bigtemp/ml2au/AxBenchResults/L2_5Cycle_4CPU"
#OutputBasePath="/bigtemp/ml2au/AxBenchResults/L2_5Cycle_8CPU_16MBL3"
#OutputBasePath="/bigtemp/ml2au/AxBenchResults/L1_1Cycle_8CPU_32MBL3"
OutputBasePath="/bigtemp/ml2au/AxBenchResults/L1_1Cycle_16CPU_32MBL3"
#OutputBasePath="/bigtemp/ml2au/AxBenchResults/L2_5Cycle_16CPU_32MBL3"
#OutputBasePath="/bigtemp/ml2au/AxBenchResults/L2_5Cycle_16CPU"
#OutputBasePath="/bigtemp/ml2au/AxBenchResults/SenseOnNumOfCores"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L2_5Cycle_4CPU"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L2_5Cycle_8CPU"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L2_5Cycle_8CPU_16MBL3"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L2_5Cycle_16CPU_32ML3"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L1_1Cycle_8CPU_32ML3"
RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L1_1Cycle_16CPU_32ML3"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/L2_5Cycle_16CPU"
#RangeFilePath="/bigtemp/ml2au/NoHupToDelete/SenseOnNumOfCores"
BinaryNamePostfix="Range"
StepConfig=1
StartConfig=1

mkdir -p ${RangeFilePath}
mkdir -p ${OutputBasePath}
OutPrefix="RangMultiple"
#TODO: change it back to 4GB
#memSizeVar="4GB"
#--ConversionLocation=L2  --ConversionDelay=10
#--ConversionLocation=L1_D
#--L1Prefetcher
memSizeVar="8GB"
#--mem-channels=2
#:<<'END'
CoreArr=(4 8 16 32 )
conversionDelayArray=( 1 3 5 15 20 50 100 200 500 )
#NumberOFCoresArray=( "${CoreArr[@]}"  "${CoreArr[@]}" )
nmbBits=6
counter=1
Convdelay=5
:<<'END'
for CoreNumber in "${CoreArr[@]}"
        do
        reducedVarSize1reducedVarSize1ar="S{nmbBits}"
	numberOFCoresArray[$counter]=$CoreNumber
	numCpu=$CoreNumber
	echo "counter is " $counter
        #Configs[$nmbBits]="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64 --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"     
        #Configs[$nmbBits]=" --mem-type=LPDDR3_1600_x32 --caches --l2cache --l1d_size=32kB --l2_size=256kB  --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"       
        Configs[$counter]=" --mem-type=DDR3_1600_x64 --ConversionLocation=L2 --mem-channels=2   --ConversionDelay=${Convdelay}  --caches --l2cache --l1d_size=32kB --l2_size=256kB  --l3cache  --l3_size=8MB --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"
        echo "${Configs[$counter]}"
	echo "${numberOFCoresArray[$counter]}"
	((counter++))
	numberOFCoresArray[$counter]=$CoreNumber
        Configs[$counter]=" --mem-type=DDR3_1600_x64 --ConversionLocation=L2 --mem-channels=2   --ConversionDelay=${Convdelay}  --caches --l2cache --l1d_size=32kB --l2_size=256kB  --l3cache  --l3_size=8MB --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=32  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
        echo "${Configs[$counter]}"
	echo "${numberOFCoresArray[$counter]}"
        ((counter++))
        echo "counter is " $counter
done
 ((counter--))
numOfConfig=$counter
echo $numOfConfig
END
:<<'END'
numCpu=4
for Convdelay in "${conversionDelayArray[@]}"
	do
	
	reducedVarSize1reducedVarSize1ar="S{nmbBits}"
	#Configs[$nmbBits]="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64 --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"	
	#Configs[$nmbBits]=" --mem-type=LPDDR3_1600_x32 --caches --l2cache --l1d_size=32kB --l2_size=256kB  --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"	
	Configs[$counter]=" --mem-type=DDR3_1600_x64 --ConversionLocation=L2 --mem-channels=2   --ConversionDelay=${Convdelay}  --caches --l2cache --l1d_size=32kB --l2_size=256kB  --l3cache  --l3_size=8MB --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"		
	NumberOFCoresArray[$counter]=$numCpu
	echo "counter is " $counter
	echo "${Configs[$counter]}"
	((counter++))
	echo "counter is " $counter
done	
	NumberOFCoresArray[$counter]=$numCpu
	Configs[$counter]=" --mem-type=DDR3_1600_x64 --ConversionLocation=L2 --mem-channels=2   --ConversionDelay=0  --caches --l2cache --l1d_size=32kB --l2_size=256kB  --l3cache  --l3_size=8MB --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=32 --mem-size=${memSizeVar} --num-cpus=${numCpu}"		
	echo "${Configs[$counter]}"
END
#:<<'END'
numOfConfig=32
StepConfig=2
StartConfig=2
numCpu=16
#runNum=1
L3Size=32MB
#L3Delay=66
L3Delay=58
#L3Delay=43
#L3Delay=36
Convdelay=1
AddMaxInstr="--maxinsts=500000000"
for nmbBits in {1..32}
	do
	reducedVarSize1reducedVarSize1ar="S{nmbBits}"
	NumberOFCoresArray[$nmbBits]=$numCpu
	#Configs[$nmbBits]="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64 --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"	
	#Configs[$nmbBits]=" --mem-type=LPDDR3_1600_x32 --caches --l2cache --l1d_size=32kB --l2_size=256kB  --maxinsts=500000000 --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"	
	Configs[$nmbBits]=" --mem-type=DDR3_1600_x64 --ConversionLocation=L1  --mem-channels=2   --ConversionDelay=${Convdelay}  --caches --l2cache --l1d_size=32kB --l2_size=256kB  --l3cache  --l3_size=${L3Size} --L3Latency=${L3Delay}  ${AddMaxInstr} --cpu-type=detailed   --warmup-insts=100000  --reducedVarSize1=${nmbBits} --mem-size=${memSizeVar} --num-cpus=${numCpu}"		
	echo "${Configs[$nmbBits]}"
done	
#END
