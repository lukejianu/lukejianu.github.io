#lang pollen

:root {
  --font-sans: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
  font-family: var(--font-sans);
}

body {
  margin: 3rem auto;
  max-width: 600px; 
}

header {
  display: flex;
  justify-content: space-between;
}

.my-name {
  margin: auto 0px;
}

.my-name a {
  font-size: 28px;
  text-decoration: none;
  color: black;
}

.nav {
  margin: auto 0px;
}

.nav-links {
  list-style: none;
}

ul.nav-links > li {
  font-size: 1.1em;  
  padding-left: 10px;
  padding-right: 10px;
  display: inline;
}

.nav-links a {
  text-decoration: none;
  color: black;
}

.nav-links a:hover {
  color: grey;
}

.main {
  font-size: 1.1em;
  margin: 3em 0;
}

.page-name {
  display: none;
}

.left-align-bp {
  padding-inline-start: 3%;
}

li.selected-page {
  border: dashed red;
}

.my-image {
  max-width: 50%;
  height: auto;
  display: block;
  margin: 0px auto;
  border-radius: 8px;
  filter: grayscale(75%);
}

.my-image:hover {
  filter: unset;
}

.caption {
  display: block;
  text-align: center;
  color: grey;
  font-style: italic;
  font-size: 0.8em;
  padding: 5px 0px;
}

