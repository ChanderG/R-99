#! /usr/bin/racket

#lang racket

;reverse a string and take the first item
(define (lst1 l)
  (car (reverse l)))

;recursively keep taking up the tail
(define (lst2 l)
  (cond
    [(empty? l) l]
    [(empty? (rest l)) (car l)]
    [else (lst2 (rest l))]))  



(lst1 (list "Hi" "There"))
(lst2 (list "Hi" "There"))
