import sequtils
import algorithm

proc isTriangle(sides: array[3, int]): bool =
  let sides = sides.sorted
  sides[0] + sides[1] >= sides[2] and sides[0] != 0

proc isEquilateral*(sides: array[3, int]): bool =
  sides.isTriangle and
  sides.deduplicate(false).len == 1

proc isIsosceles*(sides: array[3, int]): bool =
  sides.isTriangle and
  sides.deduplicate(false).len <= 2

proc isScalene*(sides: array[3, int]): bool =
  sides.isTriangle and
  sides.deduplicate(false).len == 3
