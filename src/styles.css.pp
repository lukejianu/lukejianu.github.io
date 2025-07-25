#lang pollen

/* Setting the font. */ 
:root {
  font-family: "Charis SIL", serif;
}

/* Centering the page */
body {
  margin: 3rem auto;
  max-width: 530px; 
}

@media screen and (max-width: 530px) {
  body {
    max-width: 95%;
  }
}

h2 {
  font-size: 1.75em;
}

a {
  color: black;
}

a:hover {
  color: grey;
  text-decoration: wavy underline
}

blockquote {
  background: #f4f4eb;
  max-width: 450px; 
}

footer {
  font-size: 0.7em;
}
