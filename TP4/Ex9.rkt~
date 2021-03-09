#lang racket

(define my+
  (lambda ls
    (if (null? ls)
        0
        (+ (car ls) (apply my+ (cdr ls))))))