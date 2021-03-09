(define ml
	(lambda (n x)
		(ml-aux n x '())))

; Si n est un naturel, x est un *réel* quelconque et acc est la liste vide, alors (ml-aux n x acc)
; renvoie une liste de taille n dont chaque élément est x.

; OU 

; Si n est un naturel, x est un *réel* quelconque et acc est la liste quelconque, alors (ml-aux n x acc)
; renvoie la concaténation d'une liste de taille n dont chaque élément est x et de la liste acc.
(define ml-aux
	(lambda (n x acc)
		(if (zero? n) acc
			(ml-aux (- n 1) x (cons x acc)))))