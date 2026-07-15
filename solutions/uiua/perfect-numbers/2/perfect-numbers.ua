Validate ← ⍤ "number must be positive" > 0

Factors ← ▽⊸(=0˜◿) ⟜⇡

AliquotSum ← /+ Factors

# Classify a positive integer based on its aliquot sum.
# Classification ? Number
ClassifyNumber ← |1 °□⊏ : {
  "perfect" "deficient" "abundant"
} ± - AliquotSum . Validate .
