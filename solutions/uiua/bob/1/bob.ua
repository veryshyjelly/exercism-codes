Yelling  ← ⊃(°1/×=⊸⌵|°0/×=⊸¯⌵)
Question ← ◌°$"_?"
# Respond to a phrase as Bob would
# Response ? Phrase

HeyBob ← |1 ⍣(
  "Calm down, I know what I'm doing!" ⊃(Question|Yelling)
| "Sure." Question
| "Whoa, chill out!" Yelling
| "Fine. Be that way!" °"" ▽⊸≠@ 
| "Whatever."
)
