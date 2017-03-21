;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname project2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 1a
(define (maxElement lst)
  (apply max (car lst) (cdr lst)))

;; 1b
(define elementAtIndex
    (lambda (lst index)
      (if (= index 1)
          (car lst)
          (elementAtIndex (cdr lst) (- index 1)))))

;; 1c
(define (compress lst)
  (cond
    ((null? lst) '())
    ((null? (cdr lst)) lst)
    ((equal? (car lst) (car (cdr lst)))
     (compress (cdr lst)))
    (else (cons (car lst) (compress (cdr lst))))))

;; 1d
(define (maxofmax lst)
  (maxElement(map maxElement lst)))

;; 1e
(define (firsthalf lst loc)
  (cond ((eq? loc 0) '())
      (else (cons (car lst) (firsthalf (cdr lst) (- loc 1))))
      ))
(define (secondhalf lst loc)
  (cond ((eq? loc 0) (list lst))
        (else (secondhalf (cdr lst) (- loc 1)))
        ))
(define (split lst loc)
(cons (firsthalf lst loc)(secondhalf lst loc)))
  
;; 2a
(define (sumList lst)
  (if (null? lst)
      0
      (+ (car lst) (sumList (cdr lst)))))

;; 2b
(define (charCount sym) (string-length (symbol->string sym)))
(define (charactersPerWord lst)
  (map charCount lst))

;; 2c
(define (charactersPerSentence lst)
  (map sumList (map charactersPerWord lst)))

;; 2d
(define (wordsPerSentence lst)
  (map length lst)
  )

;; 2e
(define (statsDocument lst)
  (list (sumList(charactersPerSentence lst)) (sumList(wordsPerSentence lst)) (length lst))
  )

;; lists for testing
(define testList '((Hello Mary) (Scheme is so wonderful) (See you later)
(John)))
(define testList2 '(()()()()()()))