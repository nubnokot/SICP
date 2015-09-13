#lang racket

(define (sqroot x)
  
  (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) 0.001))
  
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  
  (define (sqroot-iter guess)
    (if (good-enough? guess)
        guess
        (sqroot-iter (improve guess))))
 
  (sqroot-iter 1.0))