#!/bin/awk -f
BEGIN {}
{
  s+=sprintf("%d\n", ($1 / 3) - 2)
}
END {
  print s
}
