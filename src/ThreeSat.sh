clear 
echo "Testing for all versions of the ThreeSat program."
echo "-------------------------------------------------"
echo "Timings for ThreeSatSeq, proc = 0"
java -Xmx2000m ThreeSatSeq 23 50 100 > outTSSeq1-1
java -Xmx2000m ThreeSatSeq 23 50 100 > outTSSeq1-2
java -Xmx2000m ThreeSatSeq 23 50 100 > outTSSeq1-3
java -Xmx2000m ThreeSatSeq 24 150 3548 > outTSSeq2-1
java -Xmx2000m ThreeSatSeq 24 150 3548 > outTSSeq2-2
java -Xmx2000m ThreeSatSeq 24 150 3548 > outTSSeq2-3
java -Xmx2000m ThreeSatSeq 25 200 1234 > outTSSeq3-1
java -Xmx2000m ThreeSatSeq 25 200 1234 > outTSSeq3-2
java -Xmx2000m ThreeSatSeq 25 200 1234 > outTSSeq3-3
java -Xmx2000m ThreeSatSeq 26 250 1452 > outTSSeq4-1
java -Xmx2000m ThreeSatSeq 26 250 1452 > outTSSeq4-2
java -Xmx2000m ThreeSatSeq 26 250 1452 > outTSSeq4-3
java -Xmx2000m ThreeSatSeq 27 475 1245 > outTSSeq5-1
java -Xmx2000m ThreeSatSeq 27 475 1245 > outTSSeq5-2
java -Xmx2000m ThreeSatSeq 27 475 1245 > outTSSeq5-3

echo "Timings for ThreeSatSmp, proc = 1"
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 23 50 1000 > outTSSmp11-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 23 50 1000 > outTSSmp11-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 23 50 1000 > outTSSmp11-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 24 150 3548 > outTSSmp12-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 24 150 3548 > outTSSmp12-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 24 150 3548 > outTSSmp12-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 200 1234 > outTSSmp13-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 200 1234 > outTSSmp13-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 200 1234 > outTSSmp13-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 26 250 1452 > outTSSmp14-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 26 250 1452 > outTSSmp14-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 26 250 1452 > outTSSmp14-3
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 27 475 1245 > outTSSmp15-1
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 27 475 1245 > outTSSmp15-2
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 27 475 1245 > outTSSmp15-3

echo "Timings for ThreeSatSmp, proc = 2"
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 23 50 1000 > outTSSmp21-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 23 50 1000 > outTSSmp21-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 23 50 1000 > outTSSmp21-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 24 150 3548 > outTSSmp22-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 24 150 3548 > outTSSmp22-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 24 150 3548 > outTSSmp22-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 200 1234 > outTSSmp23-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 200 1234 > outTSSmp23-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 200 1234 > outTSSmp23-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 26 250 1452 > outTSSmp24-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 26 250 1452 > outTSSmp24-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 26 250 1452 > outTSSmp24-3
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 27 475 1245 > outTSSmp25-1
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 27 475 1245 > outTSSmp25-2
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 27 475 1245 > outTSSmp25-3

echo "Timings for ThreeSatSmp, proc = 3"
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 23 50 1000 > outTSSmp31-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 23 50 1000 > outTSSmp31-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 23 50 1000 > outTSSmp31-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 24 150 3548 > outTSSmp32-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 24 150 3548 > outTSSmp32-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 24 150 3548 > outTSSmp32-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 200 1234 > outTSSmp33-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 200 1234 > outTSSmp33-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 200 1234 > outTSSmp33-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 26 250 1452 > outTSSmp34-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 26 250 1452 > outTSSmp34-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 26 250 1452 > outTSSmp34-3
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 27 475 1245 > outTSSmp35-1
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 27 475 1245 > outTSSmp35-2
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 27 475 1245 > outTSSmp35-3

echo "Timings for ThreeSatSmp, proc = 4"
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 23 50 1000 > outTSSmp41-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 23 50 1000 > outTSSmp41-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 23 50 1000 > outTSSmp41-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 24 150 3548 > outTSSmp42-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 24 150 3548 > outTSSmp42-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 24 150 3548 > outTSSmp42-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 200 1234 > outTSSmp43-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 200 1234 > outTSSmp43-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 200 1234 > outTSSmp43-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 26 250 1452 > outTSSmp44-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 26 250 1452 > outTSSmp44-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 26 250 1452 > outTSSmp44-3
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 27 475 1245 > outTSSmp45-1
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 27 475 1245 > outTSSmp45-2
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 27 475 1245 > outTSSmp45-3

