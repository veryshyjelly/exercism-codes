AminoAcids ← {
  "Methionine"
  "Phenylalanine"
  "Leucine"
  "Serine"
  "Tyrosine"
  "Cysteine"
  "Tryptophan"
  "STOP"
}

Codons ← {
  ["AUG"]
  ["UUU" "UUC"]
  ["UUA" "UUG"]
  ["UCU" "UCC" "UCA" "UCG"]
  ["UAU" "UAC"]
  ["UGU" "UGC"]
  ["UGG"]
  ["UAA" "UAG" "UGA"]
}

IndexOf ← ⨂ : 1 ∊ ≡◇(↯[4 3]) Codons

Validate ← ⍤ "invalid codon" <8

AminoAcid ← °□ ⊏ : AminoAcids Validate . IndexOf

ProtiensInner ← ⍢(
  :□AminoAcid⊃(↙₃|↘₃)
| ⍣(¬≍ "STOP" ⍩(AminoAcid) ↙₃
  | 0)
)

# Translate RNA sequences into proteins.
# Proteins ? RNA
Proteins ← |1 ⍣({}°[]|∘) ProtiensInner
