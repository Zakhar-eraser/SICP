#lang sicp
(define (even? x)
  (= (remainder x 2) 0))

(define (same-parity x . w)
  (let ((check (if (even? x)
                   (lambda (y) (even? y))
                   (lambda (y) (not (even? y))))))
    (define (same-parity-rec items)
        (cond ((null? items) nil)
              ((check (car items)) (cons (car items) (same-parity-rec (cdr items))))
              (else (same-parity-rec (cdr items)))))
    (cons x (same-parity-rec w))))