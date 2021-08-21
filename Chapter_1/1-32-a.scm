#lang sicp
(define (accumulator term combiner null-value a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a))))
    )
  (iter a 0)
  )