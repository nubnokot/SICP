#lang racket

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
(= n (smallest-divisor n)))

(define (square x)
  (* x x))

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (when (prime? n)
      (report-prime (- (runtime) start-time) n)))

(define (report-prime elapsed-time n)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time))

(define (runtime) (current-inexact-milliseconds))

(define (search-for-primes a b)
  (timed-prime-test a)
  (when (< a b)
      (search-for-primes (+ a 2) b)))