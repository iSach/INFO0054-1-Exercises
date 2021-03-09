(define count-all
	(lambda (x ls)
		(cond ((null? ls) 0)
			  ((not (list? (car ls))) 
			  		(if (null? (cdr ls)) 
			  			(if (= x (car ls)) 1 0) 
						(+ (if (= x (car ls)) 1 0) (count-all x (cdr ls)))))
			  (else (+ (count-all x (cdr ls)) (count-all x (car ls)))))))