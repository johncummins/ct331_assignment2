#lang racket
(cons 101 102)

(cons 101 (cons 102 (cons 103 null)))

(cons "This is a String" (cons 100 (cons '(101 102 103) null)))

(list "This is a String" 100 (list 101 102 103))

(append '(This is a String) '(100) '((101 102 103)))
