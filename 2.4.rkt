#lang racket

(define (n-cons x y)
  (lambda (m) (m x y)))

(define (n-car z)
  (z (lambda (p q) p)))

(define (n-cdr z)
  (z (lambda (p q) q)))

