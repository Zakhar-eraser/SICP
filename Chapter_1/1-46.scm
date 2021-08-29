#lang sicp
(define (iterative-improve good-enough? improve)
  (lambda (x)
    (define (improve-iter y)
      (let ((next (improve y)))
        (if (good-enough? y next) next
          (improve-iter next))))
    (improve-iter x)))

(define (fixed-point f guess)
  (define tolerance 0.00001)
  ((iterative-improve
    (lambda (cur next)
      (< (abs (- cur next)) tolerance))
    f) guess))

(define (average-damp f)
  (lambda (x)
    (/ (+ x (f x)) 2)))

(define (sqrt x)
  (fixed-point (average-damp (lambda (y)
                               (/ x y)))
               1.0))