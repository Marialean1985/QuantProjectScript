#!/usr/bin/expect
 
spawn ssh ml2au@falcon2.cs.virginia.edu
expect "Mlmarmar"
send "Mlmarmar"
interact
cd /if22/ml2au/scriptsForProjects/EeachApplicationSeperately 
nohup source  fft.sh > fftNohup.out #no dollar sign to wait

