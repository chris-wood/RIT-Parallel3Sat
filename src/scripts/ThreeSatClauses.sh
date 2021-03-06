clear 
echo "Testing for all versions of the ThreeSat program."
echo "  (variable clauses)                             "
echo "-------------------------------------------------"
echo "Timings for ThreeSatSeq, proc = 0"
java -Xmx2000m ThreeSatSeq 25 524288 1000 > outTSSeq1-1-c
java -Xmx2000m ThreeSatSeq 25 524288 1000 > outTSSeq1-2-c
java -Xmx2000m ThreeSatSeq 25 524288 1000 > outTSSeq1-3-c
java -Xmx2000m ThreeSatSeq 25 1048576 3548 > outTSSeq2-1-c
java -Xmx2000m ThreeSatSeq 25 1048576 3548 > outTSSeq2-2-c
java -Xmx2000m ThreeSatSeq 25 1048576 3548 > outTSSeq2-3-c
java -Xmx2000m ThreeSatSeq 25 2097152 1234 > outTSSeq3-1-c
java -Xmx2000m ThreeSatSeq 25 2097152 1234 > outTSSeq3-2-c
java -Xmx2000m ThreeSatSeq 25 2097152 1234 > outTSSeq3-3-c
java -Xmx2000m ThreeSatSeq 25 4194304 1452 > outTSSeq4-1-c
java -Xmx2000m ThreeSatSeq 25 4194304 1452 > outTSSeq4-2-c
java -Xmx2000m ThreeSatSeq 25 4194304 1452 > outTSSeq4-3-c
java -Xmx2000m ThreeSatSeq 25 8388608 1245 > outTSSeq5-1-c
java -Xmx2000m ThreeSatSeq 25 8388608 1245 > outTSSeq5-2-c
java -Xmx2000m ThreeSatSeq 25 8388608 1245 > outTSSeq5-3-c

echo "Timings for ThreeSatSmp, proc = 1"
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > outTSSmp11-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > outTSSmp11-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > outTSSmp11-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > outTSSmp12-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > outTSSmp12-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > outTSSmp12-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > outTSSmp13-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > outTSSmp13-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > outTSSmp13-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > outTSSmp14-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > outTSSmp14-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > outTSSmp14-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > outTSSmp15-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > outTSSmp15-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > outTSSmp15-3-c

echo "Timings for ThreeSatSmp, proc = 2"
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > outTSSmp21-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > outTSSmp21-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > outTSSmp21-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > outTSSmp22-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > outTSSmp22-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > outTSSmp22-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > outTSSmp23-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > outTSSmp23-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > outTSSmp23-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > outTSSmp24-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > outTSSmp24-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > outTSSmp24-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > outTSSmp25-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > outTSSmp25-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > outTSSmp25-3-c

echo "Timings for ThreeSatSmp, proc = 3"
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > outTSSmp31-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > outTSSmp31-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > outTSSmp31-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > outTSSmp32-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > outTSSmp32-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > outTSSmp32-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > outTSSmp33-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > outTSSmp33-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > outTSSmp33-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > outTSSmp34-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > outTSSmp34-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > outTSSmp34-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > outTSSmp35-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > outTSSmp35-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > outTSSmp35-3-c

echo "Timings for ThreeSatSmp, proc = 4"
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > outTSSmp41-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > outTSSmp41-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > outTSSmp41-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > outTSSmp42-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > outTSSmp42-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > outTSSmp42-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > outTSSmp43-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > outTSSmp43-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > outTSSmp43-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > outTSSmp44-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > outTSSmp44-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > outTSSmp44-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > outTSSmp45-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > outTSSmp45-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > outTSSmp45-3-c

echo "Timings for ThreeSatSmp, proc = 8"
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > outTSSmp81-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > outTSSmp81-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > outTSSmp81-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > outTSSmp82-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > outTSSmp82-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > outTSSmp82-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > outTSSmp83-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > outTSSmp83-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > outTSSmp83-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > outTSSmp84-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > outTSSmp84-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > outTSSmp84-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > outTSSmp85-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > outTSSmp85-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > outTSSmp85-3-c

echo "Timings for ThreeSatExhaustiveSeq, proc = 0"
java -Xmx2000m ThreeSatExhaustiveSeq 25 524288 1000 > outTSESeq1-1-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 524288 1000 > outTSESeq1-2-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 524288 1000 > outTSESeq1-3-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 1048576 3548 > outTSESeq2-1-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 1048576 3548 > outTSESeq2-2-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 1048576 3548 > outTSESeq2-3-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 2097152 1234 > outTSESeq3-1-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 2097152 1234 > outTSESeq3-2-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 2097152 1234 > outTSESeq3-3-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 4194304 1452 > outTSESeq4-1-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 4194304 1452 > outTSESeq4-2-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 4194304 1452 > outTSESeq4-3-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 8388608 1245 > outTSESeq5-1-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 8388608 1245 > outTSESeq5-2-c
java -Xmx2000m ThreeSatExhaustiveSeq 25 8388608 1245 > outTSESeq5-3-c

