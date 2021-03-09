(define prefix-n
	(lambda (ls n)
		(if (zero? n) 
			'()
			(cons (car ls) (prefix-n (cdr ls) (- n 1))))))