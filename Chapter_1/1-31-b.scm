#lang sicp
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a))))
    )
  (iter a 1)
  )

(define (factorial n)
  (define (identify x) x)
  (product identify 2 inc n)
  )

(define (square x) (* x x))

(define (pi-approx rate)
  (define (next x) (+ x 2))
  (define (func x)
    (/ (* x (next x)) (square (inc x)))
    )
  (* 4.0 (product func 2 next (* 2 rate)))
  )