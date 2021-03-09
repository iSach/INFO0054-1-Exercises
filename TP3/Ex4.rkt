; Si ls est une liste, alors [[(frequency ls)]]
; est la table d'occurence des éléments de ls.
(define frequency
	(lambda (ls)
		(frequency-a ls '())))

; Si ls st une liste, et ts une table d'occurrence, 
; (frequency-a ls ts) renvoie la fusion de ts et de la table d'occurrence de ls.
(define frequency-a
	(lambda (ls ts)
		(if (null? ls) ts
		(frequency-a (cdr ls) (frequency-add (car ls) ts)))))

; Si x est un symbole et ts une table d'occurrence, 
; (frequency-add x ts) renvoie ts où l'occurrence de x est comptée en plus.
(define frequency-add
	(lambda (x ts)
		(cond ((null? ts) (list (cons x 1)))
			  ((eq? (caar ts) x) (cons (cons x (+ (cdar ts) 1)) (cdr ts)))
			  (else (cons (car ts) (frequency-add x (cdr ts)))))))
	
