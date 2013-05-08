clear
echo "LARGE TEST"
echo "-----------------------------"
read -p "Press key to run..."
echo "-----------------------------"
echo "java  -Xmx2000m ThreeSatExhaustiveSeq 26 100 12345"
java  -Xmx2000m ThreeSatExhaustiveSeq 26 100 12345
echo "-----------------------------"
read -p "Press key to run parallel version with guided schedule..."
echo "-----------------------------"
echo "java  -Xmx2000m -Dpj.nt=2 ThreeSatExhaustiveSmp 26 100 12345"
java  -Xmx2000m -Dpj.nt=2 -Dpj.schedule="guided" ThreeSatExhaustiveSmp 26 100 12345
echo ""
echo "Do they match? :-)"
echo "What's the speedup?"

