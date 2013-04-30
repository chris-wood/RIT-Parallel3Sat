clear 
echo "Testing for all versions of the ThreeSat program."
echo "  (variable literals)                            "
echo "-------------------------------------------------"
echo "Timings for ThreeSatSeq, proc = 0"
java -Xmx2000m ThreeSatSeq 23 1000 123 > outTSSeq1-1
java -Xmx2000m ThreeSatSeq 23 1000 123 > outTSSeq1-2
java -Xmx2000m ThreeSatSeq 23 1000 123 > outTSSeq1-3
java -Xmx2000m ThreeSatSeq 24 1000 321 > outTSSeq2-1
java -Xmx2000m ThreeSatSeq 24 1000 321 > outTSSeq2-2
java -Xmx2000m ThreeSatSeq 24 1000 321 > outTSSeq2-3
java -Xmx2000m ThreeSatSeq 25 1000 456 > outTSSeq3-1
java -Xmx2000m ThreeSatSeq 25 1000 456 > outTSSeq3-2
java -Xmx2000m ThreeSatSeq 25 1000 456 > outTSSeq3-3
java -Xmx2000m ThreeSatSeq 26 1000 654 > outTSSeq4-1
java -Xmx2000m ThreeSatSeq 26 1000 654 > outTSSeq4-2
java -Xmx2000m ThreeSatSeq 26 1000 654 > outTSSeq4-3
java -Xmx2000m ThreeSatSeq 27 1000 789 > outTSSeq5-1
java -Xmx2000m ThreeSatSeq 27 1000 789 > outTSSeq5-2
java -Xmx2000m ThreeSatSeq 27 1000 789 > outTSSeq5-3

echo "Timings for ThreeSatSmp, proc = 1"
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 23 1000 123 > outTSSmp11-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 23 1000 123 > outTSSmp11-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 23 1000 123 > outTSSmp11-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 24 1000 312 > outTSSmp12-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 24 1000 312 > outTSSmp12-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 24 1000 312 > outTSSmp12-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 1000 456 > outTSSmp13-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 1000 456 > outTSSmp13-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 1000 456 > outTSSmp13-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 26 1000 654 > outTSSmp14-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 26 1000 654 > outTSSmp14-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 26 1000 654 > outTSSmp14-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 27 1000 789 > outTSSmp15-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 27 1000 789 > outTSSmp15-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 27 1000 789 > outTSSmp15-3

echo "Timings for ThreeSatSmp, proc = 2"
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 23 1000 123 > outTSSmp21-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 23 1000 123 > outTSSmp21-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 23 1000 123 > outTSSmp21-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 24 1000 312 > outTSSmp22-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 24 1000 312 > outTSSmp22-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 24 1000 312 > outTSSmp22-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 1000 456 > outTSSmp23-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 1000 456 > outTSSmp23-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 1000 456 > outTSSmp23-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 26 1000 654 > outTSSmp24-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 26 1000 654 > outTSSmp24-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 26 1000 654 > outTSSmp24-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 27 1000 789 > outTSSmp25-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 27 1000 789 > outTSSmp25-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 27 1000 789 > outTSSmp25-3

echo "Timings for ThreeSatSmp, proc = 3"
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 23 1000 123 > outTSSmp31-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 23 1000 123 > outTSSmp31-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 23 1000 123 > outTSSmp31-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 24 1000 321 > outTSSmp32-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 24 1000 321 > outTSSmp32-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 24 1000 321 > outTSSmp32-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 1000 456 > outTSSmp33-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 1000 456 > outTSSmp33-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 1000 456 > outTSSmp33-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 26 1000 654 > outTSSmp34-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 26 1000 654 > outTSSmp34-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 26 1000 654 > outTSSmp34-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 27 1000 789 > outTSSmp35-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 27 1000 789 > outTSSmp35-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 27 1000 789 > outTSSmp35-3

echo "Timings for ThreeSatSmp, proc = 4"
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 23 1000 123 > outTSSmp41-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 23 1000 123 > outTSSmp41-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 23 1000 123 > outTSSmp41-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 24 1000 321 > outTSSmp42-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 24 1000 321 > outTSSmp42-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 24 1000 321 > outTSSmp42-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 1000 456 > outTSSmp43-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 1000 456 > outTSSmp43-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 1000 456 > outTSSmp43-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 26 1000 654 > outTSSmp44-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 26 1000 654 > outTSSmp44-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 26 1000 654 > outTSSmp44-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 27 1000 789 > outTSSmp45-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 27 1000 789 > outTSSmp45-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 27 1000 789 > outTSSmp45-3

