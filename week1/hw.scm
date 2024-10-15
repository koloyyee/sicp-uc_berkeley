#lang simply-scheme
;1. infinite loop
(define (new-if predictate then-clause else-clause)
  (cond ( predictate then-clause)
        (else else-clause)))

(define (pigl wd)
  (new-if (pl-done? wd)
      (word wd 'ay)
      (pigl (word (bf wd) (first wd)))))

(define (pl-done? wd) (vowel? (first wd)))

(define (vowel? letter) (member? letter '(a e i o u)))

; 2.
(define (squares list-nums)
  (cond ((null?  list-nums) null)
        (else (se ( * (first list-nums) (first list-nums))
              (squares (bf list-nums))))))
; 3.
(define (switch list-words)
  (se (switch-one (first list-words))
      (switch-rest (bf list-words))))
(define (switch-one wd)
  (cond ((equal? wd 'I) 'You)
        ((equal? wd 'You) 'I)
        ((equal? wd 'me) 'you)
        ((equal? wd 'you) 'me)
        (else wd)))
(define (switch-rest rest)
  (if (empty? rest) '()
      (se ( switch-one (first rest))
          (switch-rest (bf rest)))))

