#lang racket

(require (file "assignment_q2.rkt")
         (file "assignment_q3.rkt"))

;
;Don't worry about this file unless you are doing the extra credit tests. 
;

;This structure allows a single function call
;to run every test in sequence, rather than
;calling each function separately. 
(define (runTests)
  (begin
    (display "\nRunning tests...\n")
    ;begin calling test functions
    (printf "1: ~a\n" (test_ins_beg1))
    (printf "2: ~a\n" (test_ins_end1))
    (printf "3: ~a\n" (test_top_level1))
    (printf "4: ~a\n" (test_count_instances1))
    ;end calling test functions
    (display "\nTests complete!\n")))

;Begin test functions
(define (test_ins_beg1) 
  (equal? (ins_beg 1 '(2 3 4)) '(1 2 3 4))) ;true statement

(define (test_ins_end1)
  (equal?  (ins_end 4 '(1 2 3)) '(1 2 3 4))) ;true statement
  
(define (test_top_level1)
  (equal? (count_top_level '(1 2 3 (4(5(6(7)))))) '(2))) ;false statement
  
(define (test_count_instances1)
 (equal?(count_instances 1 '(1 2 3 4 1 1 2 3 1)) '(3))) ;false statement

;End test functions

;Run the tests
(runTests)