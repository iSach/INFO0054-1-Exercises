#lang racket

(define conway
  (lambda (n)
    (if (= n 1) '(1)
        (last (conway-a (- n 1) '((1)))))))

(define conway-a
  (lambda (n lines)
    (if (zero? n) lines
        (let [(last-line (last lines))]
          (conway-a (- n 1) (append lines (list (conway-line last-line (car last-line) 0 '()))))))))

(define conway-line
  (lambda (prev x count line)
    (cond [(null? prev) (append line (list count x))]
          [(= x (car prev)) (conway-line (cdr prev) x (+ count 1) line)]
          [else (conway-line (cdr prev) (car prev) 1 (append line (list count x)))])))
        