echo "Timings for ThreeSatExhaustiveSmp, proc = 1"
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp11-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp11-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp11-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp12-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp12-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp12-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp13-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp13-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp13-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp14-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp14-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp14-3-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp15-1-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp15-2-c
java -Xmx2000m -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp15-3-c

echo "Timings for ThreeSatExhaustiveSmp, proc = 2"
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp21-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp21-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp21-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp22-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp22-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp22-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp23-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp23-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp23-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp24-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp24-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp24-3-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp25-1-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp25-2-c
java -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp25-3-c

echo "Timings for ThreeSatExhaustiveSmp, proc = 3"
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp31-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp31-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp31-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp32-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp32-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp32-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp33-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp33-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp33-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp34-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp34-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp34-3-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp35-1-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp35-2-c
java -Xmx2000m -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp35-3-c

echo "Timings for ThreeSatExhaustiveSmp, proc = 4"
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp41-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp41-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp41-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp42-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp42-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp42-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp43-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp43-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp43-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp44-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp44-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp44-3-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp45-1-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp45-2-c
java -Xmx2000m -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp45-3-c

echo "Timings for ThreeSatExhaustiveSmp, proc = 8"
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp81-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp81-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > outTSESmp81-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp82-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp82-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > outTSESmp82-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp83-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp83-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > outTSESmp83-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp84-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp84-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > outTSESmp84-3-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp85-1-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp85-2-c
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > outTSESmp85-3-c

echo "Done with the non-schedule results !"
echo "Guided Schedule"

echo "Timings for ThreeSatSmp-Guided, proc = 1"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > goutTSSmp11-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > goutTSSmp11-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > goutTSSmp11-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > goutTSSmp12-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > goutTSSmp12-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > goutTSSmp12-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > goutTSSmp13-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > goutTSSmp13-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > goutTSSmp13-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > goutTSSmp14-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > goutTSSmp14-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > goutTSSmp14-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > goutTSSmp15-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > goutTSSmp15-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > goutTSSmp15-3-c

echo "Timings for ThreeSatSmp-Guided, proc = 2"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > goutTSSmp21-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > goutTSSmp21-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > goutTSSmp21-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > goutTSSmp22-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > goutTSSmp22-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > goutTSSmp22-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > goutTSSmp23-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > goutTSSmp23-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > goutTSSmp23-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > goutTSSmp24-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > goutTSSmp24-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > goutTSSmp24-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > goutTSSmp25-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > goutTSSmp25-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > goutTSSmp25-3-c

echo "Timings for ThreeSatSmp-Guided, proc = 3"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > goutTSSmp31-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > goutTSSmp31-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > goutTSSmp31-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > goutTSSmp32-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > goutTSSmp32-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > goutTSSmp32-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > goutTSSmp33-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > goutTSSmp33-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > goutTSSmp33-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > goutTSSmp34-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > goutTSSmp34-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > goutTSSmp34-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > goutTSSmp35-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > goutTSSmp35-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > goutTSSmp35-3-c

echo "Timings for ThreeSatSmp-Guided, proc = 4"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > goutTSSmp41-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > goutTSSmp41-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > goutTSSmp41-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > goutTSSmp42-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > goutTSSmp42-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > goutTSSmp42-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > goutTSSmp43-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > goutTSSmp43-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > goutTSSmp43-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > goutTSSmp44-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > goutTSSmp44-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > goutTSSmp44-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > goutTSSmp45-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > goutTSSmp45-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > goutTSSmp45-3-c

echo "Timings for ThreeSatSmp-Guided, proc = 8"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > goutTSSmp81-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > goutTSSmp81-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > goutTSSmp81-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > goutTSSmp82-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > goutTSSmp82-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > goutTSSmp82-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > goutTSSmp83-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > goutTSSmp83-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > goutTSSmp83-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > goutTSSmp84-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > goutTSSmp84-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > goutTSSmp84-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > goutTSSmp85-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > goutTSSmp85-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > goutTSSmp85-3-c


echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 1"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp11-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp11-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp11-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp12-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp12-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp12-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp13-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp13-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp13-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp14-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp14-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp14-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp15-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp15-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp15-3-c

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 2"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp21-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp21-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp21-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp22-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp22-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp22-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp23-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp23-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp23-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp24-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp24-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp24-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp25-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp25-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp25-3-c

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 3"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp31-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp31-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp31-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp32-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp32-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp32-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp33-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp33-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp33-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp34-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp34-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp34-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp35-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp35-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp35-3-c

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 4"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp41-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp41-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp41-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp42-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp42-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp42-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp43-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp43-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp43-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp44-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp44-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp44-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp45-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp45-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp45-3-c

