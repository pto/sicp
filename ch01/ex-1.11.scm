(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1)) 
	 (* 2 (f-recursive (- n 2)))
	 (* 3 (f-recursive (- n 3))))))

(f-recursive 1)
(f-recursive 10)
(f-recursive 3.5)

(define (f n)
  (if (< n 0)
      n
      (f-iter 0 1 2 n)))

(define (f-iter a b c count)
  (if (<= count 0)
      a
      (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))

(define (<= a b)
  (or (< a b) (= a b)))

(f 3)
(f 10)
(f 3.5) ; nope, recurse and memoize instead

