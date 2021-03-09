(define prod-list
	(lambda (l)
		(if (null? l) 1 (* (car l) (prod-list (cdr l))))))