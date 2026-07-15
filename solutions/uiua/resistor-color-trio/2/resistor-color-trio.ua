ColorCode ← map {
  "black"
  "brown"
  "red"
  "orange"
  "yellow"
  "green"
  "blue"
  "violet"
  "grey"
  "white"
} ⇡10

OhmValue ← ×+⊃(×10⊢|⊡1|ⁿ ⊡2 ⊙10) (get : ColorCode)
# Get the label of the resistors based on their colors
# Label ? Colors
Label ← |1 ⍣(
  "0 ohms" °0
| $"_ gigaohms" ÷°0⤚◿ ⁿ₉ 10 .
| $"_ megaohms" ÷°0⤚◿ ⁿ₆ 10 .
| $"_ kiloohms" ÷°0⤚◿ ⁿ₃ 10 .
| $"_ ohms"
) OhmValue
