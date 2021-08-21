(define (F n)
  (if (< n 3) n
      (+ (F (- n 3)) (F (- n 2)) (F (- n 1))))
  )

(define (f n)
(define (f-iter x y z counter)
  (cond ((= counter (+ 1 n)) z)
	((< counter 3) (f-iter y z counter (+ 1 counter)))
	(else (f-iter y z (+ x y z) (+ 1 counter))))
  )
(f-iter 0 0 0 1)
)
