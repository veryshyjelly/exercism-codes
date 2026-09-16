import sequtils
import algorithm

template checkTriangle(sides: array[3, int]) =
  let sdes = sides.sorted
  if sdes[0] + sdes[1] < sdes[2] or sdes[0] == 0:
    return false

proc isEquilateral*(sides: array[3, int]): bool =
  checkTriangle sides
  sides.deduplicate(false).len == 1

proc isIsosceles*(sides: array[3, int]): bool =
  checkTriangle sides
  sides.deduplicate(false).len <= 2

proc isScalene*(sides: array[3, int]): bool =
  checkTriangle sides
  sides.deduplicate(false).len == 3
