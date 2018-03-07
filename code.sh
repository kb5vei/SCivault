stringa=`date|md5sum|head -c 8`
zenity --info --text "<span foreground='blue' font='64'>$stringa</span>\ "
echo "`date` $stringa" >> codehist.txt 
