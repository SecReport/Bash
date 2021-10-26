#!/bin/bash
# The default value for PS3 is set to #?.
# Change it i.e. Set PS3 prompt
clear

srfile=$(date +%Y_%m_%d)

			# graphical lines on srfile.txt
			echo "======================================================" >> $srfile.txt
			# graphical lines on screen
			echo "======================================================"
			# date on srfile.txt (Start Service)
			date >> $srfile.txt
			# date on screen
			date
			echo "--- Security Report ---" >> $srfile.txt
			echo "--- Security Report ---"
			echo "Security Guard name or badge number: " >> $srfile.txt
			echo "Security Guard name or badge number: "
			read vId
			echo $vId >> $srfile.txt
			echo "======================================================" >> $srfile.txt
			echo "======================================================"
			# for security clear the screen at 20 sec.
			sleep 20
			clear
PS3="Choose an option (number +ENTER): "
# set shuttle list
select option in  SurveillanceRound Incidence EndOfService
do
	case $option in
		SurveillanceRound)
			echo "" >> $srfile.txt
			echo ""
			echo "Surveillance Round at " >> $srfile.txt
			printf "\x1b[1m\x1b[37m\x1b[41m Surveillance Round \x1b[0m \n\n"
			date >> $srfile.txt
			date
			echo "" >> $srfile.txt
			echo ""
			# only for your eyes, for security clear the screen at 20 sec.
			sleep 20
			clear
			;;
		Incidence) 
			echo "" >> $srfile.txt
			echo ""
			echo "+ Incidence: " >> $srfile.txt
			printf "\x1b[1m\x1b[37m\x1b[41m + Incidence  \x1b[0m \n\n"
			# date stamp now, write later
			date >> $srfile.txt
			date
			echo "------" >> $srfile.txt			
			echo "------"
			read vIncidence
			echo $vIncidence >> $srfile.txt
			echo "------" >> $srfile.txt
			echo "------"
			# only for your eyes, for security clear the screen at 20 sec.
			sleep 20
			clear
			;;		
		EndOfService) 
			echo "======================================================" >> $srfile.txt
			echo "======================================================"
			date >> $srfile.txt
			date
			echo " End of Service " >> $srfile.txt
			printf "\x1b[1m\x1b[37m\x1b[41m End of Service  \x1b[0m \n\n"
			echo "======================================================" >> $srfile.txt
			echo "======================================================"
			sleep 20
			clear
			break
			;;				
		*)		
			echo "First may choose an option, please."
			;;		
	esac
done