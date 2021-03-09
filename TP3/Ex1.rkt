(define min
	(lambda (l)
		(min-a l +inf.f)))

(define min-a
	(lambda (l x)
		(cond ((null? l) x)
			  ((< (car l) x) (min-a (cdr l) (car l)))
			  (else (min-a (cdr l) x)))))