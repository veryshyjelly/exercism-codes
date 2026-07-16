import strutils, sugar

func abbreviate*(s: string): string =
  let words = collect:
    for words in s.split({' ', '-'}):
      let w = collect:
        for c in words:
          if c.isAlphaAscii: c
      if w.len != 0: w[0].toUpperAscii

  words.join("")
