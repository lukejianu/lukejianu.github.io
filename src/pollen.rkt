#lang racket/base

(require markdown)
(require pollen/tag)

(provide (all-defined-out))

(current-strict-markdown? #t) ;; Disables smart quotes.

(define headline (default-tag-function 'h2))

(define ordered-items (default-tag-function 'ol))
(define items (default-tag-function 'ul))
(define item (default-tag-function 'li 'p))

(define (link url text) `(a ((href ,url)) ,text))
