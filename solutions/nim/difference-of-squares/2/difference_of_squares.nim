import math

proc squareOfSum*(n: int): int =
  for i in 1..n:
    result += i
  result *= result

proc sumOfSquares*(n: int): int =
  for i in 1..n:
    result += i^2

proc difference*(n: int): int =
  squareOfSum(n) - sumOfSquares(n)
