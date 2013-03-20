This is an example on how to make autoloading compatible with explicit requires.
In `lib/autoloading.rb` you'll find a super simplified autoloader, just enough to prove the point in the tests, which are in `test/autoloading_test.rb`.

The idea is incurr in some extra work to make this possible:

Inside a nesting of `A` and `B`, we call `C` which triggers autoloading `A::B::C`. But instead of only loading `a/b/c`, we load as well `a/b` and `a`.

The current behavior in Rails is **only** loading `a/b/c`.

## Usage

    $ git@github.com:txus/autoloading_spike.git
    $ cd autoloading_spike
    $ rake
