(define (fib a)
  (cond ((= a 0) 0)
	((= a 1) 1)
	(else (+ (fib (- a 1))
		 (fib (- a 2))))))

(fib 5)
(fib 6)
(fib 20)

(define (fib2 n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(fib2 5)
(fib2 6)
(fib2 20)
