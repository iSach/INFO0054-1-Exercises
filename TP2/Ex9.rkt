(define unique
	(lambda (ls)
		(if (null? ls) ls (reverse (unique-aux ls '())))))

(define unique-aux
	(lambda (ls acc)
		(cond ((null? ls) acc)
			  ((contains acc (car ls)) (unique-aux (cdr ls) acc))
			  (else (unique-aux (cdr ls) (cons (car ls) acc))))))

(define contains
	(lambda (ls x)
		(cond ((null? ls) #f)
			  ((= (car ls) x) #t)
			  (else (contains (cdr ls) x)))))