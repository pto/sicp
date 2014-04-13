(define (cubert-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cubert-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
	(* 2 guess))
     3))

(define (good-enough? guess prev-guess)
  (< (abs (- guess prev-guess)) (/ guess 1e15)))

(define (cubert x)
  (cubert-iter 1.0 0.0 x))

(define (cube x)
  (* x x x))

(cube (cubert 3))
(cube (cubert 25))
(cube (cubert 1234567890))
(cube (cubert 0.123456789))
