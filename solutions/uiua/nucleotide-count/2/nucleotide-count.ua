Validate ← ⍤ "invalid nucleotide in strand" /×∊"AGTC"

# Count the four nucleotides in a DNA string
# Counts ? DNA
NucleotideCounts ← |1 (
  Validate .
  map ⟜(/+⍉⊞=) "ACGT"
)
