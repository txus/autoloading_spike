This is an example on how to make autoloading compatible with explicit requires.

The idea is incurr in some extra work to make it possible: basically:

Inside a nesting of `A` and `B`, we call `C` which triggers autoloading `A::B::C`. But instead of only loading `a/b/c`, we load as well `a/b` and `a`.