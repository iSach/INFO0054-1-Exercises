#lang racket

(define lpref
  (lambda (u)
    (lpref-a u '())))

(define lpref-a
  (lambda (u v)
    (if (null? u)
        (cons '() v)
        (lpref-a (reverse (cdr (reverse u))) (cons u v)))))
        
