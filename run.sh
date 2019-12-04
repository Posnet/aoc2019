#!/bin/sh

printf -- "\n--- Day 1: The Tyranny of the Rocket Equation ---\n"

printf "\nPart 1.\n"
./01p1.awk < ./input_01.txt

printf "\nPart 2.\n"
./01p2.awk < ./input_01.txt

printf -- "\n-------------------------------------------------\n"

printf -- "\n--- Day 2: 1202 Program Alarm -------------------\n"

printf "\nPart 1.\n"
./02.py 12 2 < ./input_02.txt

printf "\nPart 2.\n"
./02.py 19690720 < ./input_02.txt

printf -- "\n-------------------------------------------------\n"


printf -- "\n--- Day 3: Crossed Wires ------------------------\n"

printf "\nPart 1.\n"
nim c O3.nim
./O3 < input_03.txt
rm O3

printf -- "\n-------------------------------------------------\n"