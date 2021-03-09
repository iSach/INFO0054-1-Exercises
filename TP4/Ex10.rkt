#lang racket

(define my-min
  (lambda ls
    (my-min-aux ls +inf.f)))

(define my-min-aux
  (lambda (ls inf)
    (if (null? ls)
        inf
        (my-min-aux (cdr ls) (if (< (car ls) inf) (car ls) inf)))))