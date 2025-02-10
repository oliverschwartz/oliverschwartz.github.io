(define (f x)
  (+ x (let ((a 3) (b 4)) (+ a b)))
  )

(define (add_one y)
  (
   (lambda (b) (+ b 1)) y
))

(define (sqr x) (
    (lambda (x) (* x x)) x
))

