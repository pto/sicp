(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1)) 
	 (* 2 (f-recursive (- n 2)))
	 (* 3 (f-recursive (- n 3))))))

(f-recursive 1)
(f-recursive 3)
(f-recursive 10)
(f-recursive 15)
(f-recursive 3.5)

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

(define (f-iter a b c count)
  (if (< count 3)
      a
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(f 1)
(f 3)
(f 10)
(f 15)
(f 3.5) ; nope, recurse and memoize instead

