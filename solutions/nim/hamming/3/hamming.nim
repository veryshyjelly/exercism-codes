import sequtils

proc distance*(a, b: string): int =
  if a.len != b.len:
    raise ValueError.new
  zip(a, b).countIt it[0] != it[1]
