#lang sicp
;Exercise 1.3:
;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (min x y) (if (< x y) x y)) ;I had to look this up as I wanted the easiest way to give me the largest two of the three elements.
(define (max x y) (if (> x y) x y)) ;I almost went ahead and just dump a huge conditional doing manual checks for the largest two to pass to sum-of-squares
                                    ;(5/7/19) Note to self: I need to think better

(define (sum-of-squares-of-largest-inputs x y z)
  (sum-of-squares (max x y) (max (min x y) z)))
  
