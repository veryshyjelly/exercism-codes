import strutils
import sequtils

proc isPangram*(s: string): bool =
  s.toLowerAscii.filter(isAlphaAscii).deduplicate(false).len == 26
