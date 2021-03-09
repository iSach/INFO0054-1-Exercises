#lang racket

(define perms
  (lambda (ls i)
    (cond [(null? ls)
           '(())]
          [(or (null? (cdr ls))
               (= i 1))
           ls]
          [else
           (let [(r-perms (perms (cdr ls) (- i 1)))]
                  (append (map (lambda (p) (cons (car ls) p)) r-perms)
                          (map (lambda (p) (perms (append (list p) (list (car ls))) (- i 1))) r-perms)))])))