cd /home/kb5vei/Desktop/randomizer

printf "`date -I` \n" > `date -I`.csv
printf "2nd Period \n" >> `date -I`.csv
sh randomizer.sh 2nd.txt | awk '{ printf "%s", $0; if (NR % 4 == 0) print ""; else printf "; " }' | awk '{printf("Table %d; %s\n", NR, $0)}' >>  `date -I`.csv
printf "\n\n ">> `date -I`.csv

printf "`date -I` \n" >> `date -I`.csv
printf "3rd Period\n" >> `date -I`.csv
sh randomizer.sh 3rd.txt | awk '{ printf "%s", $0; if (NR % 4 == 0) print ""; else printf "; " }' | awk '{printf("Table %d; %s\n", NR, $0)}' >>  `date -I`.csv
printf "\n\n">> `date -I`.csv


printf "`date -I` \n" >> `date -I`.csv
printf "4th Period\n" >> `date -I`.csv
sh randomizer.sh 4th.txt | awk '{ printf "%s", $0; if (NR % 4 == 0) print ""; else printf "; " }' | awk '{printf("Table %d; %s\n", NR, $0)}' >>  `date -I`.csv
printf "\n\n" >> `date -I`.csv

printf "`date -I` \n" >> `date -I`.csv
printf "5th Period\n" >> `date -I`.csv
sh randomizer.sh 5th.txt | awk '{ printf "%s", $0; if (NR % 4 == 0) print ""; else printf "; " }' | awk '{printf("Table %d; %s\n", NR, $0)}' >>  `date -I`.csv
printf "\n\n" >> `date -I`.csv


printf "`date -I` \n" >> `date -I`.csv
printf "8th Period\n" >> `date -I`.csv
sh randomizer.sh 8th.txt | awk '{ printf "%s", $0; if (NR % 4 == 0) print ""; else printf "; " }' | awk '{printf("Table %d; %s\n", NR, $0)}' >>  `date -I`.csv
printf "\n\n">> `date -I`.csv

libreoffice `date -I`.csv
