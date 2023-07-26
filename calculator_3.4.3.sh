#!/bin/bash
while [[ True ]]
do
  read a b c
  if [[ $a == "exit" ]]
  then
    echo "bye"
    break
  elif [[ $a =~ "^[0-9]+$" && $c =~ "^[0-9]+$" ]]
  then
    echo "error"
    break
  else
    case $b in
    "+"|"-"|"*"|"/"|"%"|"**") echo "$(($a $b $c))";; # !!!значения переменных!!!
    *) echo "error" ; break
    esac
  fi
done