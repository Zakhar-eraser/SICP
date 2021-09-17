#lang sicp
(define (make-interval a b) (cons a b))

(define (lower-bound x)
  (min (car x) (cdr x)))

(define (upper-bound x)
  (max (car x) (cdr x)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (let ((c (center i)))
    (* (/ (- (upper-bound i) c) c) 100)))

(define (make-center-percent c p)
  (make-interval (* c (- 1 (/ p 100))) (* c (+ 1 (/ p 100)))))