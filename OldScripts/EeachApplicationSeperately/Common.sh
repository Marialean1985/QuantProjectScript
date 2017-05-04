cd ~/gem5/gem5
#OutPrefix="Short"
/net/bigtemp/ml2au/AxBenchResults/Multiple16
echo ${OutPrefix}
numCpu=8

BinaryPath="binNoOutIO"
BinaryBasePath="/bigtemp/ml2au/AxBenchResults/"

OutputBasePath="/bigtemp/ml2au/AxBenchResults/Multiple16/"
OutPrefix="NoOutIO"
#TODO: change it back to 4GB
memSizeVar="4GB"
#memSizeVar="8GB"

Config1="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=512kB  --cacheline_size=64 --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config2="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=1MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config3="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=2MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config4="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=4MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config5="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=8MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config6="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=16MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config7="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=32MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"
Config8="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=64MB  --cacheline_size=64  --mem-size=${memSizeVar} --num-cpus=${numCpu}"



