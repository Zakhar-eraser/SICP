#lang sicp
(define (append x y)
  (if (null? x)
      y
      (cons (car x) (append (cdr x) y))))

(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (x) (append (list (car s)) x)) rest)))))