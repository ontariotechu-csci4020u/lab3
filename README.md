# Lab 3: Antlr lexical analyzer

## About

In this lab, we will be building a lexical analyzer for the Java programming language in ANTLR.  The lexical analyzer, also known as the _lexer_, will be converting general Java source code to tokens.  We aim to be able to handle at least the most commonly found tokens.

You are given the following files:

```
.
├── Makefile
├── reference.json
├── src
│   ├── Check.java
│   └── JavaLexer.g4
├── target
└── test
    ├── Main.java
    ├── Test1.java
    ├── Test2.java
    ├── Test3.java
    ├── Test4.java
    ├── Test5.java
    ├── Test6.java
    └── Test7.java
```

- The `JavaLexer.g4` is the lexer grammar file you _must_ complete.
- You are provided a `Check.java` file which performs the lexical analysis, _and_ prints the recognized token stream
in a tabular format.  You must **not modify** this file, but simply use it to run the generated lexer.
- The `Makefile` has three targets:
  1. `make compile` will generate the lexer source (`JavaLexer.java`), and then compile the `.java` files.
  2. `make run` will run the `Check` class on all testcases.  You can run just one testcase with `make run1`, `make run2`, etc.
  3. `make clean` will remove any generated files.
  
## What you need to do

You are required to complete the lexer grammar `JavaLexer.g4` so that your lexer recognizes all the tokens with correct types and lexemes for the seven test Java source files.

In order to get it right, you need to:

1. Name the token types in ANTLR as expected.
2. Provide the _right_ lexical rule for the token types.

## Guidelines in working with ANTLR

Start with the simplest testcase of `Test1.java`.  You just need to worry about *four* different types of tokens to produce the expected output.

```
[  0] [ID             ] "age"
[  1] ['='            ] "="
[  2] [LITERAL_INT    ] "123"
[  3] [';'            ] ";"
```

Check with the expectation using the `check` command.  Once you pass the first test, you can proceed by introducing additional token types.
