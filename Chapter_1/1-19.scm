(define (fib n)
  (define (fib-iter a b p q counter)
    (cond ((= 0 counter) b)
	  ((= (remainder counter 2) 0)
	   (fib-iter a b (+ (* p p) (* q q)) (+ (* q q) (* 2 p q)) (/ counter 2)))
	  (else (fib-iter (+ (* b q) (* a (+ p q))) (+ (* b p) (* a q)) p q (- counter 1)))
	  )
    )
  (fib-iter 1 0 0 1 n)
  )
