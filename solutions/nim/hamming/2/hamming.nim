import sequtils

proc distance*(a, b: string): int =
  if len(a) != len(b):
    raise ValueError.new
  zip(a, b).countIt it[0] != it[1]
