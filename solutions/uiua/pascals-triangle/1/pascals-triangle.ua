# Return the first N rows of Pascal's triangle.
# Rows ? NumberOfRows
Triangle ← |1 ⍣(
  {}°0
| ∧(⊂ : ⍜(°□|⊂⤚⊂1 ⧈₂/+) ⊸⊣ ◌) : {[1]} ⇡-1
)
