#lang racket

(define evenzeros?
  (lambda (ls)
    (ez-aux ls 1)))

(define ez-aux
  (lambda (ls state)
    (if (null? ls)
        (= state 1)
        (ez-aux (cdr ls) (if (= (car ls) 1)
                             state
                             (modulo (+ state 1) 2))))))