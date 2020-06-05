num_files=$(expr `ls -l | wc -l` - 1)
response=-1
function compare_numbers () {
	response=$1
	num_files=$2
	if [[ $response -lt $num_files ]]
	then
		echo "Try a larger number..."
	elif [[ $response -gt $num_files ]]
	then
		echo "Try a smaller number..."
	else
		echo "Congratulations! You guessed correctly!"
		exit
	fi
}
echo
while [[ $response -ne $num_files ]]
do
	echo -n "Guess the number of files in this directory: "
	read response
	echo
	compare_numbers $response $num_files
	echo
done
