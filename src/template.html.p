◊(define my-name "Luke Jianu")
◊(define pollen-site "https://docs.racket-lang.org/pollen/")
◊(define racket-site "https://racket-lang.org/")

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>◊|my-name|</title>
    <link rel="stylesheet" type="text/css" href="/styles.css" />
  </head>
  <body>
    ◊(->html doc)
    <footer>
      Built with <a href="◊|pollen-site|" target="_blank">Pollen</a> & 
      <a href="◊|racket-site|" target="_blank">Racket</a>. 
    </footer>
  </body>
</html>