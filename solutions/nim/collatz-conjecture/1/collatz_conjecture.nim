iterator collatz(n: int): int =
  var n = n
  while n != 1:
    if n mod 2 == 0:
      n = n div 2
    else:
      n = 3 * n + 1
    yield n

proc steps*(n: int): int =
  if n <= 0: raise ValueError.new
  for i in n.collatz: result += 1
