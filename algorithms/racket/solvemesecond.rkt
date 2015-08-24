#lang racket


(let ([T (read)])
  (for ([i T])
    (let ([a (read)] [b (read)])
      (printf "~a~n" (+ a b)))))
