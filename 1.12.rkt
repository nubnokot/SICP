#lang racket

(define (pascal exp n)
  (if (or (= n 1) (= exp (- n 1)))
      1
      (+
       (pascal (- exp 1) (- n 1))
       (pascal (- exp 1) n))))