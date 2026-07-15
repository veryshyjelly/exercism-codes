# Check if a given ISBN is valid
# ValidationResult ? ISBN
IsValid ← |1 (
  ▽⊸≠@- # first remove all hyphens
  ⍣(⊂:10 ≡⋕ °$"_X"|≡⋕|1_2_3)
  +1⇌⇡10
  ⍣(=0◿11/+×|0)
)
