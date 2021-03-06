(define (pow b n)
  (define (even? x)
    (= (remainder x 2) 0)
    )
  (define (square x) (* x x))
  (define (pow-iter x y counter)
    (cond ((= counter 0) x)
	  ((even? counter) (pow-iter x (square y) (/ counter 2)))
	  (else (pow-iter (* x y) b (- counter 1))))
    )
  (pow-iter 1 b n)
)
