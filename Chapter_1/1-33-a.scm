#lang sicp
(define (filtered-accumulate combiner null-value term filter a next b)
  (cond ((> a b) null-value)
        ((filter a) (combiner (filtered-accumulate combiner null-value term filter (next a) next b) (term a)))
        (else (combiner (filtered-accumulate combiner null-value term filter (next (next a)) next b) null-value))
        )
  )

(define (square x) (* x x))
(define (divides? x y) (= (remainder x y) 0))

(define (prime? x)
  (define (next g) (if (= g 2) 3 (+ g 2)))
    (define (prime-test-iter counter)
      (cond ((> (* counter counter) x) true)
            ((divides? x counter) false)
            (else (prime-test-iter (next counter)))
            )
      )
    (prime-test-iter 2)
    )

(define (square-primes-sum a b)
  (define (inc2 x) (+ x 2))
  (define (sq-pr-sum-optimized a2)
    (filtered-accumulate +
                         0
                         square
                         prime?
                         a2
                         inc2
                         b)
    )
  (if (divides? a 2) (sq-pr-sum-optimized (inc a)) (sq-pr-sum-optimized a))
  )