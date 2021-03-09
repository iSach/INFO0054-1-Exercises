#lang racket

(define my-map
  (lambda args
    (reverse (my-map-aux (car args) (cdr args) '()))))

(define my-map-aux
  (lambda (f lls ys)
    (display lls)
    (display "\n")
    (if (null? (car lls))
        ys
        (let* ([cutlists (cut-lls lls '() '())]
               [cars (car cutlists)]
               [cdrs (cdr cutlists)])
          (my-map-aux f cdrs (cons (apply f cars) ys))))))
        

; list of lists -> ((list of cars) (list of cdrs))
; if k = (cut-lls lls cars cdrs)
; then (car k) = list of all the cars of the lists
; then (cdr k) = list of all the cdrs of the lists
(define cut-lls
  (lambda (lls cars cdrs)
    (if (null? lls)
        (cons cars cdrs)
        (let ([ls (car lls)])
          (cut-lls (cdr lls) (cons (car ls) cars) (cons (cdr ls) cdrs))))))