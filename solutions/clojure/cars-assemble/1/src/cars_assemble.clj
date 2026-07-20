(ns cars-assemble)

(defn success-rate [rate]
  (cond
    (= 0 rate) 0
    (> 5 rate) 1
    (> 9 rate) 0.9
    (= 9 rate) 0.8
    :else 0.77
    )
  )

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (* speed 221 (success-rate speed))
  )

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60))
  )
