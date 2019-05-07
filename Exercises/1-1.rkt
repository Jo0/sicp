#lang sicp
;Exercise 1.1:
;Below is a sequence of expressions.
;What is the result printed by the interpreter in response to each expression?
;Assume that the sequence is to be evaluated in the order in which it is presented.

10  ;10 
(+ 5 3 4) ;12
(- 9 1) ;8
(/ 6 2) ;3
(+ (* 2 4) (- 4 6)) ;(+ (8) (-2)) -> 6
(define a 3) ;3
(define b (+ a 1)) ;4
(+ a b ( * a b)) ;(+ 3 4 (* 3 4)) -> (+ 3 4 (12)) -> 19
(= a b) ; false
(if (and (> b a) (< b (* a b))) ;(if (and (> 4 3) (< 4 (* 3 4))) -> (if (and (true) (< 4 (12))) -> (if (and (true) (true)) -> true -> b -> 4
    b
    a)
(cond ((= a 4) 6) ;(if (= 3 4) 6) -> false
      ((= b 4) (+ 6 7 a)) ;(if (= 4 4) (+ 6 7 3)) -> (if (true) (16)) -> 16
      (else 25)) ;skip 
(+ 2 (if (> b a ) b a)) ;(+ 2 (if (> 4 3) 4 3)) -> (+ 2 (if (true) 4 3)) -> (+ 2 (4)) -> 6
(* (cond ((> a b) a) ;(* (cond ((> 3 4) 3) -> (* (false)    ->   (* 4 4) -> 16
         ((< a b) b) ;         ((< 3 4) 4) ->    ((true) 4) 
         (else -1))  ;          (else -1)) ->    (else -1)) 
   (+ a 1))          ;    (+ 3 1))         ->    (4))       