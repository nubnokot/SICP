#lang racket

(define (cuberoot x)
  
  (define (good-enough? guess oldguess)
    (< (/ (abs (- guess oldguess)) guess) 0.001))
  
  (define (improve guess)
    (/ (+ (/ x (* guess guess))
          (* 2 guess))
       3))
  
  (define (suberoot-iter guess oldguess)
    (if (good-enough? guess oldguess)
        guess
        (suberoot-iter (improve guess) guess)))
 
  (suberoot-iter 1.0 100000))