echo "Timings for ThreeSatSmp, proc = 8"
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 23 50 1000 > outTSSmp81-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 23 50 1000 > outTSSmp81-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 23 50 1000 > outTSSmp81-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 24 150 3548 > outTSSmp82-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 24 150 3548 > outTSSmp82-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 24 150 3548 > outTSSmp82-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 200 1234 > outTSSmp83-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 200 1234 > outTSSmp83-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 200 1234 > outTSSmp83-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 26 250 1452 > outTSSmp84-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 26 250 1452 > outTSSmp84-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 26 250 1452 > outTSSmp84-3
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 27 475 1245 > outTSSmp85-1
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 27 475 1245 > outTSSmp85-2
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 27 475 1245 > outTSSmp85-3

echo "Timings for ThreeSatExhaustiveSeq, proc = 0"
java -Xmx2000m ThreeSatExhaustiveSeq 23 50 1000 > outTSESeq1-1
java -Xmx2000m ThreeSatExhaustiveSeq 23 50 1000 > outTSESeq1-2
java -Xmx2000m ThreeSatExhaustiveSeq 23 50 1000 > outTSESeq1-3
java -Xmx2000m ThreeSatExhaustiveSeq 24 150 3548 > outTSESeq2-1
java -Xmx2000m ThreeSatExhaustiveSeq 24 150 3548 > outTSESeq2-2
java -Xmx2000m ThreeSatExhaustiveSeq 24 150 3548 > outTSESeq2-3
java -Xmx2000m ThreeSatExhaustiveSeq 25 200 1234 > outTSESeq3-1
java -Xmx2000m ThreeSatExhaustiveSeq 25 200 1234 > outTSESeq3-2
java -Xmx2000m ThreeSatExhaustiveSeq 25 200 1234 > outTSESeq3-3
java -Xmx2000m ThreeSatExhaustiveSeq 26 250 1452 > outTSESeq4-1
java -Xmx2000m ThreeSatExhaustiveSeq 26 250 1452 > outTSESeq4-2
java -Xmx2000m ThreeSatExhaustiveSeq 26 250 1452 > outTSESeq4-3
java -Xmx2000m ThreeSatExhaustiveSeq 27 475 1245 > outTSESeq5-1
java -Xmx2000m ThreeSatExhaustiveSeq 27 475 1245 > outTSESeq5-2
java -Xmx2000m ThreeSatExhaustiveSeq 27 475 1245 > outTSESeq5-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 1"
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp11-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp11-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp11-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp12-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp12-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp12-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp13-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp13-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp13-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp14-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp14-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp14-3
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp15-1
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp15-2
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp15-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 2"
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp21-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp21-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp21-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp22-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp22-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp22-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp23-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp23-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp23-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp24-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp24-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp24-3
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp25-1
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp25-2
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp25-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 3"
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp31-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp31-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp31-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp32-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp32-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp32-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp33-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp33-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp33-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp34-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp34-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp34-3
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp35-1
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp35-2
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp35-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 4"
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp41-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp41-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp41-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp42-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp42-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp42-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp43-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp43-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp43-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp44-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp44-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp44-3
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp45-1
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp45-2
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp45-3

echo "Timings for ThreeSatExhaustiveSmp, proc = 8"
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp81-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp81-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 50 1000 > outTSESmp81-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp82-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp82-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 24 150 3548 > outTSESmp82-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp83-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp83-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 200 1234 > outTSESmp83-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp84-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp84-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 26 250 1452 > outTSESmp84-3
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp85-1
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp85-2
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 27 475 1245 > outTSESmp85-3

echo "Done with the non-schedule results !"

echo "Timings for ThreeSatSmp-Guided, proc = 1"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 23 50 1000 > goutTSSmp11-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 23 50 1000 > goutTSSmp11-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 23 50 1000 > goutTSSmp11-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 24 150 3548 > goutTSSmp12-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 24 150 3548 > goutTSSmp12-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 24 150 3548 > goutTSSmp12-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 200 1234 > goutTSSmp13-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 200 1234 > goutTSSmp13-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 200 1234 > goutTSSmp13-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 26 250 1452 > goutTSSmp14-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 26 250 1452 > goutTSSmp14-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 26 250 1452 > goutTSSmp14-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 27 475 1245 > goutTSSmp15-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 27 475 1245 > goutTSSmp15-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 27 475 1245 > goutTSSmp15-3

