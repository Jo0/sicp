#lang sicp
;Exercise 1.7:
;The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers.
;Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers.
;Explain these statements, with examples showing how the test fails for small and large numbers.
;An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess.
;Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?


;Pulled from Example 1.1.7
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (new-good-enough? guess x)
      guess
      (sqrt-iter(improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-good-enough? guess x) ;Referencing http://community.schemewiki.org/?sicp-ex-1.7
  (= guess (improve guess x)))     ;There needs to be a way for us to end the procedure quickly and reliably. Setting an arbitrary threshold (0.001) doesn't cover both large and small numbers well.
                                   ;Which could also cause the procedure to never end if the rate of change is never within the threshold.
                                   ;Eventually improvements to the guess will result to a number that seemingly doesn't change.
                                   ;Either due to limitations of precision of the machine or just due to the rate of change for improvements



