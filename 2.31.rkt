#lang racket

(define (map proc items)
(if (null? items)
    '()
    (cons (proc (car items))
          (map proc (cdr items)))))

(define (tree-map proc tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map proc sub-tree)
             (proc sub-tree)))
       tree))

(define (square x)
  (* x x))

(define (square-tree tree) (tree-map square tree))
