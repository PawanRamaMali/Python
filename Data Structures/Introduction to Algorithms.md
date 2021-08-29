# Introduction to Algorithm Analysis and Big O

In this lecture we will discuss how to analyze Algorithms and why it is important to do so!

## Why analyze algorithms?

* In this course, an algorithm is simply a procedure or formula for solving a problem. 
* Some problems are famous enough that the algorithms have names, as well as some procdures being common enough that the algorithm associated with it also has a name.

## How do analyze algorithms and how can we compare algorithms against each other?

* Imagine if you and a friend both came up with functions to sum the numbers from 0 to N. 
* How would you compare the functions and algorithms within the functions? 
* Let's say you both came up with these two seperate functions:

```py
# First function (Note the use of xrange since this is in Python 2)
def sum1(n):
    '''
    Take an input of n and return the sum of the numbers from 0 to n
    '''
    final_sum = 0
    for x in xrange(n+1): 
        final_sum += x
    
    return final_sum

sum1(10)

```

```py
def sum2(n):
    """
    Take an input of n and return the sum of the numbers from 0 to n
    """
    return (n*(n+1))/2

sum2(10)
```
