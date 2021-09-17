#lang sicp
(define (make-segment s e)
  (cons s e))

(define (start-segment x)
  (car x))

(define (end-segment x)
  (cdr x))

(define (make-point x y)
  (cons x y))

(define (x-point x)
  (car x))

(define (y-point x)
  (cdr x))

(define (sort-pair a b)
  (if (> b a) (cons a b)
      (cons b a)))

;(define (make-rect corner1 corner2)
;  (let ((x-list-sorted (sort-pair (x-point corner1) (x-point corner2)))
;        (y-list-sorted (sort-pair (y-point corner1) (y-point corner2))))
;    (make-segment (make-point (car x-list-sorted) (car y-list-sorted))
;                  (make-point (cdr x-list-sorted) (cdr y-list-sorted)))))

(define (make-rect center corner)
  (let ((x-corner (x-point corner))
        (y-corner (y-point corner)))
    (let ((x-list-sorted (sort-pair x-corner (- (x-point center) x-corner)))
          (y-list-sorted (sort-pair y-corner (- (y-point center) y-corner))))
      (make-segment (make-point (car x-list-sorted) (car y-list-sorted))
                    (make-point (cdr x-list-sorted) (cdr y-list-sorted))))))

(define (lower-left-corner x)
  (start-segment x))

(define (upper-right-corner x)
  (end-segment x))

(define (width-rect x)
  (- (y-point (end-segment x)) (y-point (start-segment x))))

(define (length-rect x)
  (- (x-point (end-segment x)) (x-point (start-segment x))))

(define (perimeter-rect x)
  (* (+ (length-rect x) (width-rect x)) 2))

(define (square-rect x)
  (* (length-rect x) (width-rect x)))