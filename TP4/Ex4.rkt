#lang racket

(define symmetrize
  (lambda (f)
    (lambda (x) (/ (+ (f x) (f (* -1 x))) 2))))

(define anti-symmetrize
  (lambda (f)
    (lambda (x) (/ (- (f x) (f (* -1 x))) 2))))

(define func-op
  (lambda (op f g)
    (lambda (x) (op (f x) (g x)))))

(define symmetrize2
  (lambda (f)
    (func-op (lambda (f g) (/ (+ f g) 2))
             (lambda (x) (f x))
             (lambda (x) (f (* -1 x))))))

(define anti-symmetrize2
  (lambda (f)
    (func-op (lambda (f g) (/ (- f g) 2))
             (lambda (x) (f x))
             (lambda (x) (f (* -1 x))))))