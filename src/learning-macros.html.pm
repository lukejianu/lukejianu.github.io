#lang pollen
◊(require pollen/unstable/pygments)
◊(make-highlight-css)

◊(define some-constant "foo")

◊headline{Learning Macros}

◊p{
Next semester (Spring 2025) is my last semester of school, and I'm taking
Michael Ballantyne's class on Domain Specific Languages. Macros are the
foundation of DSLs, so I'm trying to gain some familiarity.
This post is mainly for me—I learn best when I write down concepts in my own words. 
}

◊h3{Fear of Macros}

◊p{
I'll start with reading Fear of Macros by Greg Hendershott.
}

◊h4{Chapter 3: Transform!}

◊p{
}

◊highlight['racket
           #:line-numbers? #f]{
// foo.rkt

(+ 1 2)
}
