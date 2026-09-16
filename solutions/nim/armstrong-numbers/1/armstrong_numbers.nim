import math

proc isArmstrongNumber*(n: int): bool =
  let m = len($n)
  var o = 0
  var p = n
  while p != 0:
    o += (p mod 10) ^ m
    p = p div 10
  o == n
