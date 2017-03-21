;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |project 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (maxElement lst)
  (apply max (car lst) (cdr lst)))

(define elementAtIndex
    (lambda (lst index)
      (if (= index 1)
          (car lst)
          (elementAtIndex (cdr lst) (- index 1)))))

(define (compress lst)
  (cond
    ((null? lst) '())
    ((null? (cdr lst)) lst)
    ((equal? (car lst) (car (cdr lst)))
     (compress (cdr lst)))
    (else (cons (car lst) (compress (cdr lst))))))

(define (maxofmax lst)
  (maxElement(map maxElement lst)))

(define (sumList lst)
  (if (null? lst)
      0
      (+ (car lst) (sumList (cdr lst)))))

(define (charCount sym) (string-length (symbol->string sym)))
(define (charactersPerWord lst)
  (map charCount lst))

(define (charactersPerSentence lst)
  (+ (sumList(charactersPerWord (car lst))) (charactersPerSentence (cdr lst))))