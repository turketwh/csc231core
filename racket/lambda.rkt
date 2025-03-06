; Problem 1

; Problem 1 testing
;(flipSigns2 '()) ; should evaluate to '()
;(flipSigns2 '(1)) ; should evaluate to'(-1)
;(flipSigns2 '(2 -3)) ; should evaluate to '(-2 3)

  
; Problem 2

; Problem 2 testing
;((generatePowerFunction 3) 2) ; should evaluate to 8
;((generatePowerFunction 4) 2) ; should evaluate to 16
;((generatePowerFunction 5) 2) ; should evaluate to 32
;(listCubed '()) ; should evaluate to '()
;(listCubed '(2)) ; should evaluate to '(8)
;(listCubed '(1 2 3)) ; should evaluate to '(1 8 27)


; Problem 3

; Problem 3 testing
;(shortLists '()) ; should evaluate to '()
;(shortLists '((4))) ; should evaluate to '((4))
;(shortLists '((4 5 6 7))) ; should evaluate to '()
;(shortLists '(() (3) (3 6) (3 6 9) (3 6 9 12))) 
; above should evaluate to '(() (3) (3 6))


; Problem 4
(define (contains value theList)
  (cond
    [(empty? theList) false]
    [(= value (first theList)) true]
    [else (contains value (rest theList))]))

; Problem 4 testing
;(extractLists2 '()) ; should evaluate to '()
;(extractLists2 '((5) (8 10))) ; should evaluate to '()
;(extractLists2 '((1 2 3) (2) (3 4) (1 2 5 8))) 
; above should evaluate to '((1 2 3) (2) (1 2 5 8))


; Problem 5

; Problem 5 testing
;((generateMultipleOfFunction 3) 3) ; should evaluate to #t
;((generateMultipleOfFunction 3) 4) ; should evaluate to #f
;((generateMultipleOfFunction 3) 6) ; should evaluate to #t
;((generateMultipleOfFunction 4) 4) ; should evaluate to #t
;((generateMultipleOfFunction 4) 6) ; should evaluate to #f
;(multiplesOf7 '()) ; should evaluate to '()
;(multiplesOf7 '(5 7 9 11 13 15 17 19 21 23)) ; should evaluate to '(7 21)
;(multiplesOf7 '(2 4 6 8 10)) ; should evaluate to '()


; Problem 6
(define (increasePrice item)
  (cons (first item) (list (+ 10 (first (rest item))))))

(define (increasePrices theList)
  (map increasePrice theList))

; Problem 6 testing
;((generateIncreasePriceFunction 5) '(2 100)) ; should evaluate to '(2 105)
;((generateIncreasePriceFunction 7) '(2 100)) ; should evaluate to '(2 107)
;((generateIncreasePriceFunction 10) '(2 100)) ; should evaluate to '(2 110)
;(map (generateIncreasePriceFunction 8) '((2 100) (5 120))) 
; above should evaluate to '((2 108) (5 128))
;(map (generateIncreasePriceFunction 3) '((2 100) (5 120) (6 130))) 
; above should evaluate to '((2 103) (5 123) (6 133))
