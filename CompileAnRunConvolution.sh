
ConvPath="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/convolution/src"
cd ${ConvPath}
g++ -std=c++11 convolution.cpp -o convolution 
date;./convolution 224 224 11 11 0 0 2 2 100 100;date