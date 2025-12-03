# test kompleks script
# loop and banner

figlet Loop1

printf "berapa : "
read x

for ((i = 0; i <= x; i++)); do
	echo "$i"
done
