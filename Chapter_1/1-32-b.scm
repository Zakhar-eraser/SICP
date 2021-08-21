#lang sicp
(define (accumulator combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner a (accumulator combiner null-value term (next a) next b)))
  )