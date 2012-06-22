(define (func-f-recursive n)
    (cond ((< n 3) n)
          (else (+ (func-f-recursive (- n 1))
                   (* 2 (func-f-recursive (- n 2)))
                   (* 3 (func-f-recursive (- n 3)))))))

(define (func-f-iterative-help iterator f-n1 f-n2 f-n3 n)
    (cond ((> iterator n) f-n3)
          (else (func-f-iterative-help (+ iterator 1)
                                       f-n2
                                       f-n3
                                       (+ f-n3
                                          (* 2 f-n2)
                                          (* 3 f-n1))
                                       n))))

(define (func-f-iterative n)
    (cond ((< n 3) n)
          (else (func-f-iterative-help 3 0 1 2 n))))
          
                   
(define f-r func-f-recursive)
(define f-i func-f-iterative)
