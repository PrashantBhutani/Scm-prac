(define (square x)
    (* x x))
    
(define (sum-square a b)
    (+ (square a)
       (square b)))

(define (smaller a b)
    (if (> a b)
        b
      a))
      
(define (larger a b)
    (if (> a b)
        a
      b))

(define (sum-square-two-largest-ver1 a b c)
    (- (+ (square a)
          (square b)
          (square c)) 
       (square (smaller (smaller a b) c))))

(define ver1 sum-square-two-largest-ver1)
       
(define (sum-square-two-largest-ver2 a b c)
    (sum-square (larger a b)
                (larger (smaller a b) c)))
                
(define ver2 sum-square-two-largest-ver2)                
