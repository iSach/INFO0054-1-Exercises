(define mod
	(lambda (a b)
		(if (> a b) (mod (- a b) b) a)))