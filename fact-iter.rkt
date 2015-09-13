#lang racket

(define (fact n)
  (define (fact-iter product counter)
  (if (> (+ n 1) counter)
      (fact-iter (* counter product) (+ counter 1))
      product))
  (fact-iter 1 1))
  