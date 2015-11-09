''' Key Differences, Idris vs Python

(1) Idris is a compiled language, Python is interpreted (by default)
(2) Idris uses static type checking; Python uses dynamic type checking
(3) Idris values are immutable whereas Python has mutable state
(4) Idris is a language of expressions; Python is a language of commands
'''

# COMPILED VS INTERPRETED

# STATIC VS DYNAMIC TYPE CHECKING

''' In Idris, every value has a *static* type. This means that types are known and checked at compile time. One cannot compile a program with a type error in Idris. There is therefore no need to check for *dynamic* type errosr (i.e., when a program is actually running)

In Pyth, every value has two types: a "static" type, as seen by the compiler, and a "dynamic" types, as seen when the program actually runs. The static type of every value in Python is simply "Object." The upshot is that static type checking isn't helpful in Python, and so it is not done. You can write, compile, and run code that passes a string to a function expecting a number, and you won't know there's an error until you run your program and its issues a runtime type error.
'''

# Type checking demo

def foo(n):
    return n + 3

print(foo(6))

# print is a "procedure" that affects the world by printing a console
print("Happy 200th Birthday, George Boole!")
