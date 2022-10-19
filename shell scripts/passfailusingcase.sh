#!/bin/bash
echo "Input your percentage"
read var

case $(((var >= 0 && var <= 30)* 1 +   (var > 31 && var  <= 50)   * 2 +   (var >= 51 && var <= 80) * 3 +  (var >= 81 && var <= 100)* 4 )) in   

(1) printf "Fail";; 
(2) printf "division 3";; 
(3) printf "division 2";;
(4) printf "division 1";;

esac

