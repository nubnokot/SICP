#lang racket
(define (square x)
  (* x x))

(define (map proc items)
(if (null? items)
    '()
    (cons (proc (car items))
          (map proc (cdr items)))))

(define (square-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree-map sub-tree)
             (square sub-tree)))
       tree))