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

#| a sample foldl: note the init is used at the end
(define (concat l)
  (foldl string-append "Start" l))
(concat (list "Hi" "There"))
|#

;textbook foldl case
;learning - (x) means a function, don't simply add brackets like in other languages
(define (lst3 l)
  (foldl (lambda (x y) x) 0 l))

(lst1 (list "Hi" "There"))
(lst2 (list "Hi" "There"))
(lst3 (list "Hi" "There"))
