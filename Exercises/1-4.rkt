#lang sicp
;Exercise 1.4:
;Observe that our model of evaluation allows for combinations whose operators are compound expressions.
;Use this observation to describe the behavior of the following procedure:
;   (define (a-plus-abs-b a b)
;     ((if (> b 0) + -) a b))

;A procedure called a-plus-abs-b which takes in two parameters a and b
; if b is greater than zero
;     add a and b
; if b is less than zero
;     subtract a and b (subtracting a negative number is effectively adding, because maths)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(define in-a 5)
(define in-b 4)

(a-plus-abs-b in-a in-b) ;(+ 5 4) -> 9

(define in-b-neg -3)

(a-plus-abs-b in-a in-b-neg) ;(- 5 -3) -> 8