cd ~/gem5/BetaGem
#OutPrefix="Short"

echo ${OutPrefix}
numCpu=8

BinaryPath="binRangeOut"
BinaryBasePath="/bigtemp/ml2au/AxBenchResults"

OutputBasePath="/bigtemp/ml2au/AxBenchResults/RangeMultiple16"
RangeFilePath="/bigtemp/ml2au/AxBenchResults/Rangefiles"
BinaryNamePostfix="Range"

mkdir -p ${RangeFilePath}
mkdir -p ${OutputBasePath}
OutPrefix="RangMultiple"
#TODO: change it back to 4GB
memSizeVar="4GB"
#memSizeVar="8GB"




Config1="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64 --ratio=4 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config2="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache  --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64 --ratio=3.55 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config3="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=3.2 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config4="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64 --ratio=2.9  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config5="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=2.66 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config6="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=2.46 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config7="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=2.28 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config8="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=2.13 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config9="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=2 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config10="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.77 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config11="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.68 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config12="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.6 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config13="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.52 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config14="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.45 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config15="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.39 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config16="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.33 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config17="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.28 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config18="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.18 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config19="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.14 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config20="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.10 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config21="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.06 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config22="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1.03 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config23="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=256kB --l3_size=2MB --cacheline_size=64  --ratio=1 --mem-size=${memSizeVar} --num-cpus=${numCpu}"


#Config1="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache  --l1d_size=32kB --l2_size=512kB --l3_size=1MB --cacheline_size=64 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config2="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=1MB --l3_size=2MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config3="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=2MB  --l3_size=4MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config4="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=4MB --l3_size=8MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config5="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=8MB  --l3_size=16MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config6="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=16MB  --l3_size=32MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config7="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=32MB  --l3_size=64MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
#Config8="--cpu-type=detailed --mem-type=DDR3_1600_x64 --caches --l2cache --l3cache --l1d_size=32kB --l2_size=64MB  --l3_size=128MB --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"


#choose from --mem-type='GDDR5_4000_x64', 'HMC_2500_x32', 'DRAMCtrl', 'HBM_1000_4H_x128', 'LPDDR2_S4_1066_x32', 'LPDDR3_1600_x32', 'DDR3_1600_x64', 'DDR3_2133_x64', 'HBM_1000_4H_x64', 'SimpleMemory', 'DDR4_2400_x64', 'WideIO_200_x128')
