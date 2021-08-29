#lang sicp
(define (repeated f n)
  (define (rep-iter func counter)
    (if (= counter 0)
        (lambda (x) (func x))
        (rep-iter (lambda (x) (f (func x))) (dec counter))))
  (rep-iter (lambda (x) x) n))