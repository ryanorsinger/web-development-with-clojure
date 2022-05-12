
# Notes for Working through "Web Development with Clojure" by Sotnikov and Brown

## Contents
- Chapter content
- Experimental files
- Notes

## Shortcuts
- option + enter evaluates the entire selected form
- control + enter evaluates the "current" form
- TAB auto-indents
- alt + delete overrides paredit's default to avoid deleting parens and brackets
- shift + option + control + C + Enter => loads a file, but is problematic b/c it injects curly braces on shift+option+control+C

## Now We Know (Conceptual pieces)
- The compilation unit for Java is a file or class. 
- The compilation unit for Clojure is an expression. (lends to REPL more)
- Separating the Reader and the Compiler is a key separation that makes room for macros.
- In `(+ 3 4)`, the syntax is the list, the + symbol, the number literals
- In `(+ 3 4)`, the semantics are the `(` for invocation, the `+` for the function, tnd the arguments.


## Now We Know (Language Implementation Details)
- Any integer is a 64 bit integer. 
- Adding N to the end of an integer allows for arbitrary precision like 2432424N
- Floats are double precision 64 bit floats.
- Adding M to the end of a float allows for arbitary float precision like 244.1331M
- `'(1 2 3)     ; list`
- `[1 2 3]      ; vector`
- `#{1 2 3}     ; set`
- `{:a 1, :b 2} ; map`
- `'x` delays the evaluation of the symbol `x` 


## Language Questions
- How, exactly, is the Clojure REPL superior to ipython interactive mode?


## Editor Questions
- How to re-map the "load a file to repl" command
- How to bind or re-map any command in VS Code



## Threading vs. Not Threading
```clojure
; threading approach
(->> ["I" "💖" "Paredit"]
     (interpose " ~ ")
     (apply str))

; non-threading approach
(apply str (interpose " ~ " ["I" "💖" "Paredit"]))
```


## Environment
- Using Calva for VS Code
- Java 11 (openJDK11)
- Clojure 1.10.3
