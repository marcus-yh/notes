# Builtin functions

## test

This command check file types and compare values.


### Examples

|Command| Explanation|
|-------|------------|
|```test $<STR1> = $<STR2> && echo same```|compare two strings and print 'same' if equal|
|```test $<STR1> != $<STR2> && echo different```|compare two strings and print 'different' if not equal|
|```test ! $<STR1 = $<STR2> && echo different```|compare two strings and print 'different' if not equal|
|```test $<NUMBER1> -eq $<NUMBER2> echo equal```|compare two numbers and print 'equal' if equal|
|```test $<NUMBER1> -gt $<NUMBER2> echo greater```|test if <NUMBER1\> is greater than <NUMBER2\> and print 'greater' if true|
|```test $<NUMBER1> -le $<NUMBER2> echo smaller```|test if <NUMBER1\> is smaller than <NUMBER2\> and print 'smaller' if true|
|```[ -e $<FILE_PATH> ]```| test if <FILE_PATH\> exists|
|```if [ -e $<FILE_PATH> ]; then echo exists; fi```|test if <FILE_PATH\> exists and echo 'exists' if it does|
