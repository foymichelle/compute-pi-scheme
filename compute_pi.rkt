#lang racket

(define (compute-pi M N times)
  (let ([x (random)]
        [y (random)])
    (if (> times 0)
        (let ([distance (/ y x)])
          (if (< distance 1)
            (compute-pi (+ M 1) N (- times 1))
            (compute-pi M (+ 1 N) (- times 1))))
        (* 4 (/ M N)))))
  
  
  