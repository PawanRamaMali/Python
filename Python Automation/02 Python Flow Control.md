## Flow Control

So, you know the basics of individual instructions and that a program is just a series of instructions. But programming’s real strength isn’t just running one instruction after another like a weekend errand list. Based on how expressions evaluate, a program can decide to skip instructions, repeat them, or choose one of several instructions to run. In fact, you almost never want your programs to start from the first line of code and simply execute every line, straight to the end. Flow control statements can decide which Python instructions to execute under which conditions.

These flow control statements directly correspond to the symbols in a flowchart, so I’ll provide flowchart versions of the code discussed in this chapter. Figure 2-1 shows a flowchart for what to do if it’s raining. Follow the path made by the arrows from Start to End.

![image](https://user-images.githubusercontent.com/11299574/134641680-84c59321-aa82-47e1-906e-2cdbeeb9eeb7.png)

Figure 2-1: A flowchart to tell you what to do if it is raining

In a flowchart, there is usually more than one way to go from the start to the end. The same is true for lines of code in a computer program. Flowcharts represent these branching points with diamonds, while the other steps are represented with rectangles. The starting and ending steps are represented with rounded rectangles.

But before you learn about flow control statements, you first need to learn how to represent those yes and no options, and you need to understand how to write those branching points as Python code. To that end, let’s explore Boolean values, comparison operators, and Boolean operators.

### Boolean Values

While the integer, floating-point, and string data types have an unlimited number of possible values, the Boolean data type has only two values: True and False. (Boolean is capitalized because the data type is named after mathematician George Boole.) When entered as Python code, the Boolean values True and False lack the quotes you place around strings, and they always start with a capital T or F, with the rest of the word in lowercase. Enter the following into the interactive shell. (Some of these instructions are intentionally incorrect, and they’ll cause error messages to appear.)

```
➊ >>> spam = True
   >>> spam
   True
➋ >>> true
   Traceback (most recent call last):
     File "<pyshell#2>", line 1, in <module>
       true
   NameError: name 'true' is not defined
➌ >>> True = 2 + 2
   SyntaxError: can't assign to keyword
```

Like any other value, Boolean values are used in expressions and can be stored in variables ➊. If you don’t use the proper case ➋ or you try to use True and False for variable names ➌, Python will give you an error message.

### Comparison Operators

Comparison operators, also called relational operators, compare two values and evaluate down to a single Boolean value. Table 2-1 lists the comparison operators.

Table 2-1: Comparison Operators

![image](https://user-images.githubusercontent.com/11299574/134641871-b716eca1-cc66-47aa-99b1-4df43d296e38.png)


These operators evaluate to True or False depending on the values you give them. Let’s try some operators now, starting with == and !=.

```
>>> 42 == 42
True
>>> 42 == 99
False
>>> 2 != 3
True
>>> 2 != 2
False
```

As you might expect, == (equal to) evaluates to True when the values on both sides are the same, and != (not equal to) evaluates to True when the two values are different. The == and != operators can actually work with values of any data type.

```
   >>> 'hello' == 'hello'
   True
   >>> 'hello' == 'Hello'
   False
   >>> 'dog' != 'cat'
   True
   >>> True == True
   True
   >>> True != False
   True
   >>> 42 == 42.0
   True
➊ >>> 42 == '42'
   False
```

Note that an integer or floating-point value will always be unequal to a string value. The expression 42 == '42' ➊ evaluates to False because Python considers the integer 42 to be different from the string '42'.

The <, >, <=, and >= operators, on the other hand, work properly only with integer and floating-point values.

```
   >>> 42 < 100
   True
   >>> 42 > 100
   False
   >>> 42 < 42
   False
   >>> eggCount = 42
➊ >>> eggCount <= 42
   True
   >>> myAge = 29
➋ >>> myAge >= 10
   True
```

### THE DIFFERENCE BETWEEN THE == AND = OPERATORS

You might have noticed that the == operator (equal to) has two equal signs, while the = operator (assignment) has just one equal sign. It’s easy to confuse these two operators with each other. Just remember these points:

The == operator (equal to) asks whether two values are the same as each other.
The = operator (assignment) puts the value on the right into the variable on the left.
To help remember which is which, notice that the == operator (equal to) consists of two characters, just like the != operator (not equal to) consists of two characters.

You’ll often use comparison operators to compare a variable’s value to some other value, like in the eggCount <= 42 ➊ and myAge >= 10 ➋ examples. (After all, instead of entering 'dog' != 'cat' in your code, you could have just entered True.) You’ll see more examples of this later when you learn about flow control statements.

### Boolean Operators

The three Boolean operators (and, or, and not) are used to compare Boolean values. Like comparison operators, they evaluate these expressions down to a Boolean value. Let’s explore these operators in detail, starting with the and operator.

### Binary Boolean Operators

The and and or operators always take two Boolean values (or expressions), so they’re considered binary operators. The and operator evaluates an expression to True if both Boolean values are True; otherwise, it evaluates to False. Enter some expressions using and into the interactive shell to see it in action.

```
>>> True and True
True
>>> True and False
False
```

A truth table shows every possible result of a Boolean operator. Table 2-2 is the truth table for the and operator.

Table 2-2: The and Operator’s Truth Table

![image](https://user-images.githubusercontent.com/11299574/134642113-2a383154-6975-46e3-b370-82a7b290d6fc.png)


On the other hand, the or operator evaluates an expression to True if either of the two Boolean values is True. If both are False, it evaluates to False.

```
>>> False or True
True
>>> False or False
False
```

You can see every possible outcome of the or operator in its truth table, shown in Table 2-3.

Table 2-3: The or Operator’s Truth Table

![image](https://user-images.githubusercontent.com/11299574/134642174-75f5d238-442f-4787-92fd-52cf7fa46c93.png)


### The not Operator

Unlike and and or, the not operator operates on only one Boolean value (or expression). This makes it a unary operator. The not operator simply evaluates to the opposite Boolean value.

```
  >>> not True
   False
➊ >>> not not not not True
   True
```

Much like using double negatives in speech and writing, you can nest not operators ➊, though there’s never not no reason to do this in real programs. Table 2-4 shows the truth table for not.

Table 2-4: The not Operator’s Truth Table

![image](https://user-images.githubusercontent.com/11299574/134642262-94d5ddb0-a4f4-4d81-a44f-a248a2baa87e.png)


### Mixing Boolean and Comparison Operators

Since the comparison operators evaluate to Boolean values, you can use them in expressions with the Boolean operators.

Recall that the and, or, and not operators are called Boolean operators because they always operate on the Boolean values True and False. While expressions like 4 < 5 aren’t Boolean values, they are expressions that evaluate down to Boolean values. Try entering some Boolean expressions that use comparison operators into the interactive shell.

```
>>> (4 < 5) and (5 < 6)
True
>>> (4 < 5) and (9 < 6)
False
>>> (1 == 2) or (2 == 2)
True
```
The computer will evaluate the left expression first, and then it will evaluate the right expression. When it knows the Boolean value for each, it will then evaluate the whole expression down to one Boolean value. You can think of the computer’s evaluation process for (4 < 5) and (5 < 6) as the following:


![image](https://user-images.githubusercontent.com/11299574/134642352-7afb258a-1c34-4053-9031-0103a4593ebc.png)


You can also use multiple Boolean operators in an expression, along with the comparison operators:

```
>>> 2 + 2 == 4 and not 2 + 2 == 5 and 2 * 2 == 2 + 2
True
```

The Boolean operators have an order of operations just like the math operators do. After any math and comparison operators evaluate, Python evaluates the not operators first, then the and operators, and then the or operators.

### Elements of Flow Control

Flow control statements often start with a part called the condition and are always followed by a block of code called the clause. Before you learn about Python’s specific flow control statements, I’ll cover what a condition and a block are.


### Conditions

The Boolean expressions you’ve seen so far could all be considered conditions, which are the same thing as expressions; condition is just a more specific name in the context of flow control statements. Conditions always evaluate down to a Boolean value, True or False. A flow control statement decides what to do based on whether its condition is True or False, and almost every flow control statement uses a condition.

### Blocks of Code

Lines of Python code can be grouped together in blocks. You can tell when a block begins and ends from the indentation of the lines of code. There are three rules for blocks.

* Blocks begin when the indentation increases.
* Blocks can contain other blocks.
* Blocks end when the indentation decreases to zero or to a containing block’s indentation.

Blocks are easier to understand by looking at some indented code, so let’s find the blocks in part of a small game program, shown here:

```
  name = 'Mary'
  password = 'swordfish'
  if name == 'Mary':
    ➊ print('Hello, Mary')
       if password == 'swordfish':
        ➋ print('Access granted.')
       else:
        ➌ print('Wrong password.')
```

You can view the execution of this program at https://autbor.com/blocks/. The first block of code ➊ starts at the line print('Hello, Mary') and contains all the lines after it. Inside this block is another block ➋, which has only a single line in it: print('Access Granted.'). The third block ➌ is also one line long: print('Wrong password.').

### Program Execution

In the previous chapter’s hello.py program, Python started executing instructions at the top of the program going down, one after another. The program execution (or simply, execution) is a term for the current instruction being executed. If you print the source code on paper and put your finger on each line as it is executed, you can think of your finger as the program execution.

Not all programs execute by simply going straight down, however. If you use your finger to trace through a program with flow control statements, you’ll likely find yourself jumping around the source code based on conditions, and you’ll probably skip entire clauses.

### Flow Control Statements

Now, let’s explore the most important piece of flow control: the statements themselves. The statements represent the diamonds you saw in the flowchart in Figure 2-1, and they are the actual decisions your programs will make.

### if Statements

The most common type of flow control statement is the if statement. An if statement’s clause (that is, the block following the if statement) will execute if the statement’s condition is True. The clause is skipped if the condition is False.

In plain English, an if statement could be read as, “If this condition is true, execute the code in the clause.” In Python, an if statement consists of the following:

The if keyword
A condition (that is, an expression that evaluates to True or False)
A colon
Starting on the next line, an indented block of code (called the if clause)
For example, let’s say you have some code that checks to see whether someone’s name is Alice. (Pretend name was assigned some value earlier.)

```
if name == 'Alice':
    print('Hi, Alice.')
```

All flow control statements end with a colon and are followed by a new block of code (the clause). This if statement’s clause is the block with print('Hi, Alice.'). Figure 2-2 shows what a flowchart of this code would look like.

![image](https://user-images.githubusercontent.com/11299574/134644143-1cc72148-3724-41cf-8ef0-ce4a739f667e.png)

Figure 2-2: The flowchart for an if statement

### else Statements

An if clause can optionally be followed by an else statement. The else clause is executed only when the if statement’s condition is False. In plain English, an else statement could be read as, “If this condition is true, execute this code. Or else, execute that code.” An else statement doesn’t have a condition, and in code, an else statement always consists of the following:

* The else keyword
* A colon
* Starting on the next line, an indented block of code (called the else clause)

Returning to the Alice example, let’s look at some code that uses an else statement to offer a different greeting if the person’s name isn’t Alice.

```
if name == 'Alice':
    print('Hi, Alice.')
else:
    print('Hello, stranger.')
    
```
Figure 2-3 shows what a flowchart of this code would look like.

![image](https://user-images.githubusercontent.com/11299574/134644220-cb23e21f-8d9a-4253-9935-b761930d2291.png)

Figure 2-3: The flowchart for an else statement

### elif Statements

While only one of the if or else clauses will execute, you may have a case where you want one of many possible clauses to execute. The elif statement is an “else if” statement that always follows an if or another elif statement. It provides another condition that is checked only if all of the previous conditions were False. In code, an elif statement always consists of the following:

The elif keyword
A condition (that is, an expression that evaluates to True or False)
A colon
Starting on the next line, an indented block of code (called the elif clause)
Let’s add an elif to the name checker to see this statement in action.

```
if name == 'Alice':
    print('Hi, Alice.')
elif age < 12:
    print('You are not Alice, kiddo.')
```

This time, you check the person’s age, and the program will tell them something different if they’re younger than 12. You can see the flowchart for this in Figure 2-4.

![image](https://user-images.githubusercontent.com/11299574/134644301-91e63239-8442-462c-9b8a-749a14c33498.png)


Figure 2-4: The flowchart for an elif statement

The elif clause executes if age < 12 is True and name == 'Alice' is False. However, if both of the conditions are False, then both of the clauses are skipped. It is not guaranteed that at least one of the clauses will be executed. When there is a chain of elif statements, only one or none of the clauses will be executed. Once one of the statements’ conditions is found to be True, the rest of the elif clauses are automatically skipped. For example, open a new file editor window and enter the following code, saving it as vampire.py:

```
name = 'Carol'
age = 3000
if name == 'Alice':
    print('Hi, Alice.')
elif age < 12:
    print('You are not Alice, kiddo.')
elif age > 2000:
    print('Unlike you, Alice is not an undead, immortal vampire.')
elif age > 100:
    print('You are not Alice, grannie.')
```

You can view the execution of this program at https://autbor.com/vampire/. Here, I’ve added two more elif statements to make the name checker greet a person with different answers based on age. Figure 2-5 shows the flowchart for this.

![image](https://user-images.githubusercontent.com/11299574/134644380-c9499494-2811-4e85-b5ad-baf5fd3629f2.png)

Figure 2-5: The flowchart for multiple elif statements in the vampire.py program

The order of the elif statements does matter, however. Let’s rearrange them to introduce a bug. Remember that the rest of the elif clauses are automatically skipped once a True condition has been found, so if you swap around some of the clauses in vampire.py, you run into a problem. Change the code to look like the following, and save it as vampire2.py:

```
   name = 'Carol'
   age = 3000
   if name == 'Alice':
       print('Hi, Alice.')
   elif age < 12:
       print('You are not Alice, kiddo.')
➊ elif age > 100:
       print('You are not Alice, grannie.')
   elif age > 2000:
       print('Unlike you, Alice is not an undead, immortal vampire.')
```


You can view the execution of this program at https://autbor.com/vampire2/. Say the age variable contains the value 3000 before this code is executed. You might expect the code to print the string 'Unlike you, Alice is not an undead, immortal vampire.'. However, because the age > 100 condition is True (after all, 3,000 is greater than 100) ➊, the string 'You are not Alice, grannie.' is printed, and the rest of the elif statements are automatically skipped. Remember that at most only one of the clauses will be executed, and for elif statements, the order matters!

Figure 2-6 shows the flowchart for the previous code. Notice how the diamonds for age > 100 and age > 2000 are swapped.

Optionally, you can have an else statement after the last elif statement. In that case, it is guaranteed that at least one (and only one) of the clauses will be executed. If the conditions in every if and elif statement are False, then the else clause is executed. For example, let’s re-create the Alice program to use if, elif, and else clauses.

```
name = 'Carol'
age = 3000
if name == 'Alice':
    print('Hi, Alice.')
elif age < 12:
    print('You are not Alice, kiddo.')
else:
    print('You are neither Alice nor a little kid.')
```

You can view the execution of this program at https://autbor.com/littlekid/. Figure 2-7 shows the flowchart for this new code, which we’ll save as littleKid.py.

In plain English, this type of flow control structure would be “If the first condition is true, do this. Else, if the second condition is true, do that. Otherwise, do something else.” When you use if, elif, and else statements together, remember these rules about how to order them to avoid bugs like the one in Figure 2-6. First, there is always exactly one if statement. Any elif statements you need should follow the if statement. Second, if you want to be sure that at least one clause is executed, close the structure with an else statement.

![image](https://user-images.githubusercontent.com/11299574/134644517-d667831f-efd8-4829-9beb-f64a1b5986ff.png)

Figure 2-6: The flowchart for the vampire2.py program. The X path will logically never happen, because if age were greater than 2000, it would have already been greater than 100.

![image](https://user-images.githubusercontent.com/11299574/134644553-b9360a86-0178-4dc4-8ffe-5ffd5a6fb25c.png)

Figure 2-7: Flowchart for the previous littleKid.py program

### while Loop Statements

You can make a block of code execute over and over again using a while statement. The code in a while clause will be executed as long as the while statement’s condition is True. In code, a while statement always consists of the following:

The while keyword
A condition (that is, an expression that evaluates to True or False)
A colon
Starting on the next line, an indented block of code (called the while clause)
You can see that a while statement looks similar to an if statement. The difference is in how they behave. At the end of an if clause, the program execution continues after the if statement. But at the end of a while clause, the program execution jumps back to the start of the while statement. The while clause is often called the while loop or just the loop.

Let’s look at an if statement and a while loop that use the same condition and take the same actions based on that condition. Here is the code with an if statement:

```
spam = 0
if spam < 5:
    print('Hello, world.')
    spam = spam + 1
```
Here is the code with a while statement:
```
spam = 0
while spam < 5:
    print('Hello, world.')
    spam = spam + 1
```
These statements are similar—both if and while check the value of spam, and if it’s less than 5, they print a message. But when you run these two code snippets, something very different happens for each one. For the if statement, the output is simply "Hello, world.". But for the while statement, it’s "Hello, world." repeated five times! Take a look at the flowcharts for these two pieces of code, Figures 2-8 and 2-9, to see why this happens.

![image](https://user-images.githubusercontent.com/11299574/134644706-ea340ae7-08ea-4324-92fe-f1a1b7475096.png)

Figure 2-8: The flowchart for the if statement code

![image](https://user-images.githubusercontent.com/11299574/134644725-5d100f25-c217-4319-8361-09c3f6567684.png)

Figure 2-9: The flowchart for the while statement code

The code with the if statement checks the condition, and it prints Hello, world. only once if that condition is true. The code with the while loop, on the other hand, will print it five times. The loop stops after five prints because the integer in spam increases by one at the end of each loop iteration, which means that the loop will execute five times before spam < 5 is False.

In the while loop, the condition is always checked at the start of each iteration (that is, each time the loop is executed). If the condition is True, then the clause is executed, and afterward, the condition is checked again. The first time the condition is found to be False, the while clause is skipped.







    












