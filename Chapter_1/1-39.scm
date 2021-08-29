#lang sicp
(define (cont-frac n d k)
  (define (end-frac-iter result counter)
    (if (= counter 0) result
        (end-frac-iter (/ (n counter) (- (d counter) result)) (dec counter))))
  (end-frac-iter (/ (n k) (d k)) (dec k)))

(define (tg-cf x k)
  (cont-frac (lambda (i) (if (= 1 i) x (* x x)))
             (lambda (i) (dec (* 2 i)))
             k))