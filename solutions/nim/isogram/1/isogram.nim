import sequtils
import strutils

proc isIsogram*(s: string): bool =
  let s = s.toLowerAscii.filterIt(it notin {' ', '-'})
  s.deduplicate(false).len == s.len
