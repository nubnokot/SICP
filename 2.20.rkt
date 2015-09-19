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


(define (same-parity . numbers)
  
  (define (helper first x sum)
    (if (null? x)
        sum
        (if (= first (remainder (car x) 2))
            (helper first (cdr x) (cons (car x) sum))
            (helper first (cdr x) sum))))
  
  (helper (remainder (car numbers) 2) (reverse numbers) '()))