#lang sicp
(define (deep-reverse x)
  (cond ((not (pair? x)) x)
        ((null? (cdr x)) (deep-reverse (car x)))
        (else (list (deep-reverse (cdr x)) (deep-reverse (car x))))))