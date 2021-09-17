#lang sicp
(define (make-segment s e)
  (cons s e))

(define (start-segment x)
  (car x))

(define (end-segment x)
  (cdr x))

(define (make-point x y)
  (cons x y))

(define (x-point x)
  (car x))

(define (y-point x)
  (cdr x))

(define (print-point x)
  (newline)
  (display "(")
  (display (x-point x))
  (display ",")
  (display (y-point x))
  (display ")"))

(define (average x y)
  (/ (+ x y) 2))

(define (midpoint-segment x)
  (make-point (average (x-point (start-segment x)) (x-point (end-segment x)))
              (average (y-point (start-segment x)) (y-point (end-segment x)))))