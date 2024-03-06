#!/bin/bash

figlet "Bash Calculator"
echo "Select option to calculate:

Addition       (1)
Subtraction    (2)
Multiplication (3)
Division       (4)
"
read -r choice

function calc {
    echo "Enter first number:"
    read -r numOne
    echo "Enter second number:"
    read -r numTwo

    if [[ $numOne =~ ^[0-9]+$ ]] && [[ $numTwo =~ ^[0-9]+$ ]]; then
        case $choice in
            1) result=$((numOne + numTwo))
                echo "The sum of $numOne and $numTwo is $result"
                ;;
            2) result=$((numOne - numTwo))
                echo "The difference of $numOne and $numTwo is $result"
                ;;
            3) result=$((numOne * numTwo))
                echo "The product of $numOne and $numTwo is $result"
                ;;
            4) if [ $numTwo -eq 0 ]; then
                    echo "Division by zero is not allowed"
                    exit 1
                fi
                result=$((numOne / numTwo))
                echo "The division of $numOne and $numTwo is $result"
                ;;
            *) echo "Invalid choice"
                exit 1
                ;;
        esac
    else
        echo "Both arguments must be numbers"
        exit 1
    fi
}

if [[ $choice -lt 1 || $choice -gt 4 ]]; then
    echo "Invalid choice"
    exit 1
else
    calc
fi
