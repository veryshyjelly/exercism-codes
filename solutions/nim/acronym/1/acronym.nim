import strutils, sequtils

func abbreviate*(s: string): string =
  s
    .split({' ', '-'})
    .mapIt(it.filter(isAlphaAscii))
    .filterIt(len(it) != 0)
    .mapIt(it[0].toUpperAscii)
    .join("")
