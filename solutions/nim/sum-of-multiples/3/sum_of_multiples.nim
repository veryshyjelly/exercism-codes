proc sum*(limit: int, factors: openArray[int]): int =
  var a = newSeq[bool](limit)
  a[0] = true
  for f in factors:
    if f >= limit or a[f]:
      continue
    var g = f
    while g < limit:
      a[g] = true
      g += f

  for i in 1..<limit:
    if a[i]: result += i
