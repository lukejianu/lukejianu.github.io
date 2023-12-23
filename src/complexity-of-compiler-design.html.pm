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
Before, designing a simple compiler, let's build an interpeter.

◊highlight['ocaml
           #:line-numbers? #f]{
type expr =
  | NumE of int64

type value =
  | NumV of int64

let interpret (e: expr) : value =
  match e with
  | (NumE n) -> (NumV n)
}