echo "Welcome to File Management System"

i="y"
while [ $i = "y" ]
do

echo "-------------------------Menu------------------------"
echo "1) Create Directory"
echo "2) Create File"
echo "3) Search Directory"
echo "4) Search File"
echo "5) Delete Directory"
echo "6) Delete File"
echo "7) Rename File"
echo "8) View Contents Of Current Directory"
echo "9) Go to Home Directory"
echo "10) Go back to main directory and enter into another directory."
echo "11) Enter into a sub directory"
echo "12) Exit"
echo "-----------------------------------------------------"
echo "Enter your choice"
read choice

case $choice in
1)
echo "Enter Directory Name : "
read dname
if [ -d $dname ]
then
echo " Directory Already Exists"

else
mkdir $dname
echo "Directory Successfully Created"
fi;;

2)
echo "Enter File Name : "
read fname
if [ -f $fname ]
then
echo "File Already Exists"

else
touch $fname
echo "File Successfully Created"
fi;;

3)
echo "Enter Directory Name : "
read sdanme
if [ -d $sdname ]
then
echo "Directory Exists"

else
echo "No Such Directory Exists"
fi;;

4)
echo "Enter File name: "
read sname
if [ -f $sname ]
then
echo "File Exists"

else
echo "No Such Files Exists"
fi;;

5)
echo "Enter Directory to be Deleted: "
read dname1
if [ -d $dname1 ]
then
rm -rf letters $dname1
echo "Directory Succesfully Deleted"

else
echo "NO Such Directory Exists"
fi;;


6)
echo "Enter File to be Deleted: "
read dtname
if [ -f $dtname ]
then
rm $dtname
echo "File Succesfully Deleted"

else
echo "NO Such Files Exists"
fi;;

7)
echo "Enter Name Of File to be Rename : "
read old_file
if [ -f $old_file ]
then
echo "Enter New File Name : "
read new_file
mv $old_file $new_file
echo "The File is Successfully Renamed"

else
echo "No Such File Exists"
fi;;

8)
ls;;

9)
cd ~
echo "You are in Home Directory"
;;

10)
cd ..
echo "You Have Come Back To Main Directory"
echo "Enter Name Of the Directory : "
read dname2
if [ -d $dname2 ]
then
cd $dname2
echo "Switched to $dname2"

else
echo "Directory Doesn't Exist"
fi;;

11)
echo "Enter Name of the Directory : "
read dname3
if [ -d $dname3 ]
then
cd $dname3
echo "Switched to $dname3"

else
echo "Directory Doesn't Exist."
fi;;

12)
i="n";;

esac
done