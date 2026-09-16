import sugar, strutils, math

proc encrypt*(s: string): string =
  let normalized = collect:
    for c in s:
      if c.isAlphaNumeric:
        c.toLowerAscii

  let c = normalized.len.float.sqrt.ceil.int
  let r = if c * (c - 1) >= normalized.len: c - 1 else: c

  for j in 0 ..< c:
    for i in 0 ..< r:
      let cell = i * c + j
      if cell >= normalized.len:
        result.add ' '
      else:
        result.add normalized[cell]
    if j != c - 1:
      result.add ' '
