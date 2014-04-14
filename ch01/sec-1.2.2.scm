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

(define (count-change amount)
  (cc amount 5))

(define (cc amount number-of-coins)
  (display '"(cc ")
  (display amount)
  (display '" ")
  (display number-of-coins)
  (display '")")
  (cond ((= amount 0) 1)
	((or (< amount 0) (= number-of-coins 0)) 0)
	(else (+ (cc amount (- number-of-coins 1))
		 (cc (- amount (first-denomination number-of-coins))
		     number-of-coins)))))

(define (first-denomination number-of-coins)
  (cond ((= number-of-coins 1) 1)
	((= number-of-coins 2) 5)
	((= number-of-coins 3) 10)
	((= number-of-coins 4) 25)
	((= number-of-coins 5) 50)))

(count-change 100)
