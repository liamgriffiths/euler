(def main-
  (println (+ (mod-filter nums))))

(def nums
  (take 1000 (range)))

(defn mod-filter [a]
  (filter
    (fn [n] 
      (or (= 0 (mod n 3))) (= 0 (mod n 5)) a)))
