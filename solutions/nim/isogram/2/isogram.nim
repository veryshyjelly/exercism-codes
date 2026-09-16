import sequtils, strutils, sugar

proc isIsogram*(s: string): bool =
  let s = collect:
    for c in s.toLowerAscii:
      if c notin {' ', '-'}: c
  s.deduplicate(false).len == s.len
