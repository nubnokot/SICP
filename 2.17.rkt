#lang racket

(define (last-pair s)
  (if (null? (cdr s))
      (car s)
      (last-pair (cdr s))))