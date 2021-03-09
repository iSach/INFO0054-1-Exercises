#lang racket

(define create-lcg
  (lambda (seed)
    (lambda ()
      (cons seed
            (create-lcg (modulo (* 48271 seed) 2147483647))))))