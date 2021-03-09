(define remove-all
	(lambda (ls n)
		(cond ((null? ls) '())
			  ((= (car ls) n) (remove-all (cdr ls) n))
			  (else (cons (car ls) (remove-all (cdr ls) n))))))