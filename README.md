complainr
=======================

Explains R objects in plain English. Because they're not understandable enough.

You should really be using Python. And have you seen the speed comparisons with Julia?

### Installation

You can install it with devtools. You *do* have devtools, right?

    devtools::install_github(c("hilaryparker/explainr", "hilaryparker/complainr"))

### Usage

To explain an object, such as a proportion test, do:

    p <- prop.test(50, 100, .2)
    complain(p)

You sorta could have figured that out by yourself.
