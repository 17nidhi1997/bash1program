#! /bin/bash
echo "enter the value of temperature in(in fahrenheit)"
read t
echo "enter the value of speed in(in miles per hour)"
read s
w=$(echo "scale=3; 35.74 + 0.6215 * $t + 0.4275 * $t * s^0.16" | bc -l)
echo "$w"
