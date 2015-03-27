#! /usr/bin/racket

#lang racket

(define (lst1 l)
  (car (cdr (reverse l))))

; this simply prints out the list
(list 1 2 3 4)
(lst1 (list 1 2 3 4)) 



