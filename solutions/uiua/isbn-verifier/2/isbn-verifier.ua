# Check if a given ISBN is valid
# ValidationResult ? ISBN
IsValid ← |1 (
  ▽⊸≠@-                      # first remove all hyphens
  ⍣(⊂:10 ≡⋕ °$"_X"|≡⋕|1_2_3) # convert the x to 10 check for parse error
  +1⇌⇡10                     # range for multiplication
  ⍣(=0◿11/+×|0)              # verification formula
)
