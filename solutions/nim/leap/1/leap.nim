proc isLeapYear*(year: int): bool =
  if year mod 100 == 0 and year mod 400 != 0:
    false
  else:
    year mod 4 == 0
