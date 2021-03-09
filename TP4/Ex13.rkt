#lang racket

(define my-map
  (lambda args
    (reverse (my-map-aux (car args) (cdr args) '()))))

(define my-map-aux
  (lambda (f lls ys)
    (if (null? (car lls))
        ys
        (let ([cutlists (cut-lls lls '() '())])
          (my-map-aux f (cdr cutlists) (cons (apply f (car cutlists)) ys))))))
        

; list of lists -> ((list of cars) (list of cdrs))
; if k = (cut-lls lls cars cdrs)
; then (car k) = list of all the cars of the lists
; then (cdr k) = list of all the cdrs of the lists
(define cut-lls
  (lambda (lls cars cdrs)
    (if (null? lls)
        (cons (reverse cars) (reverse cdrs))
        (let ([ls (car lls)])
          (cut-lls (cdr lls) (cons (car ls) cars) (cons (cdr ls) cdrs))))))