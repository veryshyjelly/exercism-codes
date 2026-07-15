PlantMap ← map "GCRV" {"grass" "clover" "radishes" "violets"}

Childs ← {"Alice" "Bob" "Charlie" "David" "Eve" "Fred" "Ginny" "Harriet" "Ileana" "Joseph" "Kincaid" "Larry"}

# Determine which plants a child is responsible for
# Plants ? Garden Child
Plants ← |2 (
  ⨂ Childs □ :
  [⊃(×2|+1×2)]
  : ¤
  ⊜□ ¬⊸=@\n
  ♭≡(◇˜⊏)
  get : PlantMap
)
