Braces       ← "()[]{}"
FilterBraces ← ▽⊸∊Braces
Pairs        ← ↯∞_2 Braces

# Determine if a string has matching (balanced) brackets.
# Result | String
IsPaired ← |1 ≍"" ⍥(
  ∧(
    ▽¬⊸⦷
  ) Pairs
)∞ FilterBraces
