source Common.sh


build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C1  configs/example/se.py $Config1 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C2  configs/example/se.py $Config2 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C3  configs/example/se.py $Config3 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C4  configs/example/se.py $Config4 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C5  configs/example/se.py $Config5 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C6  configs/example/se.py $Config6 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C7  configs/example/se.py $Config7 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
build/X86/gem5.opt  -d ${BasePath}sobel/${OutPrefix}C8  configs/example/se.py $Config8 -c ${BasePath}${BinaryPath}/sobel --options="/bigtemp/ml2au/AxBench/AxBenchCPU/axbench/applications/sobel/test.data/input/4.rgb " &
