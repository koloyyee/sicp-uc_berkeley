#lang racket
(require (planet dyoo/simply-scheme:2:2))

; 2.
3
(first 'hello)
; (first hello)
(+ 2 3 )
(first ( bf 'hello))

; 3.
(define ( p x)
  (print x))
(trace p )
(p "hello")

(define (pigl wd)

(if (pl-done? wd) (word wd 'ay) (pigl (word (bf wd) (first wd)))))

(define (pl-done? wd) (vowel? (first wd)))

(define (vowel? letter) (member? letter '(a e i o u)))


; second
; 3.
(define (sum-sq-lg a1 a2 a3)
  (define (sq x) (* x x ))
  (define (sum-sq x y ) (+ (sq x) (sq y)))
  (if ( >= a1 a2)
      (sum-sq a1 a3)
      (sum-sq a2 a3))
  (if ( >= a2 a3)
      (sum-sq a2 a1)
      (sum-sq a3 a1)))
      
; 4.
(define (dupls-removal list)
  (cond ((empty? list) '())
        ((member? (first list) (bf list))
         (dupls-removal (bf list)))
         (else ( sentence (first list)
                          (dupls-removal (bf list))))))

 
