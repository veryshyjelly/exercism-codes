┌─╴Clock
  # Create a new clock
  # Clock ? Hours Minutes
  New ← |2 ◿1440 +×60

  # Add minutes to a clock
  # Clock ? Minutes Clock
  Add ← |2 ◿1440 +

  # Subtract minutes to a clock
  # Clock ? Minutes Clock
  Sub ← |2 ◿1440 -

  # Return a clock's time formatted as a string
  # String ? Clock
  Display ← |1 /$"_:_" ≡(⇌⬚@0↯[2]⇌°□) °⋕ [⊃(⌊÷60|◿60)]
└─╴
