#!/bin/bash

id=$(id -u)

#using case statment

case $id in
	
	0)
	
		echo "Enter your choice from the list of actios"
			echo "1.Install HTTPD"
			echo "2.Remove HTTPD"
			echo "3.Current status of HTTPD"
		read -p choice
		case  $choice in 
			1)
				
				echo "Starting instalation"
				yum install httpd -y
				echo "Instalation completed"
				echo "Starting service"
				systemctl start httpd
				echo "Service started sucessfully"
				exit 0
				;;
			2) echo "Removing HTTPD"
				yum remove httpd -y
				echo "HTTPD removed successfully"
				exit 0
				;;
			3) 	systemctl status httpd | grep "active"
				if ($? == 0 )
				then 
					echo "HTTPD is in active status"
				else
					echo "HTTPD is in deactive status"
				fi
				exit 0
				;;
			*) echo "Enter a valid option "
			exit 2
			;;
	*) echo "you should be a root user to perform this operation"
		exit 1
		;;
esac
		