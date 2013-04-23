clear 
echo "Testing for ThreeSatSmp"
echo "-----------------------"

java -Xmx2000m ThreeSatSmp 20 50 100 > out1-1
java -Xmx2000m ThreeSatSmp 20 50 100 > out1-2
java -Xmx2000m ThreeSatSmp 20 50 100 > out1-3
java -Xmx2000m ThreeSatSmp 27 150 3548 > out2-1
java -Xmx2000m ThreeSatSmp 27 150 3548 > out2-2
java -Xmx2000m ThreeSatSmp 27 150 3548 > out2-3
java -Xmx2000m ThreeSatSmp 30 200 1234 > out3-1
java -Xmx2000m ThreeSatSmp 30 200 1234 > out3-2
java -Xmx2000m ThreeSatSmp 30 200 1234 > out3-3
java -Xmx2000m ThreeSatSmp 31 250 1452 > out4-1
java -Xmx2000m ThreeSatSmp 31 250 1452 > out4-2
java -Xmx2000m ThreeSatSmp 31 250 1452 > out4-3
java -Xmx2000m ThreeSatSmp 32 475 1245 > out5-1
java -Xmx2000m ThreeSatSmp 32 475 1245 > out5-2
java -Xmx2000m ThreeSatSmp 32 475 1245 > out5-3

echo "Done !!"


