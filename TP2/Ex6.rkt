; Si ls est une liste et n un nombre, alors
; (index-of ls n) renvoie l'indice de la première occurrence de n dans ls.
(define index-of
	(lambda (ls n)
		(cond ((null? ls) #f)
			  ((= (car ls) n) 0)
			  ((not (index-of (cdr ls) n)) #f)
			  (else (+ 1 (index-of (cdr ls) n))))))