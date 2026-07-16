import sequtils, math

iterator digits(n: int) : int =
  var n  = n
  while n != 0:
    yield n mod 10
    n = n div 10

proc isArmstrongNumber*(n: int): bool =
  let d = n.digits.toSeq
  d.mapIt(it ^ d.len).sum == n
