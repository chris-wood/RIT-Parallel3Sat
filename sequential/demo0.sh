clear
echo "SMALL TEST CASE FILE CONTENTS"
echo "-----------------------------"
more test0.cnf
echo "-----------------------------"
read -p "Press key to run..."
echo "-----------------------------"
java -cp pj20120620.jar:. ThreeSat -f test0.cnf

