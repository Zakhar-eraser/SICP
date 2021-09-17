#lang sicp
(define (length l)
  (if (null? l)
      0
      (inc (length (cdr l)))))

(define (list-ref l n)
  (if (= n 0)
      (car l)
      (list-ref (cdr l) (dec n))))

(define (reverse l)
  (define (reverse-iter n)
    (if (= n 0)
        nil
        (cons (list-ref l (dec n)) (reverse-iter (dec n)))))
  (reverse-iter (length l)))