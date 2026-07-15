import math, sequtils, bitops

type
  Allergen* = enum
    Eggs, Peanuts, Shellfish, Strawberries, Tomatoes, Chocolate, Pollen, Cats

proc isAllergicTo*(score: int, allergen: Allergen): bool =
  (bitand((2 ^ ord(allergen)), score)) != 0

proc allergies*(score: int): set[Allergen] =
  var res : set[Allergen] = {}
  for a in Allergen.items.toSeq.filterIt(isAllergicTo(score, it)):
    res.incl(a)
  res
