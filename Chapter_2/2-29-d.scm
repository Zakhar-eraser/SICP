#lang sicp
(define (make-mobile left right)
  (cons left right))

(define (make-branch length structure)
  (cons length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (length-branch branch)
  (car branch))

(define (structure-branch branch)
  (cdr branch))

(define (total-weight mobile)
  (if (pair? mobile)
      (+ (total-weight (structure-branch (left-branch mobile)))
         (total-weight (structure-branch (right-branch mobile))))
      mobile))
      
(define (balanced? mobile)
  (if (pair? mobile)
      (let ((left (left-branch mobile))
            (right (right-branch mobile)))
        (let ((left-struct (structure-branch left))
              (right-struct (structure-branch right)))
          (and (= (* (length-branch left) (total-weight left-struct))
                  (* (length-branch right) (total-weight right-struct)))
               (balanced? left-struct)
               (balanced? right-struct))))
      true))