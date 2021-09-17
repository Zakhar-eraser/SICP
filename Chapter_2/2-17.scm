#lang sicp
(define (last-pair l)
  (define (last-pair-iter a b)
    (if (null? b) a
        (last-pair-iter (car b) (cdr b))))
  (last-pair-iter (car l) (cdr l)))

(define (last-pair-r l)
  (let ((next (cdr l)))
    (if (null? next) (car l)
        (last-pair-r next))))