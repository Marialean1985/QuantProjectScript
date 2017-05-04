#!/usr/bin/expect
 
spawn ssh ml2au@falcon2.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 
nohup source  fft.sh > fftNohup.out #no dollar sign to wait


spawn ssh ml2au@falcon2.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 

nohup source  sobel.sh > sobelNohup.out &

 
spawn ssh ml2au@falcon3.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 

nohup source blackscholes.sh > blackNohup.out &
 
spawn ssh ml2au@falcon4.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 
nohup source inversek2j.sh > inversenOhup.out  &


source jmeint.sh 
spawn ssh ml2au@falcon5.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 
nohup source jmeint.sh >jmenit.nohup.out &

source jpeg.sh
spawn ssh ml2au@falcon6.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 
nohup source jpeg.sh > jpegNohup.out  &


  
spawn ssh ml2au@falcon7.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 
nohup source  kmeans.sh >KmeansNohup.out &

