#!/bin/bash

echo "hello world"

# person1=$1
# person2=$2

# echo "$person1:: Hey $person2, How are you?"
# echo "$person2:: Hello $person1, I am fine. How are you doing"
# echo "$person1: I am fine too. What's up?"
# echo "$person2:: Nohting, just going to Mars now, will you come?"
# echo "$person1:: Sorry, you carry on! I will come once you come back" 


# echo "please enter your pin number"

# read -s PIN

# echo "here is your pin number: $PIN "

# movies=("Final destination" "The Monkey King" "Rush Hour" "Stree2")

# echo "all movies : ${movies[@]}"

# NUMBER1=10
# NUMBER2=20

# SUM=$(($NUMBER1+$NUMBER2))

# TIMESTAMP=$(date)

# echo "sum value is : $SUM "

# echo "date is : $TIMESTAMP "

#!/bin/bash

# echo "All variables passed to the script: $@"
# echo "Number of variables: $#"
# echo "Script name: $0"
# echo "Current Directory: $PWD"
# echo "User running this script: $USER"
# echo "Home directory of user: $HOME"
# echo "PID of the script: $$"
# sleep 10 &
# echo "PID of last command in background: $!"


#!/bin/bash

# NUMBER=$1

# -gt --> greater than
# -lt --> less than
# -eq --> equal
# -ne --> not equal

# if [ $NUMBER -lt 10 ]
# then
#     echo "Given number $NUMBER is less than 10"
# else
#     echo "Given number $NUMBER is not less than 10"
# fi



Userid=$(id -u)

if [ $Userid -ne 0 ]
then
    echo "error no root access, please go with root access"
    exit 1
else
    echo "you are having root access"
fi


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failure"
        exit 1
    else
        echo "$2 is success"
    fi
}
    


dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is now installing..."
    dnf install mysql -y
    VALIDATE $? "MYSQL"
    
else
    echo "mysql alreeady installed"
fi



dnf list installed nginx

if [ $? -ne 0 ]
then
    echo "nginx is now installing..."
    dnf install nginx -y
    VALIDATE $? "nginx"
    
else
    echo "nginx alreeady installed"
fi


dnf list installed python3

if [ $? -ne 0 ]
then
    echo "python is now installing..."
    dnf install python3 -y
    VALIDATE $? "python"
    
else
    echo "python alreeady installed"
fi
