import random, algorithm, math

type
  Character* = object
    strength*: int
    dexterity*: int
    constitution*: int
    intelligence*: int
    wisdom*: int
    charisma*: int
    hitpoints*: int

proc ability*: int =
  var ducks = newSeq[int]()
  for i in 1..4:
    ducks.add(rand(1..6))
  ducks.sort
  for i in 1..3:
    result += ducks[i]

proc modifier*(n: int): int =
  ((n - 10) / 2).floor.int

proc initCharacter*: Character =
  let consti = ability();
  Character(
    strength: ability(),
    dexterity: ability(),
    constitution: consti,
    intelligence: ability(),
    wisdom: ability(),
    charisma: ability(),
    hitpoints: 10 + modifier(consti)
  )
