(define (for-each f items)
  (if (null? items)
      false
      ((f (car items))
       (for-each))))

(for-each (lambda (x) (newline) (display x)) (list 1 2 3 4 5))
