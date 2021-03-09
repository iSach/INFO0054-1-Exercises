(define big
	(lambda (n l)
		(cond ((null? l) l)
			  ((> (car l) n) (cons (car l) (big n (cdr l))))
		      (else (big n (cdr l))))))