#lang racket
(require (planet dyoo/simply-scheme))

; Simply scheme is used in this course from UC Berkeley an easier version of SICP.

(define (plural wd)
(if (equal? (last wd) 'y)
(word (bl wd) 'ies)
(word wd 's)))

(define (e-w wd)
  (if (equal? wd "boy")
      (word wd 's)
      (word wd 'ies)))
  
(define (pigl wd)
  (if (member? (first wd) 'aeiou)
      (word wd 'ay)
      (pigl (word (butfirst wd) (first wd)))))

(define (fb n )
  (cond ((and (equal? ( remainder n 5)0) (equal? (remainder n 7 ) 0)) "FizzBuzz")
        ((equal? (remainder n 7) 0) "Fizz")
        ((equal? (remainder n 5) 0) "Buzz")
        (else n)))

(define (opposite w)
(cond ((equal? w 'like) 'hate)
((equal? w 'hate) 'like)
((equal? w 'wonderful) 'terrible)
((equal? w 'terrible) 'wonderful)
((equal? w 'great) 'awful)
((equal? w 'awful) 'great)
((equal? w 'terrific) 'yucky)
((equal? w 'yucky) 'terrific)
((equal? w 'ugly) 'beautiful)
((equal? w 'beautiful) 'ugly)
(else w) ))

(define (argue s)
(if (empty? s)
'()
(se (opposite (first s))
(argue (bf s)))))
(argue '(this is ugly))

(define (pigl-sent s)
(if (empty? s)
'()
(se (pigl (first s))
(pigl-sent (bf s)))))

(load "lectures/1.1/order.scm")
