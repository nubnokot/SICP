#lang racket

(define (func-rec n)
  (if (< n 3)
      n
      (+ (func-rec (- n 1))
         (func-rec (- n 2))
         (func-rec (- n 3)))))

(define (func-iter n)
  
  (define (iterate-f f1 f2 f3 counter)
    (if (< n 3)
        n
        (if (< counter n)
            (iterate-f (+ f1 f2 f3) f1 f2 (+ 1 counter))
            f1)))
  (iterate-f 3 2 1 3))