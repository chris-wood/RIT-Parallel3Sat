clear
echo "SMALL TEST CASE FILE CONTENTS"
echo "-----------------------------"
more test0.cnf
echo "-----------------------------"
read -p "Press key to run sequential version..."
echo "-----------------------------"
echo "java  ThreeSatExhaustiveSeq test0.cnf"
java  ThreeSatExhaustiveSeq test0.cnf
read -p "Press key to run parallel version..."
echo "java  ThreeSatExhaustiveSmp test0.cnf"
java  ThreeSatExhaustiveSmp test0.cnf
echo ""
echo "Do they match? :-)"




