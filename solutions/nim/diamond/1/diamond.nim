import sugar, strutils

proc diamond*(c: char): string =
  let n = ord(c) - ord('A') + 1
  var s = newSeq[char](2 * n - 1)
  for i in 0 ..< n:
    s[n - i - 1] = chr(i + ord('A'))
    s[n + i - 1] = chr(i + ord('A'))

  for i in 0 ..< 2*n - 1:
    let c = chr(n - abs(i - n + 1) - 1 + ord('A'))
    let line = collect:
      for ch in s:
        if ch == c: c else: ' '
    result.add line.join("") & "\n"
