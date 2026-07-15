# Determine a sentence's acronym
# Acronym ? Sentence
Acronym ← |1 (
  ⌵
  " _-"
  ⊸⊞≠ # test for space chars
  /×  # multiply all the entries of row (practically anding them)
  ⊜⊢  # first is applied on each group of the partition
)
