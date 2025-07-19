◊(define my-name "Luke Jianu")
◊(define pollen-site "https://docs.racket-lang.org/pollen/")
◊(define racket-site "https://racket-lang.org/")

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Charis+SIL:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <title>◊|my-name|</title>
    <link rel="stylesheet" type="text/css" href="/styles.css" />
    <link rel="stylesheet" href="/highlight/styles/default.css">
    <script src="/highlight/highlight.js"></script>
    <script>hljs.highlightAll();</script>
  </head>
  <body>
    ◊(->html doc)
    <hr/>
    <footer>
      Built with <a href="◊|pollen-site|" target="_blank">Pollen</a> & 
      <a href="◊|racket-site|" target="_blank">Racket</a>. 
    </footer>
  </body>
</html>
