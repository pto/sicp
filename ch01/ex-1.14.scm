(define step 0)

(define (count-change amount)
  (set! step 0)
  (cc amount 5 0))

(define (cc amount kinds-of-coins level)
  (display-parms amount kinds-of-coins level)
  (cond ((= amount 0) 1)
	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc amount
		     (- kinds-of-coins 1)
		     (+ level 1))
		 (cc (- amount
			(first-denomination kinds-of-coins))
		     kinds-of-coins
		     (+ level 1))))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))


(define (display-parms amount kinds-of-coins level)
  (set! step (+ step 1))
  (display step)
  (display ": ")
  (display-spaces level)
  (display "(cc ")
  (display amount)
  (display " ")
  (display kinds-of-coins)
  (display ")\n"))

(define (display-spaces level)
  (cond ((> level 0)
	 (display "   ")
	 (display-spaces (- level 1)))))

(count-change 11)
; depth is O(n) on amount (worst case is all pennies)
; steps could be O(n^3): n steps for each way of counting
; but actually, others have shown it is O(n^5)
