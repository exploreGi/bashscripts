#!/bin/bash

echo "Enter two numbers:"
read num1 num2
echo "Adding.."
echo `expr $num1 + $num2`
echo "no.of args"
echo $#
