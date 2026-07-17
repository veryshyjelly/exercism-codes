import times
import math

proc addGigasecond*(dt: DateTime): DateTime =
  dt + initDuration(seconds = 10 ^ 9)
