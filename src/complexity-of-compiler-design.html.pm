#lang pollen
◊(require pollen/unstable/pygments)
◊(make-highlight-css)
◊(define blerner-site "https://www.khoury.northeastern.edu/home/blerner/")
◊(define cs4410-site "https://course.ccs.neu.edu/cs4410/")

◊headline{Complexity of Compiler Design}

◊p{
"Compilers are perceived to be magical artifacts, carefully crafted
by the wizards, and unfathomable by the mere mortals."—◊(link "http://scheme2006.cs.uchicago.edu/11-ghuloum.pdf" "Abdulaziz Ghuloum")
}

◊p{
One of the famous books on compilers is known as "The Dragon Book". The cover features a brave knight, wielding mighty tools:
the Syntax Directed Translation Shield and the LALR Parser Generator Sword. The dragon, massive in comparison to the small knight,
has scales marked Complexity of Compiler Design.
}

◊p{
This blog post is my attempt to put what I learned in the first few lectures
of ◊(link blerner-site "Ben Lerner's") ◊(link cs4410-site "CS4410") course in my own words.
}

◊h3{What is a Compiler?}
◊p{
A compiler is a program that consumes a program as input and produces another program.
}

◊p{
◊code{gcc} is a compiler. It compiles C programs to ◊em{binaries}, which you can think of as executables.
}

◊highlight['c
           #:line-numbers? #f]{
// foo.c
#include <stdio.h>

int main() {
    printf("Hello, world!\n");
}
}

◊p{
You can use ◊code{gcc} to compile ◊code{foo.c} to the executable ◊code{foo}.
Run the executable ◊code{foo}, and we see ◊code{Hello, World!} printed on the screen.
}

◊highlight['shell
           #:line-numbers? #f]{
luke@mbp ~ % gcc foo.c -o foo
luke@mbp ~ % ./foo
Hello, world!
}

◊p{
◊code{gcc} gives programmers the ability turn C source code into a binary executable that a computer
can understand.
}

◊h4{Compilers vs. Interpreters}

◊highlight['ocaml
           #:line-numbers? #f]{
let compile (src: source_program) : target_program = ...
let interpret (src: source_program) : value = ...
}

◊p{
I learned in ◊(link "https://www.plai.org/" "PLAI") that compilers and interpreters are both ◊em{evaluators}—"An evaluator reduces
programs to values".
}

◊p{
An interpreter consumes a program and runs it. In other words, it reduces a program all the way into a value.

◊highlight['python
           #:line-numbers? #f]{
# foo.py

print("Hello, world!")
}

◊highlight['shell
           #:line-numbers? #f]{
luke@mbp ~ % python foo.py
Hello, world!
}
}

◊p{
We can clearly see that ◊code{python3 foo.py} takes in a program and executes the code directly, which is
why we see ◊code{"Hello, world!"} printed. This is in constrast with ◊code{gcc}, which produced another program.
}

◊p{
Consider an important difference: after a compiler has compiled a program, the compiler
can be thrown away. However, throwing away an interpreter after evaluating a program would mean that program can no longer be run!
}

◊p{
As mentioned earlier, a compiler consumes a program and produces another program. The resulting program is a
◊em{reduced program}, meaning that it's ◊em{closer} to the point where an interpreter can run the program.
}

◊h3{A Simple Interpreter}

◊p{
Before designing a simple compiler, let's build an interpeter. The
◊code{expr} type represents the source program.
}

◊highlight['ocaml
           #:line-numbers? #f]{
type expr =
  | NumE of int64

type value = int64

let interpret (e: expr) : value =
  match e with
  | (NumE n) -> n
}

◊p{
To make our source program more interesting, let's introduce new ◊em{syntax}.
}

◊highlight['ocaml
           #:line-numbers? #f]{
type expr =
  | NumE of int64
  | Add1 of expr
  | Sub1 of expr

type value = int64

let rec interpret (e: expr) : value =
  match e with
  | (NumE n) -> n
  | (Add1 e') -> Int64.add 1L (interpret e')
  | (Sub1 e') -> Int64.sub (interpret e') 1L
}

◊h3{A Simple Compiler}

◊highlight['ocaml
           #:line-numbers? #f]{
type expr =
  | NumE of int64

type reg = 
  | RAX

type arg = 
  | Reg of reg
  | Const of int64

type instruction = 
  | IMov of (arg * arg)

let rec compile (e: expr) : instruction list =
  match e with
  | (NumE n) -> [IMov(Reg(RAX), Const(n))]
}
