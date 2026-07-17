import strutils, sequtils

proc isValid*(s: string): bool =
  var total = 0
  var l = 0
  for (i, c) in s.filter(isAlphaNumeric).pairs():
    l += 1
    if c == 'X':
      total += 10
    else:
      total += (10 - i) * (ord(c) - ord('0'))
  l == 10 and
  total mod 11 == 0