echo "Timings for ThreeSatSmp, proc = 8"
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 23 1000 123 > outTSSmp81-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 23 1000 123 > outTSSmp81-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 23 1000 123 > outTSSmp81-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 24 1000 321 > outTSSmp82-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 24 1000 321 > outTSSmp82-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 24 1000 321 > outTSSmp82-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 1000 456 > outTSSmp83-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 1000 456 > outTSSmp83-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 1000 456 > outTSSmp83-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 26 1000 654 > outTSSmp84-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 26 1000 654 > outTSSmp84-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 26 1000 654 > outTSSmp84-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 27 1000 789 > outTSSmp85-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 27 1000 789 > outTSSmp85-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 27 1000 789 > outTSSmp85-3

echo "Timings for ThreeSatExhaustiveSeq, proc = 0"
java -Xmx2000m ThreeSatExhaustiveSeq 23 1000 123 > outTSESeq1-1
java -Xmx2000m ThreeSatExhaustiveSeq 23 1000 123 > outTSESeq1-2
java -Xmx2000m ThreeSatExhaustiveSeq 23 1000 123 > outTSESeq1-3
java -Xmx2000m ThreeSatExhaustiveSeq 24 1000 321 > outTSESeq2-1
java -Xmx2000m ThreeSatExhaustiveSeq 24 1000 321 > outTSESeq2-2
java -Xmx2000m ThreeSatExhaustiveSeq 24 1000 321 > outTSESeq2-3
java -Xmx2000m ThreeSatExhaustiveSeq 25 1000 456 > outTSESeq3-1
java -Xmx2000m ThreeSatExhaustiveSeq 25 1000 456 > outTSESeq3-2
java -Xmx2000m ThreeSatExhaustiveSeq 25 1000 456 > outTSESeq3-3
java -Xmx2000m ThreeSatExhaustiveSeq 26 1000 654 > outTSESeq4-1
java -Xmx2000m ThreeSatExhaustiveSeq 26 1000 654 > outTSESeq4-2
java -Xmx2000m ThreeSatExhaustiveSeq 26 1000 654 > outTSESeq4-3
java -Xmx2000m ThreeSatExhaustiveSeq 27 1000 789 > outTSESeq5-1
java -Xmx2000m ThreeSatExhaustiveSeq 27 1000 789 > outTSESeq5-2
java -Xmx2000m ThreeSatExhaustiveSeq 27 1000 789 > outTSESeq5-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 1"
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp11-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp11-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp11-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp12-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp12-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp12-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp13-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp13-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp13-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp14-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp14-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp14-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp15-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp15-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp15-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 2"
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp21-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp21-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp21-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp22-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp22-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp22-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp23-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp23-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp23-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp24-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp24-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp24-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp25-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp25-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp25-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 3"
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp31-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp31-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp31-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp32-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp32-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp32-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp33-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp33-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp33-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp34-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp34-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 645 > outTSESmp34-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp35-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp35-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp35-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 4"
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp41-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp41-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp41-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp42-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp42-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp42-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp43-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp43-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp43-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp44-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp44-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp44-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp45-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp45-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp45-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 8"
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp81-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp81-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > outTSESmp81-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp82-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp82-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > outTSESmp82-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp83-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp83-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > outTSESmp83-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp84-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp84-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > outTSESmp84-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp85-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp85-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > outTSESmp85-3

echo "Done with the non-schedule results !"
echo "Guided Schedule"

echo "Timings for ThreeSatSmp-Guided, proc = 1"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 23 1000 123 > goutTSSmp11-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 23 1000 123 > goutTSSmp11-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 23 1000 123 > goutTSSmp11-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 24 1000 321 > goutTSSmp12-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 24 1000 321 > goutTSSmp12-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 24 1000 321 > goutTSSmp12-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 1000 456 > goutTSSmp13-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 1000 456 > goutTSSmp13-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 1000 456 > goutTSSmp13-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 26 1000 654 > goutTSSmp14-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 26 1000 654 > goutTSSmp14-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 26 1000 654 > goutTSSmp14-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 27 1000 789 > goutTSSmp15-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 27 1000 789 > goutTSSmp15-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 27 1000 789 > goutTSSmp15-3

