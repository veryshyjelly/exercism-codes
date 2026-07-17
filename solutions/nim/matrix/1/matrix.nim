import strutils, sequtils, sugar

proc row*(s: string, n: int): seq[int] =
  let mat = s.splitLines.map(line => split(line))
  for i in 0 ..< mat[0].len:
    result.add(mat[n - 1][i].parseInt)

proc column*(s: string, n: int): seq[int] =
  let mat = s.splitLines.map(line => split(line))
  for i in 0 ..< mat.len:
    result.add(mat[i][n - 1].parseInt)
