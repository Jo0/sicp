#lang sicp
;1.1.7 Example: Square Roots by Newton’s Method

;We can define the square-root function as
; sqrt(x) = the y such that y >= 0 and y^2 = x

;That definition is a declarative description (what is)
;What we are truly concerned with is the imparative description (how to)

;How does one compute square roots?
;One way is to use Newton's method of succive approximations

;To find a square root of x
; take a guess y
; then average y with x/y
; repeat until the approximation doesnt change by much

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter(improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2)