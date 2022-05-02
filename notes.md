
## Now I know

## Environment
Using Calva for VS Code

## Shortcuts
option + enter evaluates the entire selected form
control + enter evaluates the "current" form
TAB auto-indents
alt + delete overrides paredit's default to avoid deleting parens and brackets
shift + option + control + C + Enter => 



## Threading vs. Not Threading
```clojure
; threading approach
(->> ["I" "💖" "Paredit"]
     (interpose " ~ ")
     (apply str))

; non-threading approach
(apply str (interpose " ~ " ["I" "💖" "Paredit"]))
```