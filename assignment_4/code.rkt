;ANSWER 1
(define (cashBack year_spent)
  (cond
    ((<= year_spent 500) (* year_spent 0.01))
    ((<= year_spent 1000) (+ (* (- year_spent 500) 0.015) 5))
    ((<= year_spent 2000) (+ (* (- year_spent 1000) 0.02) 12.5))
    (else (+ (* (- year_spent 2000) 0.03) 32.5))
   )
)


;ANSWER 2
(define (merge list1 list2)
  (cond
    ((null? list1) list2)
    ((null? list2) list1)
    ((>= (car list1) (car list2))
     (list (car list1) (merge (cdr list1) list2)))
    (else
     (list (car list2) (merge list1 (cdr list2))))
   )
)


;ANSWER 3
(define (myGCD x y)
  (cond
    ((= y 0) x)
    ((> y 0) (myGCD y (remainder x y)))
  )
)


;ANSWER 4
(define (ncall n f x)
  (cond
    ((= n 0) x)
    (else (ncall (- n 1) f (f x)))
  )
)


;ANSWER 5
(define (myFunc x y)
  (cond
    ((= x 0) (+ y 1))
    ((and (> x 0) (= y 0)) (myFunc (- x 1) 1))
    ((and (> x 0) (> y 0)) (myFunc (- x 1) (myFunc x (- y 1))))
  )
)