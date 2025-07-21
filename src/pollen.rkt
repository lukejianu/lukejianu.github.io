#lang racket

(require pollen/template)

(provide insert-blog-css)

(define (insert-blog-css)
  (define width-px 620)
  (->html
   `(div
     (style
      ,(format
        "body {
          max-width: ~apx;
        }"
        width-px))
     (style
      ,(format
        "@media screen and (max-width: ~apx) {
           body {
             max-width: 95%;
           }
         }"
        width-px)))))
