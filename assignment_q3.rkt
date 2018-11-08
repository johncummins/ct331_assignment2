#lang racket


;Binary Search Tree
(define bs_tree '(((() 3 ()) 7 (() 13 ())) 23 ((() 35 ()) 38 (() 20 ()))))

(define (value bs_tree)
  (cadr bs_tree))

(define (right bs_tree)
  (caddr bs_tree))

(define (left bs_tree)
  (car bs_tree))

(provide is_empty)
(define (is_empty bs_tree)
  (null? bs_tree))

;****************

;Questions

;A
(define (sort tree)
  (if (null? tree) '()
      (append (sort (left tree))
              (list (value tree))
              (sort (right tree)))))

;Test A
(display "\n(A) The sorted BS tree:\n")
(sort bs_tree)

;****************

;B
(define (search item bs_tree)
  (cond ((is_empty bs_tree) #f)
        ((equal? item (value bs_tree)) #t)
        ((< item (value bs_tree))
         (search item (left bs_tree)))
        ((> item (value bs_tree))
         (search item (right bs_tree)))
        (else bs_tree))
  )

;Test B
(display "\n(B) Searching the BS tree for items\n")
(search 7 bs_tree) ;should throw #t
(search 37 bs_tree) ;should throw #f

;****************

;C
(define (insert item bs_tree)
  (cond ((is_empty bs_tree)
         (list '() item '()))
        ((equal? item (cadr bs_tree)) bs_tree)
        ((< item (cadr bs_tree))
        (list ( insert item (left bs_tree)) (cadr bs_tree) (right bs_tree)))
        (else (list (left bs_tree) (cadr bs_tree) (insert item (right bs_tree)))))
  )

;Test C
(display "\n(C) Inserting an item into the BS tree\n")
(insert 32 bs_tree)
