#lang racket

; Tail recursive
(define compose-n
  (lambda (f n)
    (compose-n-aux f (lambda (x) x) n)))

(define compose-n-aux
  (lambda (f g n)
    (if (= n 0)
        g
        (compose-n-aux f (lambda (x) (f (g x))) (- n 1)))))

; Not tail recursive
(define compose-n2
  (lambda (f n)
    (if (zero? n)
        (lambda (x) x)
        (lambda (x) (f ((compose-n2 f (- n 1)) x))))))


; Variant 1
(define compose-fgf
  (lambda (f)
    (lambda (g)
      (lambda (x) (f (g (f x)))))))

; Variant 2
(define compose-fgab
  (lambda (f g a b)
    (cond [(and (zero? a) (zero? b)) (lambda (x) x)]
          [(zero? a) (lambda (x) (g ((compose-fgab f g a (- b 1)) x)))]
          [else (lambda (x) (f ((compose-fgab f g (- a 1) b) x)))])))

; Variant 3

(define compose-fa
  (lambda (f a b)
    (compose-fa-aux f (lambda (x) x) a b)))

(define compose-fa-aux
  (lambda (f g a b)
    (if (= a 0)
        (lambda (x) (g (expt b x)))
        (compose-fa-aux f (lambda (x) (f (g x))) (- a 1) b))))
        