echo "Timings for ThreeSatSmp-Guided, proc = 2"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 23 50 1000 > goutTSSmp21-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 23 50 1000 > goutTSSmp21-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 23 50 1000 > goutTSSmp21-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 24 150 3548 > goutTSSmp22-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 24 150 3548 > goutTSSmp22-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 24 150 3548 > goutTSSmp22-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 200 1234 > goutTSSmp23-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 200 1234 > goutTSSmp23-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 200 1234 > goutTSSmp23-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 26 250 1452 > goutTSSmp24-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 26 250 1452 > goutTSSmp24-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 26 250 1452 > goutTSSmp24-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 27 475 1245 > goutTSSmp25-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 27 475 1245 > goutTSSmp25-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 27 475 1245 > goutTSSmp25-3

echo "Timings for ThreeSatSmp-Guided, proc = 3"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 23 50 1000 > goutTSSmp31-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 23 50 1000 > goutTSSmp31-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 23 50 1000 > goutTSSmp31-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 24 150 3548 > goutTSSmp32-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 24 150 3548 > goutTSSmp32-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 24 150 3548 > goutTSSmp32-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 200 1234 > goutTSSmp33-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 200 1234 > goutTSSmp33-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 200 1234 > goutTSSmp33-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 26 250 1452 > goutTSSmp34-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 26 250 1452 > goutTSSmp34-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 26 250 1452 > goutTSSmp34-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 27 475 1245 > goutTSSmp35-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 27 475 1245 > goutTSSmp35-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 27 475 1245 > goutTSSmp35-3

echo "Timings for ThreeSatSmp-Guided, proc = 4"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 23 50 1000 > goutTSSmp41-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 23 50 1000 > goutTSSmp41-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 23 50 1000 > goutTSSmp41-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 24 150 3548 > goutTSSmp42-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 24 150 3548 > goutTSSmp42-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 24 150 3548 > goutTSSmp42-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 200 1234 > goutTSSmp43-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 200 1234 > goutTSSmp43-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 200 1234 > goutTSSmp43-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 26 250 1452 > goutTSSmp44-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 26 250 1452 > goutTSSmp44-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 26 250 1452 > goutTSSmp44-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 27 475 1245 > goutTSSmp45-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 27 475 1245 > goutTSSmp45-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 27 475 1245 > goutTSSmp45-3

echo "Timings for ThreeSatSmp-Guided, proc = 8"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 23 50 1000 > goutTSSmp81-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 23 50 1000 > goutTSSmp81-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 23 50 1000 > goutTSSmp81-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 24 150 3548 > goutTSSmp82-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 24 150 3548 > goutTSSmp82-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 24 150 3548 > goutTSSmp82-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 200 1234 > goutTSSmp83-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 200 1234 > goutTSSmp83-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 200 1234 > goutTSSmp83-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 26 250 1452 > goutTSSmp84-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 26 250 1452 > goutTSSmp84-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 26 250 1452 > goutTSSmp84-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 27 475 1245 > goutTSSmp85-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 27 475 1245 > goutTSSmp85-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 27 475 1245 > goutTSSmp85-3


echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 1"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp11-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp11-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp11-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp12-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp12-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp12-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp13-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp13-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp13-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp14-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp14-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp14-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp15-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp15-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp15-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 2"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp21-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp21-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp21-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp22-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp22-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp22-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp23-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp23-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp23-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp24-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp24-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp24-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp25-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp25-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp25-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 3"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp31-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp31-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp31-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp32-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp32-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp32-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp33-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp33-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp33-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp34-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp34-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp34-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp35-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp35-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp35-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 4"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp41-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp41-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp41-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp42-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp42-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp42-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp43-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp43-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp43-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp44-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp44-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp44-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp45-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp45-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp45-3

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 8"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp81-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp81-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 23 50 1000 > goutTSESmp81-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp82-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp82-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 24 150 3548 > goutTSESmp82-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp83-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp83-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 200 1234 > goutTSESmp83-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp84-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp84-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 26 250 1452 > goutTSESmp84-3
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp85-1
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp85-2
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 27 475 1245 > goutTSESmp85-3


echo "Done with schedule results..."
echo "Done with everything !! HELLS YEAHHHHH !! \m/ -_- \m/"

