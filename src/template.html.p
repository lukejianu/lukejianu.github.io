◊(define my-name "Luke Jianu")
◊(define pollen-site "https://docs.racket-lang.org/pollen/")
◊(define racket-site "https://racket-lang.org/")
◊(define canonical-url (mk-canonical-url (select-from-metas 'here-path metas)))

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta name="google-site-verification" content="uBlVSjYSITD7PlZLCLEyJJFbHt6kmFbR_jocCAVjfa4"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Charis+SIL:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="canonical" href="◊|canonical-url|" />
    <title>◊|my-name|</title>
    <link rel="stylesheet" type="text/css" href="/styles.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/styles/default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/highlight.min.js"></script>
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
