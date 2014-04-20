(define phi (/ (+ 1 (sqrt 5)) 2))
(define psi (/ (- 1 (sqrt 5)) 2))

(define (theorem n)
  (/ (- (expt phi n)
	(expt psi n))
     (sqrt 5)))

; Fib(0) = 0 by definition
(theorem 0)
; expecting 0

; Fib(1) = 1 by definition
(theorem 1)
; expecting 1

; Assume that Fib(k) ~= (theorem k) for k < n
; Fib(n) = Fib(n-1) + Fib(n-2) by definition
; using (expt phi 2) == (+ phi 1)
; and (expt psi 2) == (+ psi 1)
; by rearranging the phi and psi factors together
; and factoring out (+ 1 phi) and (+ 1 psi)
; we get that Fib(n) ~= (theorem n)

(define (fib n)
  (define (fib-iter a b count)
    (if (= count n)
	b
	(fib-iter (+ a b) a (+ count 1))))
  (fib-iter 1 0 0))

(fib 0)
; expecting 0
(fib 1)
; expecting 1
(fib 2)
; expecting 1
(fib 10)
; result 55
(theorem 10)
; result 54.99999
(fib 50)
; result 12586269025
(theorem 50)
; result 12586269024.999998
(fib 100)
; result 35422484817926191507
(theorem 100)
; result 3.542248481792618e20 -- beyond precision of double
