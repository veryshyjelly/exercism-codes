# The number of grains on a square
# Grains ? Square

Validate ← ⍤ "square must be between 1 and 64" /×⊂⊃(≥1|≤64)

Square ← |1 ⁿ:2 -1 Validate .

# The total number of grains on the board
# Total ?
Total ← |0 /+ Square +1 ⇡ 64
