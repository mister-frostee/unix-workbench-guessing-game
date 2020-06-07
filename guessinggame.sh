num_files=`find . -type f | wc -l`
response=-1
valid_response="^[0-9]+$"
function compare_numbers () {
	if [[ $1 =~ $3 && $1 -gt -1 && $1 -lt 2147483648 ]]
	then
		if [[ $1 -lt $2 ]]
		then
			echo "Try a larger number..."
		elif [[ $1 -gt $2 ]]
		then
			echo "Try a smaller number..."
		else
			echo "Congratulations! You guessed correctly!"
			exit
		fi
	else
		echo "Invalid input! Permitted: Numbers from 0 to 2147483647"
	fi
}
echo
while [[ $response -ne $num_files ]]
do
	echo -n "Guess the number of files in this directory: "
	read response
	echo
	compare_numbers $response $num_files $valid_response
	echo
done
