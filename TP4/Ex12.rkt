#lang racket

(define curry
  (lambda (f d)
    (lambda ds (apply f (cons d ds)))))