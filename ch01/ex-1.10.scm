(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

(A 1 10)
; (A 0 (A 1 9))
; (A 0 (A 0 (A 1 8)))
; (A 0 (A 0 (A 0 (A 1 7))))
; (A 0 (A 0 (A 0 (A 0 (A 1 6)))))
; ...
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
; ...
; (A 0 512)
; 1024

(A 2 4)
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; 4 lines skipped
; (A 1 (A 1 4))
; 8 lines skipped
; (A 1 16)
; 32 lines skipped
; 2 ** 16
; 65536

(A 3 3)
; (A 2 (A 3 2))
; (A 2 (A 2 (A 3 1)))
; (A 2 (A 2 2))
; lines skipped
; (A 2 4)
; lines skipped
; 65536

(define (f n) (A 0 n))
; 2*n
(f 5)
(f 1234)

(define (g n) (A 1 n))
; 2 to the power of n
(g 5)
(g 20)

(define (h n) (A 2 n))
; 2 to the power of (2 to the power of (...)) <- n times
(h 1)
(h 2)
(h 3)
(h 4)
(h 5) ; 2 ** 65536, way beyond a double!

(define (k n) (* 5 n n))
; 5 * n squared
(k 3)
