#lang racket

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (even? x)
    (= (remainder x 2) 0))

(define (mult a b)
(if (= b 1)
    a
    (if (even? b)
        (mult (double a) (halve b))
        (+ (mult a (- b 1)) a))))