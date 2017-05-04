#!/bin/bash
SrcPath=/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications
binPath="../binNoOutIO"
postfix=""
cd ${SrcPath}
pwd
compileFlag="-static -std=c++11"

#g++ ${compileFlag} fft/src${postfix}/complex.cpp fft/src${postfix}/fft.cpp fft/src${postfix}/fourier.cpp -o ${binPath}/fft
g++ ${compileFlag} blackscholes/src${postfix}/blackscholes.c -o ${binPath}/blackscholes 
g++ ${compileFlag} jpeg/src${postfix}/encoder.c jpeg/src${postfix}/dct.c jpeg/src${postfix}/huffman.c jpeg/src${postfix}/jpeg.c  jpeg/src${postfix}/marker.c jpeg/src${postfix}/quant.c jpeg/src${postfix}/rgbimage.c -o ${binPath}/jpeg
g++ ${compileFlag} kmeans/src${postfix}/kmeansShort.c kmeans/src${postfix}/distance.c kmeans/src${postfix}/rgbimage.c kmeans/src${postfix}/segmentation.c -o ${binPath}/kmeans
g++ ${compileFlag} inversek2j/src${postfix}/inversek2j.cpp  inversek2j/src${postfix}/kinematics.cpp -o ${binPath}/inversek2j  
g++ ${compileFlag} jmeint/src${postfix}/jmeint.cpp jmeint/src${postfix}/tritri.cpp -o ${binPath}/jmeint 
#g++ ${compileFlag}  sobel/src${postfix}/convolution.cpp sobel/src${postfix}/rgb_image.cpp sobel/src${postfix}/sobel.cpp -Wall  -lboost_regex -lpthread -o ${binPath}/sobel
#TODO:fix later for sobel
cd /bigtemp/ml2au/AxBench/accept-apps/sobel
g++ ${compileFlag}  sobel/src${postfix}/convolution.cpp sobel/src${postfix}/rgb_image.cpp sobel/src${postfix}/sobel.cpp -Wall  -lboost_regex -lpthread -o /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/sobel
#end of temroray sobel
cp -r /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/binNoOutIO /bigtemp/ml2au/AxBenchResults

date; "./${binPath}/fft" 262144 ;date 
date; "./${binPath}/blackscholes" /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/blackscholes/test.data/input/blackscholesTest_200K.data ;date 
date; "./${binPath}/jpeg" /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jpeg/test.data/input/5.rgb ;date 
date; "./${binPath}/kmeans" /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/kmeans/test.data/input/4.rgb ;date 
date; "./${binPath}/inversek2j" /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/inversek2j/test.data/input/theta_1000K.datas ;date 
date; "./${binPath}/jmeint" /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/jmeint/test.data/input/jmeint_1000K.data ;date 
date; "./${binPath}/sobel" /bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb ;date 




#g++ ${compileFlag} complex.cpp fft.cpp fourier.cpp -o fftAx
#g++ ${compileFlag} blackscholes/src${postfix}.c/blackscholes${postfix}.c -o bin${postfix}/blackscholes 
#g++ ${compileFlag} encoder.c dct.c huffman.c jpegShort.c  marker.c quant.c rgbimage.c -o ../../srcShort/jpegShort
#g++ ${compileFlag} kmeansShort.c distance.c rgbimage.c segmentation.c -o ../../srcShort/kmeansShort



