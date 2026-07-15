IsSublist ← ⍣(
  ⊃(∘|⊸⧻ ⧈∘ ⍤.±.⧻)
  ↯:
  /↥≡≍
| 1
)

# Compare two lists and determine their classification
# Classification ? First Second
Classify ← |2 (
  ⍣("equal" ⍤.≍
  | "superlist" ⍤. IsSublist :
  | "sublist" ⍤. IsSublist
  | "unequal")
)
