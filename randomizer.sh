x=`cat $1 | wc -l`
#echo "There are $x entries on this list"
entries=($(shuf -i 1-$x))

for entry in "${entries[@]}"; do
	sed "${entry}q;d" $1
done
