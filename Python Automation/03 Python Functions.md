## Functions

You’re already familiar with the print(), input(), and len() functions from the previous chapters. Python provides several built-in functions like these, but you can also write your own functions. A function is like a miniprogram within a program.

To better understand how functions work, let’s create one. Enter this program into the file editor and save it as helloFunc.py:

```
➊ def hello():
    ➋ print('Howdy!')
       print('Howdy!!!')
       print('Hello there.')

➌ hello()
   hello()
   hello()
```

You can view the execution of this program at https://autbor.com/hellofunc/. The first line is a def statement ➊, which defines a function named hello(). The code in the block that follows the def statement ➋ is the body of the function. This code is executed when the function is called, not when the function is first defined.

The hello() lines after the function ➌ are function calls. In code, a function call is just the function’s name followed by parentheses, possibly with some number of arguments in between the parentheses. When the program execution reaches these calls, it will jump to the top line in the function and begin executing the code there. When it reaches the end of the function, the execution returns to the line that called the function and continues moving through the code as before.

Since this program calls hello() three times, the code in the hello() function is executed three times. When you run this program, the output looks like this:

```
Howdy!
Howdy!!!
Hello there.
Howdy!
Howdy!!!
Hello there.
Howdy!
Howdy!!!
Hello there.
```

A major purpose of functions is to group code that gets executed multiple times. Without a function defined, you would have to copy and paste this code each time, and the program would look like this:

```
print('Howdy!')
print('Howdy!!!')
print('Hello there.')
print('Howdy!')
print('Howdy!!!')
print('Hello there.')
print('Howdy!')
print('Howdy!!!')
print('Hello there.')
```

In general, you always want to avoid duplicating code because if you ever decide to update the code—if, for example, you find a bug you need to fix—you’ll have to remember to change the code everywhere you copied it.

As you get more programming experience, you’ll often find yourself deduplicating code, which means getting rid of duplicated or copy-and-pasted code. Deduplication makes your programs shorter, easier to read, and easier to update.

### def Statements with Parameters

When you call the print() or len() function, you pass them values, called arguments, by typing them between the parentheses. You can also define your own functions that accept arguments. Type this example into the file editor and save it as helloFunc2.py:

```
➊ def hello(name):
    ➋ print('Hello, ' + name)

➌ hello('Alice')
   hello('Bob')
```

When you run this program, the output looks like this:

```
Hello, Alice
Hello, Bob
```
You can view the execution of this program at https://autbor.com/hellofunc2/. The definition of the hello() function in this program has a parameter called name ➊. Parameters are variables that contain arguments. When a function is called with arguments, the arguments are stored in the parameters. The first time the hello() function is called, it is passed the argument 'Alice' ➌. The program execution enters the function, and the parameter name is automatically set to 'Alice', which is what gets printed by the print() statement ➋.

One special thing to note about parameters is that the value stored in a parameter is forgotten when the function returns. For example, if you added print(name) after hello('Bob') in the previous program, the program would give you a NameError because there is no variable named name. This variable is destroyed after the function call hello('Bob') returns, so print(name) would refer to a name variable that does not exist.

This is similar to how a program’s variables are forgotten when the program terminates. I’ll talk more about why that happens later in the chapter, when I discuss what a function’s local scope is.

### Define, Call, Pass, Argument, Parameter
The terms define, call, pass, argument, and parameter can be confusing. Let’s look at a code example to review these terms:
```
➊ def sayHello(name):
       print('Hello, ' + name)
➋ sayHello('Al')
```

To define a function is to create it, just like an assignment statement like spam = 42 creates the spam variable. The def statement defines the sayHello() function ➊. The sayHello('Al') line ➋ calls the now-created function, sending the execution to the top of the function’s code. This function call is also known as passing the string value 'Al' to the function. A value being passed to a function in a function call is an argument. The argument 'Al' is assigned to a local variable named name. Variables that have arguments assigned to them are parameters.

It’s easy to mix up these terms, but keeping them straight will ensure that you know precisely what the text in this chapter means.

### Return Values and return Statements

When you call the len() function and pass it an argument such as 'Hello', the function call evaluates to the integer value 5, which is the length of the string you passed it. In general, the value that a function call evaluates to is called the return value of the function.

When creating a function using the def statement, you can specify what the return value should be with a return statement. A return statement consists of the following:

