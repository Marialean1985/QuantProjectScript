source Common.sh
option1="262144 " 
for i in {1..8}
do
 echo $i
 configvar="Config$i"
 echo "${!configvar}"
 build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C${i} configs/example/se.py  ${!configvar} -c ${BasePath}${BinaryPath}/fft --options=${option1} &
done


#build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C1 configs/example/se.py  $Config1 -c ${BasePath}${BinaryPath}/fft --options=${option1} &
#build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C2  configs/example/se.py $Config2  -c ${BasePath}${BinaryPath}/fft --options=${option1} &
#build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C3 configs/example/se.py  $Config3 -c ${BasePath}${BinaryPath}/fft --options=${option1}&
#build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C4  configs/example/se.py $Config4  -c ${BasePath}${BinaryPath}/fft --options=${option1}&
#build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C5 configs/example/se.py  $Config5 -c ${BasePath}${BinaryPath}/fft --options=${option1} &
#build/X86/gem5.opt  -d ${BasePath}fft/${OutPrefix}C6  configs/example/se.py $Config6  -c ${BasePath}${BinaryPath}/fft --options=${option1} &

