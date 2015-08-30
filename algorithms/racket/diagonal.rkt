#lang racket

(define (read-matrix T)
    (build-list T (lambda (i)
		    (build-list T (lambda (j) (read))))))

(define (first-diagonal T matrix)
  (build-list T (lambda (i) (list-ref (list-ref matrix i) i))))

(define (second-diagonal T matrix)
  (build-list T (lambda (i) (list-ref (list-ref matrix i) (- T i 1)))))

(let* ([T (read)] [mtx (read-matrix T)])
  (abs (- (foldl + 0 (first-diagonal T mtx))
   (foldl + 0 (second-diagonal T mtx)))))
