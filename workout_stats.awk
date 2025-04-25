BEGIN {
	FS="\t"
}
{
	totalsets++
	totalreps += $2
	totalweight += $3 * $2
	sets[$1]++
	reps[$1] += $2
	weight[$1] += $3 * $2
}
END {
	# Print overall stats
	printf "Overall Stats:\nTotal Sets: %4s\nTotal Reps: %4s\nTotal Weight: %4s\n\nIndividual Exercise Stats:\n\n", addcomma(totalsets), addcomma(totalreps), addcomma(totalweight)
	# Print Individual Exercise stats
	for (exercise in sets) {
		printf "Exercise: %s\nSets: %4s\nReps: %4s\nWeight: %4s\n\n", exercise, addcomma(sets[exercise]), addcomma(reps[exercise]), addcomma(weight[exercise])
	}
}

function addcomma(x,	num) {
	num = sprintf(x)
	len = length(num)
	for (i = len - 3; i > 0; i -= 3)
		num = substr(num, 1, i) "," substr(num, i+1)
	return num
}
