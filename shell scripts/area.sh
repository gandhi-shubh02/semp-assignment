#!/bin/bash
echo "Enter the radius of the circle"
read r
area=` expr "3.14 * $r * $r"|bc `
circum=` expr "2 * 3.14 * $r"|bc `
echo "$area is the area"
echo "$circum is the circumference"