echo "Timings for ThreeSatSmp-Guided, proc = 2"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 23 1000 123 > goutTSSmp21-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 23 1000 123 > goutTSSmp21-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 23 1000 123 > goutTSSmp21-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 24 1000 321 > goutTSSmp22-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 24 1000 321 > goutTSSmp22-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 24 1000 321 > goutTSSmp22-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 1000 456 > goutTSSmp23-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 1000 456 > goutTSSmp23-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 1000 456 > goutTSSmp23-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 26 1000 654 > goutTSSmp24-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 26 1000 654 > goutTSSmp24-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 26 1000 654 > goutTSSmp24-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 27 1000 789 > goutTSSmp25-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 27 1000 789 > goutTSSmp25-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 27 1000 789 > goutTSSmp25-3

echo "Timings for ThreeSatSmp-Guided, proc = 3"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 23 1000 123 > goutTSSmp31-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 23 1000 123 > goutTSSmp31-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 23 1000 123 > goutTSSmp31-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 24 1000 321 > goutTSSmp32-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 24 1000 321 > goutTSSmp32-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 24 1000 321 > goutTSSmp32-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 1000 456 > goutTSSmp33-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 1000 456 > goutTSSmp33-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 1000 456 > goutTSSmp33-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 26 1000 654 > goutTSSmp34-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 26 1000 654 > goutTSSmp34-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 26 1000 654 > goutTSSmp34-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 27 1000 789 > goutTSSmp35-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 27 1000 789 > goutTSSmp35-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 27 1000 789 > goutTSSmp35-3

echo "Timings for ThreeSatSmp-Guided, proc = 4"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 23 1000 123 > goutTSSmp41-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 23 1000 123 > goutTSSmp41-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 23 1000 123 > goutTSSmp41-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 24 1000 321 > goutTSSmp42-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 24 1000 321 > goutTSSmp42-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 24 1000 321 > goutTSSmp42-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 1000 456 > goutTSSmp43-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 1000 456 > goutTSSmp43-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 1000 456 > goutTSSmp43-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 26 1000 654 > goutTSSmp44-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 26 1000 654 > goutTSSmp44-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 26 1000 654 > goutTSSmp44-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 27 1000 789 > goutTSSmp45-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 27 1000 789 > goutTSSmp45-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 27 1000 789 > goutTSSmp45-3

echo "Timings for ThreeSatSmp-Guided, proc = 8"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 23 1000 123 > goutTSSmp81-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 23 1000 123 > goutTSSmp81-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 23 1000 123 > goutTSSmp81-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 24 1000 321 > goutTSSmp82-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 24 1000 321 > goutTSSmp82-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 24 1000 321 > goutTSSmp82-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 1000 456 > goutTSSmp83-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 1000 456 > goutTSSmp83-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 1000 456 > goutTSSmp83-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 26 1000 654 > goutTSSmp84-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 26 1000 654 > goutTSSmp84-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 26 1000 654 > goutTSSmp84-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 27 1000 789 > goutTSSmp85-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 27 1000 789 > goutTSSmp85-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 27 1000 789 > goutTSSmp85-3


echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 1"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp11-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp11-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp11-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp12-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp12-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp12-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp13-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp13-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp13-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp14-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp14-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp14-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp15-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp15-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp15-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 2"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp21-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp21-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp21-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp22-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp22-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp22-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp23-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp23-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp23-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp24-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp24-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp24-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp25-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp25-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp25-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 3"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp31-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp31-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp31-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp32-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp32-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp32-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp33-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp33-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp33-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp34-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp34-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp34-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp35-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp35-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp35-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 4"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp41-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp41-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp41-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp42-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp42-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp42-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp43-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp43-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp43-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp44-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp44-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp44-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp45-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp45-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp45-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 8"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp81-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp81-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > goutTSESmp81-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp82-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp82-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > goutTSESmp82-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp83-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp83-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > goutTSESmp83-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp84-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp84-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > goutTSESmp84-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp85-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp85-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > goutTSESmp85-3

echo "Dynamic Schedule"

echo "Timings for ThreeSatSmp-Dynamic, proc = 1"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 23 1000 123 > doutTSSmp11-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 23 1000 123 > doutTSSmp11-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 23 1000 123 > doutTSSmp11-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 24 1000 321 > doutTSSmp12-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 24 1000 321 > doutTSSmp12-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 24 1000 321 > doutTSSmp12-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 1000 456 > doutTSSmp13-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 1000 456 > doutTSSmp13-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 1000 456 > doutTSSmp13-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 26 1000 654 > doutTSSmp14-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 26 1000 654 > doutTSSmp14-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 26 1000 654 > doutTSSmp14-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 27 1000 789 > doutTSSmp15-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 27 1000 789 > doutTSSmp15-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 27 1000 789 > doutTSSmp15-3

