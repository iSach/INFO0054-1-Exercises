(define sum-int
	(lambda (n)
		(sum-int-acc n 0)))

; Si n et m sont des nombres, alors 
; (sum-int-acc n m) renvoie m + somme des naturels jusque n
(define sum-int-acc
	(lambda (n m)
		(if (zero? n) m
			(sum-int-acc (- n 1) (+ n m)))))