* The return keyword
* The value or expression that the function should return
When an expression is used with a return statement, the return value is what this expression evaluates to. For example, the following program defines a function that returns a different string depending on what number it is passed as an argument. Enter this code into the file editor and save it as magic8Ball.py:

```
➊ import random

➋ def getAnswer(answerNumber):
    ➌ if answerNumber == 1:
           return 'It is certain'
       elif answerNumber == 2:
           return 'It is decidedly so'
       elif answerNumber == 3:
           return 'Yes'
       elif answerNumber == 4:
           return 'Reply hazy try again'
       elif answerNumber == 5:
           return 'Ask again later'
       elif answerNumber == 6:
           return 'Concentrate and ask again'
       elif answerNumber == 7:
           return 'My reply is no'
       elif answerNumber == 8:
           return 'Outlook not so good'
       elif answerNumber == 9:
           return 'Very doubtful'

➍ r = random.randint(1, 9)
➎ fortune = getAnswer(r)
➏ print(fortune)
```

You can view the execution of this program at https://autbor.com/magic8ball/. When this program starts, Python first imports the random module ➊. Then the getAnswer() function is defined ➋. Because the function is being defined (and not called), the execution skips over the code in it. Next, the random.randint() function is called with two arguments: 1 and 9 ➍. It evaluates to a random integer between 1 and 9 (including 1 and 9 themselves), and this value is stored in a variable named r.

The getAnswer() function is called with r as the argument ➎. The program execution moves to the top of the getAnswer() function ➌, and the value r is stored in a parameter named answerNumber. Then, depending on the value in answerNumber, the function returns one of many possible string values. The program execution returns to the line at the bottom of the program that originally called getAnswer() ➎. The returned string is assigned to a variable named fortune, which then gets passed to a print() call ➏ and is printed to the screen.

Note that since you can pass return values as an argument to another function call, you could shorten these three lines:

```
r = random.randint(1, 9)
fortune = getAnswer(r)
print(fortune)
```

to this single equivalent line:

```
print(getAnswer(random.randint(1, 9)))
```

Remember, expressions are composed of values and operators. A function call can be used in an expression because the call evaluates to its return value.

### The None Value

In Python, there is a value called None, which represents the absence of a value. The None value is the only value of the NoneType data type. (Other programming languages might call this value null, nil, or undefined.) Just like the Boolean True and False values, None must be typed with a capital N.

This value-without-a-value can be helpful when you need to store something that won’t be confused for a real value in a variable. One place where None is used is as the return value of print(). The print() function displays text on the screen, but it doesn’t need to return anything in the same way len() or input() does. But since all function calls need to evaluate to a return value, print() returns None. To see this in action, enter the following into the interactive shell:

```
>>> spam = print('Hello!')
Hello!
>>> None == spam
True
```
Behind the scenes, Python adds return None to the end of any function definition with no return statement. This is similar to how a while or for loop implicitly ends with a continue statement. Also, if you use a return statement without a value (that is, just the return keyword by itself), then None is returned.

### Keyword Arguments and the print() Function

Most arguments are identified by their position in the function call. For example, random.randint(1, 10) is different from random.randint(10, 1). The function call random.randint(1, 10) will return a random integer between 1 and 10 because the first argument is the low end of the range and the second argument is the high end (while random.randint(10, 1) causes an error).

However, rather than through their position, keyword arguments are identified by the keyword put before them in the function call. Keyword arguments are often used for optional parameters. For example, the print() function has the optional parameters end and sep to specify what should be printed at the end of its arguments and between its arguments (separating them), respectively.

If you ran a program with the following code:

```
print('Hello')
print('World')
```

the output would look like this:

```
Hello
World
```
The two outputted strings appear on separate lines because the print() function automatically adds a newline character to the end of the string it is passed. However, you can set the end keyword argument to change the newline character to a different string. For example, if the code were this:

```
print('Hello', end='')
print('World')

```
the output would look like this:

```
HelloWorld
```

The output is printed on a single line because there is no longer a newline printed after 'Hello'. Instead, the blank string is printed. This is useful if you need to disable the newline that gets added to the end of every print() function call.

Similarly, when you pass multiple string values to print(), the function will automatically separate them with a single space. Enter the following into the interactive shell:
```
>>> print('cats', 'dogs', 'mice')
cats dogs mice
```

But you could replace the default separating string by passing the sep keyword argument a different string. Enter the following into the interactive shell:

```
>>> print('cats', 'dogs', 'mice', sep=',')
cats,dogs,mice
```

