#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#firstnum=5
#secondnum=2
read -p "Give me a number" firstnum
read -p "Give me a another number" secondnum

sum=$((firstnum + secondnum))
subtraction=$((firstnum - secondnum))
multiplication=$((firstnum * secondnum))
remainder=$((firstnum % secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $subtraction
$firstnum divided by $secondnum is $dividend, with the remainder of $remainder
$firstnum times $secondnum is $multiplication
  - More precisely, it is $fpdividend
EOF
