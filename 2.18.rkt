#lang racket

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (last-pair s)
  (if (null? (cdr s))
      (car s)
      (last-pair (cdr s))))

(define (reverse s)
  (if (null? (cdr s))
      (car s)
      (list (reverse(cdr s)) (car s))))

(reverse (list 1 2 3 4))
  (reverse (list 1 2 3 4 5))
       
      