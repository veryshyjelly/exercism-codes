import strutils

proc score*(word: string): int =
  let scoring = {
    "aeioulnrst": 1,
    "dg": 2,
    "bcmp": 3,
    "fhvwy": 4,
    "k": 5,
    "jx": 8,
    "qz": 10
  }
  for c in word.toLower:
    for (k, v) in scoring:
      if k.contains c:
        result += v
