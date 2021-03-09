#lang racket

(define lset
  (lambda (ls)
    (if (null? ls) '(())
        (let ((ssets (lset (cdr ls))))
          (append ssets (map (lambda (s) (cons (car ls) s)) ssets))))))
