#lang sicp
(define (filtered-accumulate combiner null-value term filter a next b)
  (cond ((> a b) null-value)
        ((filter a) (combiner (filtered-accumulate combiner null-value term filter (next a) next b) (term a)))
        (else (combiner (filtered-accumulate combiner null-value term filter (next (next a)) next b) null-value))
        )
  )

(define (GCD x y)
  (if (= y 0) x (GCD y (remainder x y)))
  )

(define (product-primes-relative n)
  (define (prime-relative? x)
  (= 1 (GCD n x))
  )
  (define (identify x) x)
  (filtered-accumulate * 1 identify prime-relative? 2 inc (dec n))
  )