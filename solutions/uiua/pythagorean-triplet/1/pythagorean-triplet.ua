# Find the Pythagorean triplet for a given sum
# Triplets ? Sum
TripletsWithSum ← |1 (
  ⊸⇡    # get range
  ↘₁    # drop 0
  ⊞⊟.   # take all combinations with itself
  ↯ ∞_2 # reshape to array of pairs
  .
  ▽=⊸⌊√≡(/+)ⁿ2 # filter only valid triplets
  ◴≡(⍆⊂√/+ⁿ2.) # compute triplets and dedup
  ⟜≡/+         # compute sum of the triplets
  ▽⊃(=⋅⊙∘|∘)   # filter according to sum
)
