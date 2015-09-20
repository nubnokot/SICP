#lang racket

(define (for-each proc items)
  
  (define (helper proc items another)
    (when (not (null? items))
      (helper proc (cdr items) (proc (car items)))))
  
  (helper proc items 0))