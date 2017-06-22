#
PoastFixNohupPath=latecy10
scriptdir=/if22/ml2au/scriptsForProjects/RangeSingle
:<< END
echo "shift0"
ssh ml2au@shiftlab0.cs.virginia.edu cd ${scriptdir}; nohup bash  fft.sh >/if22/ml2au/NoHupToDelete/latecy10fftonshift0.txt
END
echo "shift1"
ssh ml2au@shiftlab1.cs.virginia.edu bash /if22/ml2au/scriptsForProjects/RangeSingle/sshblackscholes.sh ${scriptdir} ${PoastFixNohupPath}
echo "end of shift1"
:<< END
echo "shift2"

ssh ml2au@shiftlab2.cs.virginia.edu cd ${scriptdir} ; nohup bash  convolutionAlexnet.sh  >/if22/ml2au/NoHupToDelete/latecy10convolutionAlexnetonshift2.txt
echo "shift3"
ssh ml2au@shiftlab3.cs.virginia.edu cd ${scriptdir}; nohup bash convolutionLastLayerVGG.sh >/if22/ml2au/NoHupToDelete/latecy10convolutionLastLayerVGGonshift3.txt
echo "shift4"
ssh ml2au@shiftlab4.cs.virginia.edu cd ${scriptdir};  nohup bash  convolutionMatrixDotMultiply.sh >/if22/ml2au/NoHuToDelete/latecy10convolutionMatrixDotMultiplyonshift4.txt
echo "falcon1"
ssh ml2au@falcon1.cs.virginia.edu cd ${scriptdir}; nohup bash  convolution.sh >/if22/ml2au/NoHupToDelete/latecy10convolutiononfalcon1.txt
echo "falcon2"
ssh ml2au@falcon2.cs.virginia.edu cd ${scriptdir};  nohup bash  convolutionSobel.sh >/if22/ml2au/NoHupToDelete/latecy10convolutionSobelonfalcon2.txt
echo "falcon3"
ssh ml2au@falcon3.cs.virginia.edu cd ${scriptdir}; nohup bash  inversek2j.sh  >/if22/ml2au/NoHupToDelete/latecy10inversek2jonfalcon3.txt
echo "falcon4"
ssh ml2au@falcon4.cs.virginia.edu  cd ${scriptdir}; nohup bash  jmeint.sh >/if22/ml2au/NoHuToDelete/latecy10jmeintOnfalcon4.txt
END
