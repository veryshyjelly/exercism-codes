import strutils

proc largestProduct*(s: string, span: int): int =
  if span <= 0 or span > s.len:
    raise ValueError.new
  for i in 0 .. s.len-span:
    var r = 1
    for c in s[i ..< i+span]:
      if c.isAlphaAscii:
        raise ValueError.new
      r *= c.ord - '0'.ord
    result = result.max r
