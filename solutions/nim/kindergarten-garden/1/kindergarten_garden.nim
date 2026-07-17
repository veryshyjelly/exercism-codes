import strutils, sugar

type
  Plant* = enum
    Clover, Grass, Radishes, Violets

proc plants*(garden: string, student: string): seq[Plant] =
  let lines = garden.splitLines false
  let roll = student[0].ord - 'A'.ord
  collect:
    for row in 0..1:
      for col in [2*roll, 2*roll+1]:
        let plant = lines[row][col]
        if plant == 'C': Clover
        elif plant == 'G': Grass
        elif plant == 'R': Radishes
        elif plant == 'V': Violets
