clear 
echo "Testing for ThreeSatExhaustiveSmp"
echo "-----------------------"

java -Xmx2000m ThreeSatExhaustiveSmp 20 50 100 > out1-1
java -Xmx2000m ThreeSatExhaustiveSmp 20 50 100 > out1-2
java -Xmx2000m ThreeSatExhaustiveSmp 20 50 100 > out1-3
java -Xmx2000m ThreeSatExhaustiveSmp 27 150 3548 > out2-1
java -Xmx2000m ThreeSatExhaustiveSmp 27 150 3548 > out2-2
java -Xmx2000m ThreeSatExhaustiveSmp 27 150 3548 > out2-3
java -Xmx2000m ThreeSatExhaustiveSmp 30 200 1234 > out3-1
java -Xmx2000m ThreeSatExhaustiveSmp 30 200 1234 > out3-2
java -Xmx2000m ThreeSatExhaustiveSmp 30 200 1234 > out3-3
java -Xmx2000m ThreeSatExhaustiveSmp 31 250 1452 > out4-1
java -Xmx2000m ThreeSatExhaustiveSmp 31 250 1452 > out4-2
java -Xmx2000m ThreeSatExhaustiveSmp 31 250 1452 > out4-3
java -Xmx2000m ThreeSatExhaustiveSmp 32 475 1245 > out5-1
java -Xmx2000m ThreeSatExhaustiveSmp 32 475 1245 > out5-2
java -Xmx2000m ThreeSatExhaustiveSmp 32 475 1245 > out5-3

echo "Done !!"


