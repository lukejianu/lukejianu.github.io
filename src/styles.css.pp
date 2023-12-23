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
  font-size: 1.05em;
}

/* Probably a better way to do this... */
@media screen and (max-width: 600px) {
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

.highlight .hll { background-color: #ffffcc }
.highlight  { background: #ffffff; }
.highlight .c { color: #888888 } /* Comment */
.highlight .err { color: #FF0000; background-color: #FFAAAA } /* Error */
.highlight .k { color: #008800; font-weight: bold } /* Keyword */
.highlight .o { color: #333333 } /* Operator */
.highlight .ch { color: #888888 } /* Comment.Hashbang */
.highlight .cm { color: #888888 } /* Comment.Multiline */
.highlight .cp { color: #557799 } /* Comment.Preproc */
.highlight .cpf { color: #888888 } /* Comment.PreprocFile */
.highlight .c1 { color: #888888 } /* Comment.Single */
.highlight .cs { color: #cc0000; font-weight: bold } /* Comment.Special */
.highlight .gd { color: #A00000 } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #FF0000 } /* Generic.Error */
.highlight .gh { color: #000080; font-weight: bold } /* Generic.Heading */
.highlight .gi { color: #00A000 } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #c65d09; font-weight: bold } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #800080; font-weight: bold } /* Generic.Subheading */
.highlight .gt { color: #0044DD } /* Generic.Traceback */
.highlight .kc { color: #008800; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008800; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008800; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #003388; font-weight: bold } /* Keyword.Pseudo */
.highlight .kr { color: #008800; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #333399; font-weight: bold } /* Keyword.Type */
.highlight .m { color: #6600EE; font-weight: bold } /* Literal.Number */
.highlight .s { background-color: #fff0f0 } /* Literal.String */
.highlight .na { color: #0000CC } /* Name.Attribute */
.highlight .nb { color: #007020 } /* Name.Builtin */
.highlight .nc { color: #BB0066; font-weight: bold } /* Name.Class */
.highlight .no { color: #003366; font-weight: bold } /* Name.Constant */
.highlight .nd { color: #555555; font-weight: bold } /* Name.Decorator */
.highlight .ni { color: #880000; font-weight: bold } /* Name.Entity */
.highlight .ne { color: #FF0000; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0066BB; font-weight: bold } /* Name.Function */
.highlight .nl { color: #997700; font-weight: bold } /* Name.Label */
.highlight .nn { color: #0e84b5; font-weight: bold } /* Name.Namespace */
.highlight .nt { color: #007700 } /* Name.Tag */
.highlight .nv { color: #996633 } /* Name.Variable */
.highlight .ow { color: #000000; font-weight: bold } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #6600EE; font-weight: bold } /* Literal.Number.Bin */
.highlight .mf { color: #6600EE; font-weight: bold } /* Literal.Number.Float */
.highlight .mh { color: #005588; font-weight: bold } /* Literal.Number.Hex */
.highlight .mi { color: #0000DD; font-weight: bold } /* Literal.Number.Integer */
.highlight .mo { color: #4400EE; font-weight: bold } /* Literal.Number.Oct */
.highlight .sa { background-color: #fff0f0 } /* Literal.String.Affix */
.highlight .sb { background-color: #fff0f0 } /* Literal.String.Backtick */
.highlight .sc { color: #0044DD } /* Literal.String.Char */
.highlight .dl { background-color: #fff0f0 } /* Literal.String.Delimiter */
.highlight .sd { color: #DD4422 } /* Literal.String.Doc */
.highlight .s2 { background-color: #fff0f0 } /* Literal.String.Double */
.highlight .se { color: #666666; font-weight: bold; background-color: #fff0f0 } /* Literal.String.Escape */
.highlight .sh { background-color: #fff0f0 } /* Literal.String.Heredoc */
.highlight .si { background-color: #eeeeee } /* Literal.String.Interpol */
.highlight .sx { color: #DD2200; background-color: #fff0f0 } /* Literal.String.Other */
.highlight .sr { color: #000000; background-color: #fff0ff } /* Literal.String.Regex */
.highlight .s1 { background-color: #fff0f0 } /* Literal.String.Single */
.highlight .ss { color: #AA6600 } /* Literal.String.Symbol */
.highlight .bp { color: #007020 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0066BB; font-weight: bold } /* Name.Function.Magic */
.highlight .vc { color: #336699 } /* Name.Variable.Class */
.highlight .vg { color: #dd7700; font-weight: bold } /* Name.Variable.Global */
.highlight .vi { color: #3333BB } /* Name.Variable.Instance */
.highlight .vm { color: #996633 } /* Name.Variable.Magic */
.highlight .il { color: #0000DD; font-weight: bold } /* Literal.Number.Integer.Long */