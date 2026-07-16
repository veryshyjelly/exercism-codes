import math, sugar, algorithm

proc convert*(digits: openArray[int], fromBase: int, toBase: int): seq[int] =
  if fromBase <= 1 or toBase <= 1: raise ValueError.new

  var num = 0
  for i, dig in digits.reversed.pairs:
    if dig >= fromBase or dig < 0: raise ValueError.new
    num += fromBase ^ i * dig

  var dig: int
  result = collect:
    while num != 0:
      (num, dig) = divmod(num, toBase)
      dig

  result.reverse
  if result.len == 0:
    result = @[0]
