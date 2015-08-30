#lang racket

(let ([T (read)])
  (for ([i (in-range 1 (+ T 1))])
    (printf "~a~a~n" (make-string (- T i) #\space)(make-string i #\#))))
