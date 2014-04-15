;  1
;  1 1
;  1 2 1
;  1 3 3 1
;  1 4 6 4 1

(define (pascal row column)
  (cond ((= column 1) 1)
	((= column row) 1)
	(else (+ (pascal (- row 1) (- column 1))
		 (pascal (- row 1) column)))))

(pascal 5 3)

(define (display-pascal rows)
  (row-iter 1 rows))

(define (row-iter current-row rows)
  (cond ((not (> current-row rows))
	 (display-row current-row)
	 (row-iter (+ current-row 1) rows))))

(define (display-row row)
  (column-iter 1 row)
  (display "\n"))

(define (column-iter current-column row)
  (cond ((not (> current-column row))
	 (display (pascal row current-column))
	 (display " ")
	 (column-iter (+ current-column 1) row))))

(display-pascal 25)

