# The number of grains on a square
# Grains ? Square
Square ← |1 ⍣(ⁿ : 2 -1 ⊸(°1>0) ⊸(°1≤64)|"square must be between 1 and 64")

# The total number of grains on the board
# Total ?
Total ← |0 /(+Square) ⇡64
