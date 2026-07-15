Dirs         ← ⧅⋅⋅1 2 [¯1 0 1]
IsValidIndex ← ×⊃(/×≥₀⋅∘|/×≤) :
# Get all indices of matrix
# ? Shape
GetAllIndices ← (
  ∩⇡°⊟
  ↯∞_2 ⊞⊟
)
# Get all neighboring index of an index
# ? Index Shape
GetAllNeighbors ← (
  ∩¤
  ⊞+Dirs
  ↯∞_2
  ⟜:
  ×∩≡/×⊃(≥₀|>)
  ▽
)
# Convert count array to string
CountToString ← ≡⍣(@ °0|+@0)

# Annotate a garden
# Annotated ? Garden
Annotate ← |1 ⍣(
  ⊸⊃△¤
  ⊃GetAllIndices¤
  ≡(
    GetAllNeighbors
    ⊡
    ⧻▽⊸=@*
  )
  CountToString
  ⍜♭(
    ⊸≠@*
    ⟜:
    ⍜(∩▽|:)
    ⊙◌
  ):
)∘
