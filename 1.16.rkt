#lang racket

(define (fast-expt b n)
  
  (define (even? t)
    (= (remainder t 2) 0))
  
  (define (iter a expt new-n counter)
    (if (< counter n)
        (if (even? new-n)
        (iter a (* expt expt) (/ new-n 2) (* counter 2))
        (iter (* a b) expt (- new-n 1) (+ 1 counter)))
        (* a expt)))
  
  (iter 1 b n 1))
