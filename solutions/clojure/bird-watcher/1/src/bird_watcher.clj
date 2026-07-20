(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4]
  )

(def birds-per-day [2 5 0 7 4 1])

(def today last)

(defn inc-bird [birds]
  (update birds (dec (count birds)) inc))

(defn day-without-birds? [birds]
  (some? (some zero? birds))
  )

(defn n-days-count [birds n]
   (->> birds
     (take n)
     (apply +)))

(defn busy-days [birds]
  (->> birds
    (filter (partial < 4))
    count)
  )

(defn odd-week? [birds]
  (= birds [1 0 1 0 1 0 1])
  )
