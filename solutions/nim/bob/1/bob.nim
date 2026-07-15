import std/strutils

proc hey*(s: string): string =
  let s = s.strip()
  let isQuestion = s.endsWith("?")
  let isYell = s.toUpperAscii() == s and s.toLowerAscii() != s
  if s == "":
    "Fine. Be that way!"
  elif isQuestion and isYell:
    "Calm down, I know what I'm doing!"
  elif isQuestion:
    "Sure."
  elif isYell:
    "Whoa, chill out!"
  else:
    "Whatever."
