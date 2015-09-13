#lang racket

(define (sqroot x)
  
  (define (good-enough? guess oldguess)
    (< (/ (abs (- guess oldguess)) guess) 0.001))
  
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  
  (define (sqroot-iter guess oldguess)
    (if (good-enough? guess oldguess)
        guess
        (sqroot-iter (improve guess) guess)))
 
  (sqroot-iter 1.0 100000))