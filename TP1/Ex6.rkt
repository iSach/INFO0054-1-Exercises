(define sum-list 
	(lambda (l)
		(if (null? l) 0 (+ (car l) (sum-list (cdr l))))))