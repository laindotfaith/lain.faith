#lang racket/base
(provide page)

(define page
  `(html
    (head (title "lain.faith")
          (meta ([charset "UTF-8"]))
          (link ([rel "stylesheet"]
                 [href "style.css"])))
    (body
     (header
      ([class "banner"])
      ,@(map (λ (c) `(h1 ([class ,c]) "lain.faith"))
             '("b1" "b2" "b3"))))))
