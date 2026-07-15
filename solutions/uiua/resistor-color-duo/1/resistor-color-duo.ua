ColorCode ← map {
  "black"
  "brown"
  "red"
  "orange"
  "yellow"
  "green"
  "blue"
  "violet"
  "grey"
  "white"
} ⇡10

# Turn color-coded bands of resistors into resistance value
# Value ? Colors
ResistorsValue ← |1 + ⊃(×10⊢|⊡1) (get : ColorCode)
