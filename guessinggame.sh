function codigo {
	echo "How many files are in the current directory?"
	echo "guess"
	read ans
	files=$(ls *.txt | wc -w)
	while [[ $ans -ne $files ]]
	do
		for dato in $ans
		do
			if [[ $dato -gt $files ]] && echo "either too high"
			then
				echo "try again"
			else
				echo "either too low"
				echo "try again"
			fi
		done
		echo "guess"
		read ans
	done
	echo "congrats"
}
codigo

