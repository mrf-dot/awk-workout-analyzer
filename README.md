# Awk Workout Analyzer

This is a script I made that will take a TSV value formatted like
```
Exercise	Sets	Reps	Weight
```
and print a workout summary. This summary includes the total sets, reps, and weight as well as the sets, reps, and weight for each individual exercise in the TSV file.

## Running the Script

The script can be run with this command.

```sh
awk -f workout_stats.awk <file>
```

## Example Output

To test the script, I created a TSV file of a leg workout I did on April 24, 2025.

```tsv
Hack Squat	10	0
Hack Squat	20	50
Hack Squat	20	50
Leg Curl	20	165
Leg Curl	20	130
Leg Curl	20	130
Leg Curl	20	130
Hip Abduction	20	295
Hip Abduction	20	250
Hip Abduction	20	250
Hip Abduction	20	205
Reverse Hip Abduction	20	220
Reverse Hip Abduction	20	205
Reverse Hip Abduction	20	205
Reverse Hip Abduction	20	205
Leg Extension	20	110
Leg Extension	20	130
Leg Extension	20	130
Leg Extension	20	115
Calf Extension	10	220
Calf Extension	10	220
Calf Extension	10	220
Calf Extension	10	240
```

I then called the program with

```sh
awk -f workout_stats test-data/2025-04-24-leg-workout.txt
```

This produced the following output

```
Overall Stats:
Total Sets:   23
Total Reps:  410
Total Weight: 68,500

Individual Exercise Stats:

Exercise: Leg Extension
Sets:    4
Reps:   80
Weight: 9,700

Exercise: Reverse Hip Abduction
Sets:    4
Reps:   80
Weight: 16,700

Exercise: Leg Curl
Sets:    4
Reps:   80
Weight: 11,100

Exercise: Calf Extension
Sets:    4
Reps:   40
Weight: 9,000

Exercise: Hack Squat
Sets:    3
Reps:   50
Weight: 2,000

Exercise: Hip Abduction
Sets:    4
Reps:   80
Weight: 20,000
```
