#lang sicp
(define (cont-frac n d k)
  (define (end-frac-iter result counter)
    (if (= counter 0) result
        (end-frac-iter (/ (n counter) (+ (d counter) result)) (dec counter))))
  (end-frac-iter (/ (n k) (d k)) (dec k)))

(define (e k)
  (define (d x)
    (if (= (remainder (inc x) 3) 0)
        (* 2 (/ (inc x) 3)) 1))
  (+ 2 (cont-frac (lambda (i) 1.0) d k)))