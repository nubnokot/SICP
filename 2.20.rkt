#lang racket

(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (same-parity . x)
  
  (define (pred? t)
    (= (remainder t 2) (remainder (car x) 2)))
    
  (filter pred? x))