import tables

proc isPaired*(s: string): bool =
  const closing = {
    ']' : '[',
    ')' : '(',
    '}' : '{'
  }.toTable
  let opening = {'(', '[', '{'}
  var stack : seq[char] = @[]
  for c in s:
    if c in opening:
      stack.add(c)
      continue
    try:
      let d = closing[c]
      if stack.len == 0 or stack[^1] != d:
        return false
      discard stack.pop
    except KeyError:
      discard

  stack.len == 0
