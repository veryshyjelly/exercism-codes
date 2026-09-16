import tables, strutils, re

proc countWords*(s: string): Table[string, int] =
  for w in s.toLower.findAll(re"[A-Za-z0-9]+(?:'[A-Za-z0-9]+)*"):
    if w.len != 0:
      result[w] = result.getOrDefault(w) + 1
