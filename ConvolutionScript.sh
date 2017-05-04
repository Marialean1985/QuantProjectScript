#!/bin/bash
#cd ~/gem5/BetaGem/
cd ~/gem5/gem5
pwd
BasePath="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/"
ConvPath="${BasePath}convolution/src/"
Config1="--cpu-type=detailed  --caches --l2cache  --l1d_size=32kB --l2_size=512kB   --cacheline_size=64 --mem-size=8GB"
Config2="--cpu-type=detailed --caches --l2cache --l1d_size=32kB --l2_size=1MB --cacheline_size=64  --mem-size=8GB"

#Config2="--cpu-type=detailed --caches --l2cache --l3cache --l1d_size=32kB --l2_size=1MB --l3_size=2MB   --cacheline_size=64  --mem-size=4GB"
# imageX, imageY, filterX,filterY, paddingX, paddingY, tirudeX, strideY, number of channels, number of filters
layer1 ="224 224 11 11 2 2 2 2 3 96"
layer2 ="55 55 "
layer3 ="27 27 "
layer4=" 27 27 "
layer5="13 13"
layer6="13 13"
layer7="13 13"

echo $ConvPath
echo $Config1
echo AlexNet


build/X86/gem5.opt  -d ${ConvPath}32kB512kB1MB64BLOCKSIZE  configs/example/se.py $Config1 -c ${ConvPath}convolution --options="224 224 11 11 0 0 2 2 100 100" &


echo config 2 =  $Config2
build/X86/gem5.opt  -d ${ConvPath}32kB1MB2MB64BLOCKSIZE  configs/example/se.py $Config2 -c ${ConvPath}convolution --options="224 224 11 11 0 0 2 2 100 100" &
