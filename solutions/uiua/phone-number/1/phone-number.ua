CleanPuncts          ← ▽¬/+⊞="().+- " .
Parse                ← ≡⋕ ↙₋₁₀
ValidatePunct        ← ⍤ "invalid character" ⍣(1◌≡⋕|0)
ValidateLength       ← ⍤ "invalid length" ±+⊃(=10|=11) ⧻
ValidateCountryCode  ← ⍤ "invalid country code" ⍣(1°10 ⧻|1 ◌°$"1_" °11 ⊸⧻|0)
ValidateAreaCode     ← ⍤ "invalid area code" >1 ⊢
ValidateExchangeCode ← ⍤ "invalid exchange code" >1 ⊡3

# Cleanup and validate a phone number
# Cleaned ? Uncleaned
Clean ← |1 (
  CleanPuncts
  ValidatePunct .
  ValidateLength .
  ValidateCountryCode .
  Parse
  ValidateAreaCode .
  ValidateExchangeCode .
  ≡+@0
)

Clean "22234567890"
