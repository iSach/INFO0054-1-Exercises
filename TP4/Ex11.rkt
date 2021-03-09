#lang racket

(define linear-map-factory
  (lambda ls
;    (lambda rs (dot-prod ls rs 0)))) Alternative
    (lambda (rs) (dot-prod ls rs 0))))

(define dot-prod
  (lambda (ls rs sum)
    (if (null? ls)
        sum
        (dot-prod (cdr ls) (cdr rs) (+ sum (* (car ls) (car rs)))))))