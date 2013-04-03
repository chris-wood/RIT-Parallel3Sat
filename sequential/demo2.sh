clear
echo "MASSIVE TEST CASE FILE CONTENTS"
echo "-----------------------------"
more test2.cnf
echo "-----------------------------"
read -p "Press key to run..."
echo "-----------------------------"
java -cp pj20120620.jar:. ThreeSat -f test2.cnf

