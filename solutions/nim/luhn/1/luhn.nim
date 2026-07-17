import sequtils, sugar, algorithm

proc isValid*(s: string): bool =
  if s.filter(x => x != ' ').len <= 1:
    return false

  var sum = 0
  for (i, c) in s.filter(x => x != ' ').reversed.pairs():
    if c.ord < '0'.ord or c.ord > '9'.ord:
      return false

    let digit = c.ord - '0'.ord
    var su =  digit + i mod 2 * digit
    if su > 9: su -= 9
    sum += su

  sum mod 10 == 0
