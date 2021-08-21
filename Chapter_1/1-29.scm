#lang sicp
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b)))
  )

(define (cube x) (* x x x))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (add-h x)
    (+ x (* h 2))
    )
  (* (+ (f a)
        (f b)
        (* (sum f (+ a h) add-h (- b h)) 4)
        (* (sum f (+ a (* h 2)) add-h (- b (* h 2))) 2)) (/ h 3))
  )