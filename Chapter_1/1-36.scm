#lang sicp
(define tolerance 0.00001)

(define (fixed-point f)
  (define (good-enough? a b)
    (> tolerance (abs (- a b)))
    )
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (good-enough? guess next) next
          (try next)))
    )
  (try 2.0)
  )