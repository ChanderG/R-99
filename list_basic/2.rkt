#! /usr/bin/racket

#lang racket

(define (lst1 l)
  (car (cdr (reverse l))))

; this simply prints out the list
(list 1 2 3 4)
(lst1 (list 1 2 3 4)) 

; one more way to manage the lists
(lst1 '(1 2 3 4))

; yet another way
; not - no brackets around lst => it is not a procedure
(define lst
  '(1 2 3 4))
(lst1 lst)

; another way of solving
(second (take (reverse lst) 2))

; obv, does not take care of common cases
(second (take (reverse '(1)) 2))
