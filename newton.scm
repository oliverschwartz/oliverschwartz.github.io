(
 define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))
(
 define (average x y)
 (/ (+ x y) 2))
(
 define (improve guess x)
 (average guess (/ x guess)))
(
 define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

; Or we can use block structure...
(define (sqrt x)
  (define (returns-one x)
    1)
  (sqrt-iter (returns-one 500) x))
