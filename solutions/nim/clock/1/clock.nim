import strformat

type
  Clock* = object
    hour*: range[0..23]
    minute*: range[0..59]

  Minutes* = distinct int

proc initClock*(hour, minute: int): Clock =
  let mins = (minute mod 60 + 60) mod 60
  let hour = ((hour + (minute - mins) div 60) mod 24 + 24) mod 24
  Clock(hour: hour, minute: mins)

proc `$`*(c: Clock): string =
  &"{c.hour:02}:{c.minute:02}"

proc `+`*(c: Clock, v: Minutes): Clock =
  initClock(c.hour, c.minute + int(v))

proc `-`*(c: Clock, v: Minutes): Clock =
  initClock(c.hour, c.minute - int(v))
