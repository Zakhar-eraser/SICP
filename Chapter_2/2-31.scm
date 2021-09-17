#lang sicp
(define (tree-map tree f)
  (cond ((null? tree) nil)
        ((pair? tree) (cons (tree-map (car tree) f) (tree-map (cdr tree) f)))
        (else (f tree))))