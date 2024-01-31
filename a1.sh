#! /bin/bash
echo "Enter the first number: "
read num1

echo "Enter the second number: "
read num2

# Check if the entered values are numeric
if [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; then
    # Perform addition if both values are numeric
    sum=$((num1 + num2))
    echo "The sum of $num1 and $num2 is: $sum"
else
    # Display an error message if the entered values are not numeric
    echo "Error: Please enter valid numeric values."
fi
