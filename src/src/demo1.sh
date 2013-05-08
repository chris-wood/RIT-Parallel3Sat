clear
echo "MEDIUM TEST"
echo "-----------------------------"
read -p "Press key to run sequential version..."
echo "-----------------------------"
echo "java -Xmx2000m ThreeSatExhaustiveSeq 23 10 232323"
java -Xmx2000m ThreeSatExhaustiveSeq 23 10 232323
echo "-----------------------------"
read -p "Press key to run parallel version with guided schedule..."
echo "-----------------------------"
echo "java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 10 232323"
java -Xmx2000m -Dpj.nt=8 ThreeSatExhaustiveSmp 23 10 232323
echo ""
echo "Do they match? :-)"
echo "What's the speedup?"
