#lang sicp
;Exercise 1.8: Newton’s method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value
;                 ((x/y2)+2y)/3
;Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In 1.3.4 we will see how to implement Newton’s method in general as an abstraction of these square-root and cube-root procedures.)

;Most of this is reusing the Example 1.1.7, pull in the new-good-enough? procedure from excercise 1.7, then change improvement to utilize the approximation formula given.
(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (average x y)
  (/ (+ x y) 2))

(define (cube-approximation x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (new-good-enough? guess x) ;Pulled from exercise 1.7
  (= guess (cube-approximation guess x)))

(define (cube-root-iter guess x)
  (if (new-good-enough? guess x)
      guess
      (cube-root-iter(cube-approximation guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))
