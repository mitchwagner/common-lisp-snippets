;; Perform a linear mapping from one range to another-
;; that is, perform a linear transform to convert x in 
;; [a, b] to y in [c, d].

;; Steps: 
;; 1) Scale value in former range to 0-1
;;    (x - a) / (b - a) 
;;
;; 2) Scale to new range
;;    (1) * (d - c)
;;
;; 3) Add offset from 0
;;    (2) + c
;;
(defun range-min (r) (car r))
(defun range-max (r) (cdr r))

(defun range-map (r1 r2 x)
  (let ((a (range-min r1))
        (b (range-max r1))
        (c (range-min r2))
        (d (range-max r2)))
  (+ (* (/ (- x a)
           (- b a))
        (- d c))
     c)))
