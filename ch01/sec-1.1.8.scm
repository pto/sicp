(define (square x)
  (* x x))

(define (square2 x)
  (exp (double (log x))))

(define (double x)
  (+ x x))

(square 123)
(square2 123)

(define (sqrt2 x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (average x y)
    (/ (+ x y) 2))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))

(sqrt 2)
(sqrt2 2)

(define (sqrt3 x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (average x y)
    (/ (+ x y) 2))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
	guess
	(sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt3 2)
