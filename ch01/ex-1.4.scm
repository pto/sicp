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

(a-plus-abs-b 1.1 2.2)
; expected 3.3

(a-plus-abs-b 123456789012345678901234567890 -1)
; expected 123456789012345678901234567891
