#lang racket

(require pollen/template)
(require sugar)

(provide mk-canonical-url insert-blog-css)

(define my-site "https://lukejianu.github.io/")

(define (mk-canonical-url here-path)
  (string-append my-site (mk-relative-to-src (path->string (remove-ext* here-path)))))

(define (mk-relative-to-src path)
  (define parts (string-split path "src/"))
  (last parts))

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
