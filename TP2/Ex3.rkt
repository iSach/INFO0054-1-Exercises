(define zip
	(lambda (ls rs)
		(if (null? ls) '()
					   (cons (list (car ls) (car rs)) (zip (cdr ls) (cdr rs))))))