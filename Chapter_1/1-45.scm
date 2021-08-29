#lang sicp
(define tolerance 0.00001)
(define (fixed-point f guess)
  (define (good-enough? a b)
    (> tolerance (abs (- a b))))
  (define (try guess-iter)
    (display guess-iter)
    (newline)
    (let ((next (f guess-iter)))
      (if (good-enough? guess-iter next) next
          (try next))))
  (try guess))

(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (pow a b) 
  (exp (* b (log a))))

(define (repeated f n)
  (if (< n 1)
      (lambda (x) x)
      (compose f (repeated f (dec n)))))

(define (average-damp f)
  (lambda (x) (/ (+ x (f x)) 2)))

(define (n-root x n)
  (fixed-point ((repeated
                 average-damp
                 (/ (log n) (log 2)))
                (lambda (y) (/ x (pow y (dec n)))))
               1.0))