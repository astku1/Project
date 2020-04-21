echo "[Welcome to Guessing game]"

function ask {
	echo "Please guess the number of files in present directory:"
	read guess
    count=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $count ]]
do
	if [[ $guess -lt $count ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "congrsts thats correct answer, here is the list of files:"
echo "---" && ls -1
