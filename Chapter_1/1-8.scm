(define (cube goal)
  (define (abs x) (if (< x 0) (- x) x))

  (define (cube-iter last cur)
    (define (improve)
  (/ (+ (/ goal (* cur cur)) (* 2 cur)) 3.0)
  )

(define (good-enough?)
  (< (abs (- last cur)) 0.001)
  )
  (if (good-enough?)
      cur
      (cube-iter cur (improve)))
)
  (cube-iter 0 1)
  )


