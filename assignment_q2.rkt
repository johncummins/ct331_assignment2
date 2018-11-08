#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

;A
(provide ins_beg)
(define (ins_beg el lst)
  (append (list el) lst)
 )

;B
(provide ins_end)
(define (ins_end el lst)
  (append lst (list el))
 )

;C
(provide count_top_level)
(define (count_top_level list)
  (if (null? list)
      0
      (+ 1 (count_top_level (cdr list))))
 )

;D
(provide count_instances)
(define (count_instances el lst)
   (cond ((null? lst)0)
   ((equal? el (car lst))(+ 1(count_instances el (cdr lst))))
    ((count_instances el (cdr lst))))
  )



;E
;(provide count_instances_tr)
  ;(define count_instances_tr el lst)
   

;F
;(provide count_instances_deep)

