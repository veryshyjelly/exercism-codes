import std/tables
import strutils

proc transform*(t: Table[int, seq[char]]): Table[char, int] =
  for k, chs in t:
    for c in chs:
      result[c.toLowerAscii] = k
