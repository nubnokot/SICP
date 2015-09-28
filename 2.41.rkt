#lang racket

(define (enumerate-interval low high) 
   (if (> low high) 
       '() 
       (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op initial sequence)
  (if (null? sequence) initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(define (unique-triples n)
    (flatmap (lambda (i)
          (flatmap (lambda (j)
                (map (lambda (k) (list i j k))
                     (enumerate-interval 1 (- j 1))))
                   (enumerate-interval 1 (- i 1))))
             (enumerate-interval 1 n)))

(define (triples s n)
  (filter (lambda (t) (= (accumulate + 0 t) s))
          (unique-triples n)))