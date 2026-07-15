ParseLuhn ← (
  ▽⊸≠@ 
  ⍣(≡⋕|[])
)

ComputeLuhn ← (
  ⊸⧻
  +⊃(⇡|◿2)
  ×+1◿2+1
  ⍜(▽|-9) ⊸>9
  /+
)

# Determine whether or not a string of digits is valid per the Luhn formula
# Valid ? String
Validate ← |1 (
  ParseLuhn
  ⊸⧻
  ⍣(0 ◌ ⍣(°1|°0)|=0 ◿10 ComputeLuhn ◌)
)

# ParseLuhn "091"
# ComputeLuhn
