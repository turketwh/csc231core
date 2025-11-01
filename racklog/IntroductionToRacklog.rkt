#lang racket
(require racklog)

; family parent relation
(define %parent
  (%rel ()
        [('Curtis 'William)]
        [('Margie 'William)]
        [('Curtis 'Carol)]
        [('Margie 'Carol)]
        [('Ernie 'Jennifer)]
        [('Carol 'Jennifer)]
        [('William 'Billy)]
        [('William 'Laura)]
        [('Mary 'Billy)]
        [('Mary 'Laura)]
        [('Laura 'Virginia)]
        [('Laura 'Miles)]
        ))

; family mystery relationship
(define %mysteryRelationship 
    (%rel (x y z) 
     [(x y) 
      (%parent z x) 
      (%parent z y) 
      (%/= x y)]))

; space relations
(define %star
  (%rel ()
        [('sun)]
        [('sirius)]
        [('vega)]))

(define %orbits
  (%rel ()
        [('mercury 'sun)]
        [('venus 'sun)]
        [('earth 'sun)]
        [('mars 'sun)]
        [('jupiter 'sun)]
        [('saturn 'sun)]
        [('uranus 'sun)]
        [('neptune 'sun)]
        [('moon 'earth)]
        [('phobos 'mars)]
        [('deimos 'mars)]))
        
; space predicate
(define %spacePredicate 
   (%rel (p) 
   [(p) 
    (%orbits p 'sun)]))

