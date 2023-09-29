#lang pollen

/* Setting the font. */ 
:root {
  --font-sans: "Charter", ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
  font-family: var(--font-sans);
}

/* Centering the page */
body {
  margin: 3rem auto;
  max-width: 550px; 
  background-color: rgb(255, 243, 218);
  font-size: 1.05em;
}

h2 {
  font-size: 1.75em;
}

a {
  color: black;
}

a:hover {
  color: grey;
}