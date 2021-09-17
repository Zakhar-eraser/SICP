#lang sicp
(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
      (p2 (* (lower-bound x) (upper-bound y)))
      (p3 (* (upper-bound x) (lower-bound y)))
      (p4 (* (upper-bound x) (upper-bound y))))
  (make-interval (min p1 p2 p3 p4)
                 (max p1 p2 p3 p4))))

(define (div-interval x y)
  (let ((y-low (lower-bound y))
        (y-up (upper-bound y)))
    (if (and (< y-low 0) (> y-up 0)) (display "interval crosses zero")
        (mul-interval x
                      (make-interval (/ 1.0 y-up)
                                     (/ 1.0 y-low))))))

(define (make-interval a b) (cons a b))

(define (lower-bound x)
  (min (car x) (cdr x)))

(define (upper-bound x)
  (max (car x) (cdr x)))