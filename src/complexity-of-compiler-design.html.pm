#lang pollen
◊(require pollen/unstable/pygments)
◊(make-highlight-css)

◊headline{Complexity of Compiler Design}

◊p{
"Compilers are perceived to be magical artifacts, carefully crafted
by the wizards, and unfathomable by the mere mortals."—◊(link "http://scheme2006.cs.uchicago.edu/11-ghuloum.pdf" "Abdulaziz Ghuloum")
}

◊p{
One of the famous books on compilers is known as "The Dragon Book". The cover feature a brave knight, wielding mighty tools:
the Syntax Directed Translation Shield and the LALR Parser Generator Sword. The dragon, massive in comparison to the small knight,
has scales marked Complexity of Compiler Design.
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

◊p{
Consider another compiler: ◊code{pdflatex}. I use ◊code{pdflatex} to compile my resume, written in LaTeX, into a PDF.
◊code{pdflatex} turns LaTeX source code, which is only understood by mathematicians and researchers, into the PDF format,
which browsers can understand, and thus display.
}

◊h4{Compilers vs. Interpreters}
◊p{
I learned in ◊(link "https://www.plai.org/" "PLAI") that compilers and interpreters are both ◊em{evaluators}. "An evaluator reduces
programs to values". An interpreter consumes a program, executes it line by line, and produces a value. As mentioned earlier,
a compiler consumes a program and produces another program.
}

◊highlight['ocaml
           #:line-numbers? #f]{
let compile (src: source_program) : target_program = ...
let interpret (src: source_program) : value = ...
}

◊h3{A Simple Interpreter}

◊p{
Before designing a simple compiler, let's build an interpeter. The
◊code{expr} type represents the source program. An ◊em{Abstract Syntax Tree} is...
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
Before designing a simple compiler, let's build an interpeter. The
◊code{expr} type represents the source program. An ◊em{Abstract Syntax Tree} is...
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
