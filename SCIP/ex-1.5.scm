(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
       y))
      
(test 0 (p)) 
;; In normal order, the parameters of the function are not evaluated on 
;  the call instead they are delayed unitl they are needed
;  so (test 0 (p)) will pass the value to parameters without 
;  evaluating (p) and the result will be 0 as "x equals 0" 

;; In applicative order, the parameters of the function are evaluated
;  whenever the function is called but before the parameters are passed to
;  function so by calling (test 0 (p)), first the first parameter is 
;  evaluated which is self-referencing number 0 but the second parameter
;  is a function call which is a recursive function without any exit
;  condition so the program will enter in a infinte loop
