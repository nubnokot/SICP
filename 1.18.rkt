#lang racket

(define (halve x)
  (/ x 2))

(define (double x)
  (* x 2))

(define (even? x)
    (= (remainder x 2) 0))

(define (mult a b)
  
  (define (mult-iter a b product)
    (if (= b 1)
        (+ a product)
        (if (even? b)
            (mult-iter (double a) (halve b) product)
            (mult-iter a (- b 1) (+ a product)))))
  
  (mult-iter a b 0))

(mult 10 21)