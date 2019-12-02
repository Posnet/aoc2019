#!/bin/awk -f

function collatz (num) {
  num = sprintf("%d\n", (num / 3) - 2)
  if (num < 1)
  return 0
  return num + collatz(num)
}

BEGIN {}
{
  s+=collatz($1)
}
END {
  print s
}
