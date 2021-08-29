#lang sicp
(define (cont-frac n d k)
  (define (end-frac counter)
    (if (= counter k) (/ (n k) (d k))
        (/ (n counter) (+ (d counter) (end-frac (inc counter)))))
    )
  (end-frac 1)
  )

(define (gold-ratio k)
  (/ 1 (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) k)))