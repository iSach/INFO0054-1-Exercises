; Liste non vide
(define min1
	(lambda (ls)
		(cond ((null? (cdr ls)) (car ls))
			  ((< (car ls) (min1 (cdr ls))) (car ls))
			  (else (min1 (cdr ls))))))

(define min2
	(lambda (ls)
		(cond ((null? ls) +inf.f)
			  ((< (car ls) (min2 (cdr ls))) (car ls))
			  (else (min2 (cdr ls))))))

(define min3
	(lambda (ls)
		(if (null? ls) +inf.f
			(min-aux (cdr ls) (car ls)))))

; Si x est un nombre et ls une liste, alors (min-aux ls x) renvoie
; la plus petite valeur entre x et le minimum de ls.
(define min-aux
	(lambda (ls x)
		(cond ((null? ls) x)
			  ((< (car ls) x) (min-aux (cdr ls) (car ls)))
			  (else (min-aux (cdr ls) x)))))