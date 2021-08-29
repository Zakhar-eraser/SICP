#lang sicp
(define tolerance 0.00001)
(define dx 0.00001)

(define (fixed-point f guess)
  (define (good-enough? a b)
    (> tolerance (abs (- a b)))
    )
  (define (try guess-iter)
    (display guess-iter)
    (newline)
    (let ((next (f guess-iter)))
      (if (good-enough? guess-iter next) next
          (try next)))
    )
  (try guess)
  )

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x) (* a x x) (* b x) c)))

(define (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define (newtons-method g guess)
  (let ((transform (lambda (x)
                     (- x (/ (g x) ((deriv g) x))))))
    (fixed-point transform guess)))