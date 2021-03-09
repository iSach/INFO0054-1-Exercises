#lang racket

(define f (lambda (n) (fx n 0 '())))

; Si k et i sont des entiers et u une liste contenant f(i-1), ..., f(0) alors
; (fx k i u) renvoie f(i+k). En particulier, si i vaut 0 et u est vide, renvoie f(k)
(define fx
  (lambda (k i u)
    (let ((next
           (modulo (apply + (map (lambda (x y) (* (+ 2 x) (+ 3 y)))
                                 u
                                 (reverse u)))
                   (+ i i 3))))
      (if (zero? k)
          next
          (fx (- k 1) (+ i 1) (cons next u))))))
