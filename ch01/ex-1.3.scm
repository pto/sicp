(define (ss-larger a b c)
  (cond ((= a (least a b c)) (sum-of-squares b c))
	((= b (least a b c)) (sum-of-squares a c))
	(else (sum-of-squares a b))))

(define (sum-of-squares x
  (+ (square x) (square y)))

(define (least a b c)
  (cond ((and (<= a b) (<= a c)) a)
	((and (<= b a) (<= b c)) b)
	(else c)))

(ss-larger 1 2 3)
(ss-larger 2 1 3)
(ss-larger 3 1 2)
(ss-larger 2 3 1)
(ss-larger 1 3 2)
(ss-larger 3 2 1)
; expected: 13

(ss-larger 1 1 2)
(ss-larger 1 2 1)
(ss-larger 2 1 1)
; expected: 5

(ss-larger 1 2 2)
(ss-larger 2 1 2)
(ss-larger 2 2 1)
; expected: 8

(ss-larger 3 3 3)
; expected: 18
