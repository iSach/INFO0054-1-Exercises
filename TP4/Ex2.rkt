#lang racket

(define filter_
  (lambda (p? ls)
    (reverse (filter-aux p? ls '()))))

(define filter-aux
  (lambda (p? ls ts)
    (if (null? ls)
        ts
        (filter-aux p? (cdr ls) (if (p? (car ls)) (cons (car ls) ts) ts)))))

(define big
  (lambda (x ls)
    (filter_ (lambda (y) (> y x)) ls)))