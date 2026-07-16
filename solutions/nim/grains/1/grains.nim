import math

proc onSquare*(n: int): uint64 =
  if n <= 0 or n > 64:
    raise ValueError.new
  2'u64 ^ (n - 1)

proc total*: uint64 =
  2'u64^64 - 1
