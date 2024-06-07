#lang pollen
◊(require pollen/unstable/pygments)
◊(make-highlight-css)

◊(define some-constant "foo")

◊headline{Learning Racket}

◊blockquote{
"A bad day writing code in Scheme is better than a good day writing code in C."—David Stigant
}

◊p{
Next semester (Fall 2024), I am TAing for Fundies I and Fundies IV (Software Development).
Most of my time will be spent programming in Racket. This post is mainly for me—I learn best
when I write down concepts in my own words. 
}

◊h3{The Racket Guide}

◊p{
I'll start with reading The Racket Guide.
}

◊h4{Chapter 1: Welcome to Racket}

◊p{
There isn't much to say here—this chapter introduces the reader to some useful
programs Racketeers use (editors, tools, etc.) and demonstrates how to run Racket programs. 
}

◊h4{Chapter 2: Racket Essentials}

◊p{
This chapter teaches the reader the part of Racket that students see in ISL+.
The reader is introduced to:
◊items{
  ◊item{values - pieces of data that cannot be further reduced.}
  ◊item{definitions - statements that associate names with values.}
  ◊item{expressions - represent computation - are eventually reduced to a value.}
}
}

◊highlight['racket
           #:line-numbers? #f]{
// foo.rkt

(+ 1 2)
}
