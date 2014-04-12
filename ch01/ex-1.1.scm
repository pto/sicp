10
; expected: 10

(+ 5 3 4)
; expected: 12

(- 9 1)
; expected: 8

(/ 6 2)
; expected: 3

(+ (* 2 4) (- 4 6))
; expected: 6

(define a 3)
(define b (+ a 1))
(+ a b (* a b))
; expected: 19

(= a b)
; expected: #f

(if (and (> b a) (< b (* a b)))
    a
    b)
; expected: 3

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; expected: 16

(+ 2 (if (> b a) b a))
; expected: 6

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))
; expected: 16
