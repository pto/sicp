(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -1)
; expected: 2

(a-plus-abs-b -1 1)
; expected: 0

(a-plus-abs-b 42 -42)
; expected: 84

(a-plus-abs-b -1 -1)
; expected: 0
