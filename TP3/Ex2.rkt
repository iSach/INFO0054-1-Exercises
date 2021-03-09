(define gribomont
	(lambda (n)
		(if (< n 3) n (gribomont-a n 0 1 2))))

; Si n, a, b, c sont des entiers et que 
; a = grib(k-3), b = grib(k-2), c = grib(k-1)
; renvoie grib(k + n)
(define gribomont-a
	(lambda (n a b c)
		(let ((grib (+ a b c)))
			(if (= n 3)
				grib
				(gribomont-a (- n 1) b c grib)))))