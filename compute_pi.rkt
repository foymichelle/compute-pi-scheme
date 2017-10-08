#lang racket

(define (get-point)
  (let ((x (random))
        (y (random)))
    (cons x (list y))))

(define (distance-from-origin point)
  (let ((x (first point))
        (y (second point)))
    (sqrt (+ (expt x 2) (expt y 2)))))

(define (compute-pi times)
  (compute-pi-fn 0 0 times))

(define (compute-pi-fn M N times)
  (let* ([point (get-point)]
         [distance (distance-from-origin point)])
    (if (> times 0)
        (if (< distance 1)
            (compute-pi-fn (+ M 1) (+ N 1) (- times 1))
            (compute-pi-fn M (+ N 1) (- times 1)))
        (* 4 (real->double-flonum (/ M N))))))
