◊(define h1-selector 'h1)
<!--' Add single quote to fix syntax highlighting in Vim...-->

◊(define my-name "Luke Jianu")
◊(define (nav-link page-name link)
  (let ([current-page-name (select h1-selector doc)]
        [lower-page-name (string-downcase page-name)])
  (cond
    [(not current-page-name) 
      (->html
        `(li (a ((href ,link)) ,lower-page-name)))]
    [(string=? page-name current-page-name) 
      (->html
        `(li ((class ,"selected-page")) (a ((href ,link)) ,lower-page-name)))]
    [else 
      (->html
        `(li (a ((href ,link)) ,lower-page-name)))])))

◊(define pollen-site "https://docs.racket-lang.org/pollen/")
◊(define racket-site "https://racket-lang.org/")

<html>
  <head>
    <meta charset="UTF-8">
    <title>◊|my-name|</title>
    <link rel="stylesheet" type="text/css" href="/styles.css" />
  </head>
  <body>
    <header>
      <div class="my-name"> 
        <a href="/index.html">◊|my-name|</a>
      </div>
      <div class="nav">
        <ul class="nav-links">
          ◊|(nav-link "Thoughts" "/thoughts.html")|
          ◊|(nav-link "Credit" "/credit.html")|
          <li>
            <a href="https://github.com/lukejianu" target="_blank">github</a>
          </li>
          <li>
            <a href="/LukeJianu_Resume.pdf" target="_blank">resume</a>
          </li>
        </ul>
    </header>
    ◊(->html doc)
    <footer>
      Built with <a href="◊|pollen-site|" target="_blank">Pollen</a> &
      <a href="◊|racket-site|" target="_blank">Racket</a>. 
    </footer>
  </body>
</html>
