(define sum-list
	(lambda (ls)
		(if (null? ls) 0 (sum-list-a ls 0))))

; Si ls est une liste et sum un nombre, alors 
; (sum-list-a ls sum) renvoie la somme de "sum" et de la somme des éléments de ls.
(define sum-list-a
	(lambda (ls sum)
		(cond ((null? (cdr ls)) (+ sum (car ls)))
			  (else (sum-list-a (cdr ls) (+ sum (car ls)))))))

; -----------------------------

(define prod-list
	(lambda (ls)
		(if (null? ls) 1 (prod-list-a ls 1))))

; Si ls est une liste et prod un nombre, alors 
; (sum-list-a ls sum) renvoie le produit de "prod" et du produit des éléments de ls.
(define prod-list-a
	(lambda (ls prod)
		(cond ((null? (cdr ls)) (* prod (car ls)))
			  (else (prod-list-a (cdr ls) (* prod (car ls)))))))

; -----------------------------

(define prefix-n
	(lambda (ls n)
		(if (or (null? ls) (<= n 0)) '() (reverse (prefix-n-a ls '() n)))))

; Si ls est une liste, trim est une liste, et n est un nombre réel, alors
; (prefix-n-a ls trim n) renvoie une liste contenant les éléments de trim, 
; et les n premiers éléments de ls dans l'ordre inverse.
(define prefix-n-a
	(lambda (ls trim n)
		(cond ((or (= n 1) (null? (cdr ls))) (cons (car ls) trim))
			  (else (prefix-n-a (cdr ls) (cons (car ls) trim) (- n 1))))))

; -----------------------------
; NB: '(+ 1 2) = (list '+ '1 '2)
; (list ...) evaluates the arguments

(define zip
	(lambda (ls rs)
		(if (null? ls) '() (reverse (zip-a ls rs '())))))

(define zip-a
	(lambda (ls rs zipped)
		(cond ((null? (cdr ls)) (cons (list (car ls) (car rs)) zipped))
			  (else (zip-a (cdr ls) (cdr rs) (cons (list (car ls) (car rs)) zipped))))))

; -----------------------------

(define index-of
	(lambda (ls n)
		(index-of-a ls n 0)))

; Si ls est une liste, n est un réel quelconque et i est un entier, alors
; (index-of-a ls n i) renvoie la somme de i et de l'indice de n dans ls si n est présent, et #f sinon.
(define index-of-a
	(lambda (ls n i)
		(cond ((null? ls) #f)
			  ((= (car ls) n) i)
			  (else (index-of-a (cdr ls) n (+ i 1))))))


