#lang racket

(define prod-cart-naive
  (lambda (ls ts)
    (if (null? ls) '()
        (append (map (lambda (x) (cons (car ls) x)) ts)
                (prod-cart-naive (cdr ls) ts)))))

; More efficient
(define prod-cart
  (lambda (ls ts)
    (prod-cart-a ls ts '())))

; Si ls, ts et u sont des listes, alors (prod-cart-a ls ts u) renvoie la concaténation
; du produit cartésien de ls et ts, et de u.
(define prod-cart-a
  (lambda (ls ts u)
    (if (null? ls) u
        (prod-cart-a (cdr ls) ts (append u (map (lambda (x) (cons (car ls) x)) ts))))))