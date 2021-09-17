#lang sicp
(define (divides? a b)
  (= (remainder a b) 0))

(define (square x)
  (* x x))

(define (power a n)
  (cond ((= n 0) 1)
        ((divides? n 2) (square (power a (/ n 2))))
        (else (* a (power a (dec n))))))

(define (cons a b)
  (* (power 2 a) (power 3 b)))

(define (factor x d)
  (define (factor-iter a n)
    (if (divides? a d) (factor-iter (/ a d) (inc n))
        n))
  (factor-iter x 0))

(define (car x)
  (factor x 2))

(define (cdr x)
  (factor x 3))