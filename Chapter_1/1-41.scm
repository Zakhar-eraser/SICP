#lang sicp
(define (double proc)
  (lambda (x)
    (proc (proc x))))