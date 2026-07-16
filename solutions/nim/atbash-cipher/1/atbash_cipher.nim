import sequtils, strutils, sugar

iterator chunks[T](items: seq[T], size: int): seq[T] =
  var i = 0
  while i < items.len:
    yield items[i ..< min(i + size, items.len)]
    i += size

proc encode*(s: string): string =
  let c = collect:
    for c in s.toLower:
      if c.isAlphaAscii:
        chr(ord('z') - ord(c)  + ord('a'))
      elif c.isAlphaNumeric:
        c

  let words = collect:
    for word in chunks(c, 5):
      word.join("")

  words.join(" ")


proc decode*(s: string): string =
  let c = collect:
    for c in s.toLower:
      if c.isAlphaAscii:
        chr(ord('z') - ord(c)  + ord('a'))
      elif c.isAlphaNumeric:
        c
  c.join("")
