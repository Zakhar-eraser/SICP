#lang sicp
(define (append x y)
  (if (null? x)
      y
      (cons (car x) (append (cdr x) y))))

(define (fringe tree)
  (cond ((null? (cdr tree)) (fringe (car tree)))
        ((pair? (car tree)) (append (fringe (car tree)) (fringe (cdr tree))))
        (else tree)))