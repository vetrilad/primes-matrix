# Exercise
### Task
Write a simple Ruby program which takes a single number n from the user and in response displays n*n table, such that the content of cell (a,b) is a sum of a-th and b-th prime number. So for example for input `3` the output should read:
```
4 5  7
5 6  8
7 8 10
```
### How to use it
Program does not require any external dependancies to execute.

Run

`./prime.rb`

And follow the instructions

Example program output:
```
This program takes a single number n from the user and in response displays n*n table, such that the content of cell (a,b) is a sum of a-th and b-th prime number
Please give the size of your square table eg. 3
4
 4   5   7   9
 5   6   8  10
 7   8  10  12
 9  10  12  14
Please give the size of your square table eg. 3
...
```

To run the tests, install dependancies

`bundle install`

And run the tests

`rspec`
