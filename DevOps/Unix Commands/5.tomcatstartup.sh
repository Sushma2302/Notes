#! /bin/bash
user=$(id -u)
if [ id != "$user" ]
then
        echo -ne "Enter your choice\n1. Start tomcat\n2. stop tomcat\n3. tomcat status"
        read -r choice
		
		case $choice in 
		1) echo -ne "Starting tomcat "
		sh /opt/apache-tomcat-8.5.34/bin/startup.sh
		if [ "$?" -eq 0 ] ; then echo "Tomcat Started" ; fi
		;;
		2)
		echo -ne "Stoping tomcat "
		sh /opt/apache-tomcat-8.5.34/bin/shutdown.sh
		if [ "$?" -eq 0 ] ; then echo "Tomcat Stoped"; fi
		;;
		3)
		echo -ne "Tomcat status is "
		ps -ef | grep "/opt/apache-tomcat-8.5.34/bin/"
		if [ "$?" -eq 0 ] 
			then echo "Tomcat Stoped"
		fi
		;;
		esac
fi