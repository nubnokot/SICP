#lang racket
(define (make-mobile left right)
  (list left right))

(define (make-branch lenght structure)
  (list lenght structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-lenght branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define (total-weight mobile)
  (if (pair? mobile)
      (+
       (total-weight (branch-structure (left-branch mobile)))
       (total-weight (branch-structure (right-branch mobile))))
      mobile))

(define (balanced? mobile)
  (if (pair? mobile)
      (if (and
           (balanced? (branch-structure (left-branch mobile)))
           (balanced? (branch-structure (right-branch mobile))))
          (if (=
               (* (total-weight (branch-structure (left-branch mobile)))
                  (branch-lenght (left-branch mobile)))
               (* (total-weight (branch-structure (right-branch mobile)))
                  (branch-lenght (right-branch mobile))))
              #t
              #f)
          #f)
      #t))