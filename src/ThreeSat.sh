clear 
echo "Testing for all versions of the ThreeSat program."
echo "-----------------------"

java -Xmx2000m ThreeSatSeq 20 50 100 > outTSSeq1-1
java -Xmx2000m ThreeSatSeq 20 50 100 > outTSSeq1-2
java -Xmx2000m ThreeSatSeq 20 50 100 > outTSSeq1-3
java -Xmx2000m ThreeSatSeq 27 150 3548 > outTSSeq2-1
java -Xmx2000m ThreeSatSeq 27 150 3548 > outTSSeq2-2
java -Xmx2000m ThreeSatSeq 27 150 3548 > outTSSeq2-3
java -Xmx2000m ThreeSatSeq 30 200 1234 > outTSSeq3-1
java -Xmx2000m ThreeSatSeq 30 200 1234 > outTSSeq3-2
java -Xmx2000m ThreeSatSeq 30 200 1234 > outTSSeq3-3
java -Xmx2000m ThreeSatSeq 31 250 1452 > outTSSeq4-1
java -Xmx2000m ThreeSatSeq 31 250 1452 > outTSSeq4-2
java -Xmx2000m ThreeSatSeq 31 250 1452 > outTSSeq4-3
java -Xmx2000m ThreeSatSeq 32 475 1245 > outTSSeq5-1
java -Xmx2000m ThreeSatSeq 32 475 1245 > outTSSeq5-2
java -Xmx2000m ThreeSatSeq 32 475 1245 > outTSSeq5-3

java -Xmx2000m ThreeSatSmp 20 50 100 > outTSSmp1-1
java -Xmx2000m ThreeSatSmp 20 50 100 > outTSSmp1-2
java -Xmx2000m ThreeSatSmp 20 50 100 > outTSSmp1-3
java -Xmx2000m ThreeSatSmp 27 150 3548 > outTSSmp2-1
java -Xmx2000m ThreeSatSmp 27 150 3548 > outTSSmp2-2
java -Xmx2000m ThreeSatSmp 27 150 3548 > outTSSmp2-3
java -Xmx2000m ThreeSatSmp 30 200 1234 > outTSSmp3-1
java -Xmx2000m ThreeSatSmp 30 200 1234 > outTSSmp3-2
java -Xmx2000m ThreeSatSmp 30 200 1234 > outTSSmp3-3
java -Xmx2000m ThreeSatSmp 31 250 1452 > outTSSmp4-1
java -Xmx2000m ThreeSatSmp 31 250 1452 > outTSSmp4-2
java -Xmx2000m ThreeSatSmp 31 250 1452 > outTSSmp4-3
java -Xmx2000m ThreeSatSmp 32 475 1245 > outTSSmp5-1
java -Xmx2000m ThreeSatSmp 32 475 1245 > outTSSmp5-2
java -Xmx2000m ThreeSatSmp 32 475 1245 > outTSSmp5-3

java -Xmx2000m ThreeSatExhaustiveSeq 20 50 100 > outTSESeq1-1
java -Xmx2000m ThreeSatExhaustiveSeq 20 50 100 > outTSESeq1-2
java -Xmx2000m ThreeSatExhaustiveSeq 20 50 100 > outTSESeq1-3
java -Xmx2000m ThreeSatExhaustiveSeq 27 150 3548 > outTSESeq2-1
java -Xmx2000m ThreeSatExhaustiveSeq 27 150 3548 > outTSESeq2-2
java -Xmx2000m ThreeSatExhaustiveSeq 27 150 3548 > outTSESeq2-3
java -Xmx2000m ThreeSatExhaustiveSeq 30 200 1234 > outTSESeq3-1
java -Xmx2000m ThreeSatExhaustiveSeq 30 200 1234 > outTSESeq3-2
java -Xmx2000m ThreeSatExhaustiveSeq 30 200 1234 > outTSESeq3-3
java -Xmx2000m ThreeSatExhaustiveSeq 31 250 1452 > outTSESeq4-1
java -Xmx2000m ThreeSatExhaustiveSeq 31 250 1452 > outTSESeq4-2
java -Xmx2000m ThreeSatExhaustiveSeq 31 250 1452 > outTSESeq4-3
java -Xmx2000m ThreeSatExhaustiveSeq 32 475 1245 > outTSESeq5-1
java -Xmx2000m ThreeSatExhaustiveSeq 32 475 1245 > outTSESeq5-2
java -Xmx2000m ThreeSatExhaustiveSeq 32 475 1245 > outTSESeq5-3

java -Xmx2000m ThreeSatExhaustiveSmp 20 50 100 > outTSESmp1-1
java -Xmx2000m ThreeSatExhaustiveSmp 20 50 100 > outTSESmp1-2
java -Xmx2000m ThreeSatExhaustiveSmp 20 50 100 > outTSESmp1-3
java -Xmx2000m ThreeSatExhaustiveSmp 27 150 3548 > outTSESmp2-1
java -Xmx2000m ThreeSatExhaustiveSmp 27 150 3548 > outTSESmp2-2
java -Xmx2000m ThreeSatExhaustiveSmp 27 150 3548 > outTSESmp2-3
java -Xmx2000m ThreeSatExhaustiveSmp 30 200 1234 > outTSESmp3-1
java -Xmx2000m ThreeSatExhaustiveSmp 30 200 1234 > outTSESmp3-2
java -Xmx2000m ThreeSatExhaustiveSmp 30 200 1234 > outTSESmp3-3
java -Xmx2000m ThreeSatExhaustiveSmp 31 250 1452 > outTSESmp4-1
java -Xmx2000m ThreeSatExhaustiveSmp 31 250 1452 > outTSESmp4-2
java -Xmx2000m ThreeSatExhaustiveSmp 31 250 1452 > outTSESmp4-3
java -Xmx2000m ThreeSatExhaustiveSmp 32 475 1245 > outTSESmp5-1
java -Xmx2000m ThreeSatExhaustiveSmp 32 475 1245 > outTSESmp5-2
java -Xmx2000m ThreeSatExhaustiveSmp 32 475 1245 > outTSESmp5-3

echo "Done! Please check the output files !!"


