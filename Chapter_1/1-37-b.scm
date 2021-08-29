#lang sicp
(define (cont-frac n d k)
  (define (end-frac-iter result counter)
    (if (= counter 0) result
        (end-frac-iter (/ (n counter) (+ (d counter) result)) (dec counter))))
  (end-frac-iter (/ (n k) (d k)) (dec k)))

(define (golden-ratio k)
  (/ 1 (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) k)))