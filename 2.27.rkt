#lang racket

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (listref items n)
      (if (= n 0)
          (car items)
          (listref (cdr items) (- n 1))))

(define (deep-reverse s)
  
  (define (iter n)
    (if (= n -1)
       '()
       (cons (reverse(listref s n)) (iter (- n 1)))))
  (if (pair? s)
      (iter (- (length s) 1))
      s))