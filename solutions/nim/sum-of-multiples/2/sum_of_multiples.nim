import sequtils
from math import sum

proc sum*(limit: int, factors: openArray[int]): int =
  var a = newSeq[bool](limit)
  a[0] = true
  for f in factors:
    if f >= limit or a[f]:
      continue
    var g : int = f
    while g < limit:
      a[g] = true
      g += f

  (1..<limit).toSeq.filterIt(a[it]).sum