You can add keyword arguments to the functions you write as well, but first you’ll have to learn about the list and dictionary data types in the next two chapters. For now, just know that some functions have optional keyword arguments that can be specified when the function is called.

### The Call Stack

Imagine that you have a meandering conversation with someone. You talk about your friend Alice, which then reminds you of a story about your coworker Bob, but first you have to explain something about your cousin Carol. You finish you story about Carol and go back to talking about Bob, and when you finish your story about Bob, you go back to talking about Alice. But then you are reminded about your brother David, so you tell a story about him, and then get back to finishing your original story about Alice. Your conversation followed a stack-like structure, like in Figure 3-1. The conversation is stack-like because the current topic is always at the top of the stack.

![image](https://user-images.githubusercontent.com/11299574/134648823-2c86126f-1ccf-43e2-91d1-d4d4abaed1cb.png)

Figure 3-1: Your meandering conversation stack

Similar to our meandering conversation, calling a function doesn’t send the execution on a one-way trip to the top of a function. Python will remember which line of code called the function so that the execution can return there when it encounters a return statement. If that original function called other functions, the execution would return to those function calls first, before returning from the original function call.

Open a file editor window and enter the following code, saving it as abcdCallStack.py:

```
   def a():
       print('a() starts')
    ➊ b()
    ➋ d()
       print('a() returns')

   def b():
       print('b() starts')
    ➌ c()
       print('b() returns')

   def c():
    ➍ print('c() starts')
       print('c() returns')

   def d():
       print('d() starts')
       print('d() returns')

➎ a()
```

If you run this program, the output will look like this:

```
a() starts
b() starts
c() starts
c() returns
b() returns
d() starts
d() returns
a() returns
```

You can view the execution of this program at https://autbor.com/abcdcallstack/. When a() is called ➎, it calls b() ➊, which in turn calls c() ➌. The c() function doesn’t call anything; it just displays c() starts ➍ and c() returns before returning to the line in b() that called it ➌. Once execution returns to the code in b() that called c(), it returns to the line in a() that called b() ➊. The execution continues to the next line in the b() function ➋, which is a call to d(). Like the c() function, the d() function also doesn’t call anything. It just displays d() starts and d() returns before returning to the line in b() that called it. Since b() contains no other code, the execution returns to the line in a() that called b() ➋. The last line in a() displays a() returns before returning to the original a() call at the end of the program ➎.

The call stack is how Python remembers where to return the execution after each function call. The call stack isn’t stored in a variable in your program; rather, Python handles it behind the scenes. When your program calls a function, Python creates a frame object on the top of the call stack. Frame objects store the line number of the original function call so that Python can remember where to return. If another function call is made, Python puts another frame object on the call stack above the other one.

When a function call returns, Python removes a frame object from the top of the stack and moves the execution to the line number stored in it. Note that frame objects are always added and removed from the top of the stack and not from any other place. Figure 3-2 illustrates the state of the call stack in abcdCallStack.py as each function is called and returns.

![image](https://user-images.githubusercontent.com/11299574/134649019-dcf6ab95-efc0-4095-926e-3efb6f9c1f9c.png)

Figure 3-2: The frame objects of the call stack as abcdCallStack.py calls and returns from functions

The top of the call stack is which function the execution is currently in. When the call stack is empty, the execution is on a line outside of all functions.

The call stack is a technical detail that you don’t strictly need to know about to write programs. It’s enough to understand that function calls return to the line number they were called from. However, understanding call stacks makes it easier to understand local and global scopes, described in the next section.

### Local and Global Scope

Parameters and variables that are assigned in a called function are said to exist in that function’s local scope. Variables that are assigned outside all functions are said to exist in the global scope. A variable that exists in a local scope is called a local variable, while a variable that exists in the global scope is called a global variable. A variable must be one or the other; it cannot be both local and global.

Think of a scope as a container for variables. When a scope is destroyed, all the values stored in the scope’s variables are forgotten. There is only one global scope, and it is created when your program begins. When your program terminates, the global scope is destroyed, and all its variables are forgotten. Otherwise, the next time you ran a program, the variables would remember their values from the last time you ran it.

A local scope is created whenever a function is called. Any variables assigned in the function exist within the function’s local scope. When the function returns, the local scope is destroyed, and these variables are forgotten. The next time you call the function, the local variables will not remember the values stored in them from the last time the function was called. Local variables are also stored in frame objects on the call stack.

Scopes matter for several reasons:

* Code in the global scope, outside of all functions, cannot use any local variables.
* However, code in a local scope can access global variables.
* Code in a function’s local scope cannot use variables in any other local scope.
* You can use the same name for different variables if they are in different scopes. That is, there can be a local variable named spam and a global variable also named spam.
The reason Python has different scopes instead of just making everything a global variable is so that when variables are modified by the code in a particular call to a function, the function interacts with the rest of the program only through its parameters and the return value. This narrows down the number of lines of code that may be causing a bug. If your program contained nothing but global variables and had a bug because of a variable being set to a bad value, then it would be hard to track down where this bad value was set. It could have been set from anywhere in the program, and your program could be hundreds or thousands of lines long! But if the bug is caused by a local variable with a bad value, you know that only the code in that one function could have set it incorrectly.

While using global variables in small programs is fine, it is a bad habit to rely on global variables as your programs get larger and larger.

### Local Variables Cannot Be Used in the Global Scope

Consider this program, which will cause an error when you run it:

```
def spam():
➊ eggs = 31337
spam()
print(eggs)
```

If you run this program, the output will look like this:

```
Traceback (most recent call last):
  File "C:/test1.py", line 4, in <module>
    print(eggs)
NameError: name 'eggs' is not defined
```

The error happens because the eggs variable exists only in the local scope created when spam() is called ➊. Once the program execution returns from spam, that local scope is destroyed, and there is no longer a variable named eggs. So when your program tries to run print(eggs), Python gives you an error saying that eggs is not defined. This makes sense if you think about it; when the program execution is in the global scope, no local scopes exist, so there can’t be any local variables. This is why only global variables can be used in the global scope.

Local Scopes Cannot Use Variables in Other Local Scopes
A new local scope is created whenever a function is called, including when a function is called from another function. Consider this program:

```
  def spam():
    ➊ eggs = 99
    ➋ bacon()
    ➌ print(eggs)

   def bacon():
       ham = 101
    ➍ eggs = 0

➎ spam()
```
You can view the execution of this program at https://autbor.com/otherlocalscopes/. When the program starts, the spam() function is called ➎, and a local scope is created. The local variable eggs ➊ is set to 99. Then the bacon() function is called ➋, and a second local scope is created. Multiple local scopes can exist at the same time. In this new local scope, the local variable ham is set to 101, and a local variable eggs—which is different from the one in spam()’s local scope—is also created ➍ and set to 0.

When bacon() returns, the local scope for that call is destroyed, including its eggs variable. The program execution continues in the spam() function to print the value of eggs ➌. Since the local scope for the call to spam() still exists, the only eggs variable is the spam() function’s eggs variable, which was set to 99. This is what the program prints.

The upshot is that local variables in one function are completely separate from the local variables in another function.

### Global Variables Can Be Read from a Local Scope

Consider the following program:

```
def spam():
    print(eggs)
eggs = 42
spam()
print(eggs)
```

You can view the execution of this program at https://autbor.com/readglobal/. Since there is no parameter named eggs or any code that assigns eggs a value in the spam() function, when eggs is used in spam(), Python considers it a reference to the global variable eggs. This is why 42 is printed when the previous program is run.

### Local and Global Variables with the Same Name

Technically, it’s perfectly acceptable to use the same variable name for a global variable and local variables in different scopes in Python. But, to simplify your life, avoid doing this. To see what happens, enter the following code into the file editor and save it as localGlobalSameName.py:

```
   def spam():
    ➊ eggs = 'spam local'
       print(eggs)    # prints 'spam local'

   def bacon():
    ➋ eggs = 'bacon local'
       print(eggs)    # prints 'bacon local'
       spam()
       print(eggs)    # prints 'bacon local'

➌ eggs = 'global'
   bacon()
   print(eggs)        # prints 'global'
```

When you run this program, it outputs the following:

```
bacon local
spam local
bacon local
global
```

You can view the execution of this program at https://autbor.com/localglobalsamename/. There are actually three different variables in this program, but confusingly they are all named eggs. The variables are as follows:

➊ A variable named eggs that exists in a local scope when spam() is called.

➋ A variable named eggs that exists in a local scope when bacon() is called.

➌ A variable named eggs that exists in the global scope.

Since these three separate variables all have the same name, it can be confusing to keep track of which one is being used at any given time. This is why you should avoid using the same variable name in different scopes.
















