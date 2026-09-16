import math

proc score*(x, y: float): int =
  let distance = (x^2 + y^2).sqrt
  if distance > 10: 0
  elif distance > 5: 1
  elif distance > 1: 5
  else: 10
