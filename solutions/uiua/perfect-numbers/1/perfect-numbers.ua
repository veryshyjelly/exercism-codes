Validate ← ⍤ "number must be positive" > 0
# Classify a positive integer based on its aliquot sum.
# Classification ? Number
ClassifyNumber ← |1 °□⊏ : {
  "perfect" "deficient" "abundant"
} ± - /+ ▽⊸(=0˜◿) ⟜⇡ . Validate .
