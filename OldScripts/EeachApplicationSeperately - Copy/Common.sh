cd ~/gem5/gem5
OutPrefix="Short"
echo ${OutPrefix}

Config1="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=512kB  --cacheline_size=64 --mem-size=4GB"
Config2="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=1MB  --cacheline_size=64  --mem-size=4GB"
Config3="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=2MB  --cacheline_size=64  --mem-size=4GB"
Config4="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=4MB  --cacheline_size=64  --mem-size=4GB"
Config5="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=8MB  --cacheline_size=64  --mem-size=4GB"
Config6="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=16MB  --cacheline_size=64  --mem-size=4GB"
Config7="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=32MB  --cacheline_size=64  --mem-size=4GB"
Config8="--cpu-type=detailed --caches --l2cache  --l1d_size=32kB --l2_size=64MB  --cacheline_size=64  --mem-size=4GB"
BinaryPath="srcShort"

BasePath="/bigtemp/ml2au/AxBenchResults/"