echo "Timings for ThreeSatExhaustiveSmp-Guided, proc = 8"
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp81-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp81-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > goutTSESmp81-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp82-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp82-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > goutTSESmp82-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp83-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp83-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > goutTSESmp83-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp84-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp84-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > goutTSESmp84-3-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp85-1-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp85-2-c
java -Xmx2000m -Dpj.schedule="guided" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > goutTSESmp85-3-c

echo "Dynamic Schedule"

echo "Timings for ThreeSatSmp-Dynamic, proc = 1"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > doutTSSmp11-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > doutTSSmp11-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 524288 1000 > doutTSSmp11-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > doutTSSmp12-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > doutTSSmp12-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 1048576 3548 > doutTSSmp12-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > doutTSSmp13-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > doutTSSmp13-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 2097152 1234 > doutTSSmp13-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > doutTSSmp14-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > doutTSSmp14-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 4194304 1452 > doutTSSmp14-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > doutTSSmp15-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > doutTSSmp15-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatSmp 25 8388608 1245 > doutTSSmp15-3-c

echo "Timings for ThreeSatSmp-Dynamic, proc = 2"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > doutTSSmp21-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > doutTSSmp21-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 524288 1000 > doutTSSmp21-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > doutTSSmp22-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > doutTSSmp22-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 1048576 3548 > doutTSSmp22-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > doutTSSmp23-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > doutTSSmp23-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 2097152 1234 > doutTSSmp23-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > doutTSSmp24-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > doutTSSmp24-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 4194304 1452 > doutTSSmp24-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > doutTSSmp25-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > doutTSSmp25-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatSmp 25 8388608 1245 > doutTSSmp25-3-c

echo "Timings for ThreeSatSmp-Dynamic, proc = 3"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > doutTSSmp31-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > doutTSSmp31-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 524288 1000 > doutTSSmp31-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > doutTSSmp32-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > doutTSSmp32-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 1048576 3548 > doutTSSmp32-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > doutTSSmp33-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > doutTSSmp33-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 2097152 1234 > doutTSSmp33-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > doutTSSmp34-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > doutTSSmp34-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 4194304 1452 > doutTSSmp34-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > doutTSSmp35-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > doutTSSmp35-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatSmp 25 8388608 1245 > doutTSSmp35-3-c

echo "Timings for ThreeSatSmp-Dynamic, proc = 4"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > doutTSSmp41-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > doutTSSmp41-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 524288 1000 > doutTSSmp41-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > doutTSSmp42-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > doutTSSmp42-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 1048576 3548 > doutTSSmp42-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > doutTSSmp43-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > doutTSSmp43-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 2097152 1234 > doutTSSmp43-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > doutTSSmp44-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > doutTSSmp44-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 4194304 1452 > doutTSSmp44-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > doutTSSmp45-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > doutTSSmp45-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatSmp 25 8388608 1245 > doutTSSmp45-3-c

echo "Timings for ThreeSatSmp-Dynamic, proc = 8"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > doutTSSmp81-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > doutTSSmp81-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 524288 1000 > doutTSSmp81-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > doutTSSmp82-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > doutTSSmp82-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 1048576 3548 > doutTSSmp82-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > doutTSSmp83-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > doutTSSmp83-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 2097152 1234 > doutTSSmp83-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > doutTSSmp84-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > doutTSSmp84-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 4194304 1452 > doutTSSmp84-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > doutTSSmp85-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > doutTSSmp85-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatSmp 25 8388608 1245 > doutTSSmp85-3-c


echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 1"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp11-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp11-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp11-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp12-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp12-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp12-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp13-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp13-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp13-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp14-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp14-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp14-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp15-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp15-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=1 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp15-3-c

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 2"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp21-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp21-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp21-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp22-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp22-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp22-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp23-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp23-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp23-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp24-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp24-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp24-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp25-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp25-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=2 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp25-3-c

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 3"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp31-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp31-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp31-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp32-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp32-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp32-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp33-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp33-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp33-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp34-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp34-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp34-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp35-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp35-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=3 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp35-3-c

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 4"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp41-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp41-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp41-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp42-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp42-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp42-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp43-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp43-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp43-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp44-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp44-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp44-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp45-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp45-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=4 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp45-3-c

echo "Timings for ThreeSatExhaustiveSmp-Dynamic, proc = 8"
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp81-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp81-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 524288 1000 > doutTSESmp81-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp82-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp82-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 1048576 3548 > doutTSESmp82-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp83-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp83-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 2097152 1234 > doutTSESmp83-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp84-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp84-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 4194304 1452 > doutTSESmp84-3-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp85-1-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp85-2-c
java -Xmx2000m -Dpj.schedule="dynamic" -Dpj.nt=8 ThreeSatExhaustiveSmp 25 8388608 1245 > doutTSESmp85-3-c


echo "Done with schedule results..."
echo "Done with everything !! HELLS YEAHHHHH !! \m/ -_- \m/"

