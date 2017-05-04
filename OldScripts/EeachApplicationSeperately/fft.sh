source Common.sh
fftBinaryVart=${BinaryBasePath}${BinaryPath}/fft
fftoptiont="262144" 
fftoption=${fftoptiont}
fftBinaryVar=${fftBinaryVart}

for (( c=1; c<$numCpu; c++ ))
do  
   fftoption+=";${fftoptiont}"
   fftBinaryVar+=";${fftBinaryVart}"
done

 
echo $fftoption
echo $fftBinaryVar

for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${OutputBasePath}fft/${OutPrefix}C${i} configs/example/se.py  ${!configvar} -c ${fftBinaryVar} --options="${fftoption}" &
done




