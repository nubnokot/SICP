#lang racket

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (listref items n)
      (if (= n 0)
          (car items)
          (listref (cdr items) (- n 1))))

(define (reverse s)
  
  (define (iter n)
    (if (= n -1)
       '()
       (cons (listref s n) (iter (- n 1)))))
  
  (iter (- (length s) 1)))     