echo "Timings for ThreeSatSmp-Dynamic, proc = 2"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 23 1000 123 > doutTSSmp21-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 23 1000 123 > doutTSSmp21-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 23 1000 123 > doutTSSmp21-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 24 1000 321 > doutTSSmp22-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 24 1000 321 > doutTSSmp22-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 24 1000 321 > doutTSSmp22-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 1000 456 > doutTSSmp23-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 1000 456 > doutTSSmp23-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 1000 456 > doutTSSmp23-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 26 1000 654 > doutTSSmp24-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 26 1000 654 > doutTSSmp24-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 26 1000 654 > doutTSSmp24-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 27 1000 789 > doutTSSmp25-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 27 1000 789 > doutTSSmp25-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 27 1000 789 > doutTSSmp25-3

echo "Timings for ThreeSatSmp-Dynamic, proc = 3"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 23 1000 123 > doutTSSmp31-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 23 1000 123 > doutTSSmp31-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 23 1000 123 > doutTSSmp31-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 24 1000 321 > doutTSSmp32-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 24 1000 321 > doutTSSmp32-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 24 1000 321 > doutTSSmp32-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 1000 456 > doutTSSmp33-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 1000 456 > doutTSSmp33-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 1000 456 > doutTSSmp33-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 26 1000 654 > doutTSSmp34-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 26 1000 654 > doutTSSmp34-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 26 1000 654 > doutTSSmp34-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 27 1000 789 > doutTSSmp35-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 27 1000 789 > doutTSSmp35-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 27 1000 789 > doutTSSmp35-3

echo "Timings for ThreeSatSmp-Dynamic, proc = 4"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 23 1000 123 > doutTSSmp41-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 23 1000 123 > doutTSSmp41-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 23 1000 123 > doutTSSmp41-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 24 1000 321 > doutTSSmp42-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 24 1000 321 > doutTSSmp42-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 24 1000 321 > doutTSSmp42-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 1000 456 > doutTSSmp43-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 1000 456 > doutTSSmp43-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 1000 456 > doutTSSmp43-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 26 1000 654 > doutTSSmp44-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 26 1000 654 > doutTSSmp44-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 26 1000 654 > doutTSSmp44-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 27 1000 789 > doutTSSmp45-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 27 1000 789 > doutTSSmp45-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 27 1000 789 > doutTSSmp45-3

echo "Timings for ThreeSatSmp-Dynamic, proc = 8"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 23 1000 123 > doutTSSmp81-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 23 1000 123 > doutTSSmp81-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 23 1000 123 > doutTSSmp81-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 24 1000 321 > doutTSSmp82-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 24 1000 321 > doutTSSmp82-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 24 1000 321 > doutTSSmp82-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 1000 456 > doutTSSmp83-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 1000 456 > doutTSSmp83-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 1000 456 > doutTSSmp83-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 26 1000 654 > doutTSSmp84-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 26 1000 654 > doutTSSmp84-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 26 1000 654 > doutTSSmp84-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 27 1000 789 > doutTSSmp85-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 27 1000 789 > doutTSSmp85-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 27 1000 789 > doutTSSmp85-3


echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 1"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp11-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp11-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp11-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp12-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp12-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp12-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp13-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp13-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp13-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp14-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp14-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp14-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp15-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp15-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp15-3

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 2"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp21-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp21-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp21-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp22-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp22-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp22-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp23-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp23-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp23-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp24-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp24-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp24-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp25-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp25-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp25-3

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 3"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp31-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp31-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp31-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp32-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp32-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp32-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp33-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp33-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp33-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp34-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp34-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp34-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp35-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp35-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp35-3

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 4"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp41-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp41-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp41-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp42-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp42-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp42-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp43-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp43-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp43-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp44-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp44-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp44-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp45-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp45-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp45-3

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 8"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp81-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp81-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 1000 123 > doutTSESmp81-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp82-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp82-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 1000 321 > doutTSESmp82-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp83-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp83-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1000 456 > doutTSESmp83-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp84-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp84-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 1000 654 > doutTSESmp84-3
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp85-1
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp85-2
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 1000 789 > doutTSESmp85-3

echo "Done with schedule results..."
echo "Done with everything !! HELLS YEAHHHHH !! \m/ -_- \m/"
