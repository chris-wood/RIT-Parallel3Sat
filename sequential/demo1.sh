clear
echo "MEDIUM TEST CASE FILE CONTENTS"
echo "-----------------------------"
more test1.cnf
echo "-----------------------------"
read -p "Press key to run..."
echo "-----------------------------"
java -cp pj20120620.jar:. ThreeSat -f test1.cnf

