(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(square (sqrt 1e-4))
; expected: not the correct 1e-4
;(square (sqrt 1e15))
; expected: endless loop

(define (sqrt-iter-improved guess prev-guess x)
  (if (good-enough-improved? guess prev-guess)
      guess
      (sqrt-iter-improved (improve guess x) guess x)))

(define (good-enough-improved? guess prev-guess)
  (< (abs (- guess prev-guess)) (/ guess 1000)))

(define (sqrt-improved x)
  (sqrt-iter-improved 1.0 0.0 x))

(square (sqrt-improved 1e-4))
; expected 1e-4
(square (sqrt-improved 1e-8))
; expected: 1e-8
(square (sqrt-improved 1e15))
; expected : 1e15
