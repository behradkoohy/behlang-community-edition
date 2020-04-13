# behlang-community-edition
sickest programming language you'll ever use

## Usage
All lines finish in a semi-colon. '--' can be used for comments.
There are 3 basic types. Integers, Booleans and Lists. Lists can currently only contain integers. 
### Basic Operators (Integers)
``` 
1 + 2; -- 3 (Addition)
3 - 4; -- -1 (Subtraction)
4 * 5; -- 20 (Multiplication)
6 % 4; -- 2 (Modulo)

1 > 3; -- False
1 < 3; -- True
1 == 3; -- True
```
### Basic Operators (Boolean)
'||' is used as or. '&&' is used as and.


```
True || False; -- True
True && False; -- False
```

### Basic Operators (Lists)
Lists are very limited in the way that they work. By using ``` loadS; ``` you can initialise the streams from the input given in STDIN. The input must be in the format that is defined in the program specification given to us by the Universtiy of Southampton with no trailing spaces or newlines (not like I spent 2 days debugging an error caused by this please don't be a cretin like I was).
To access a specific location in an array, use ``` !! ```. e.g.
```
[1,2] !! 0; -- 1
[1,2] !! 1; -- 2
[1,2] !! 2; -- Error, index out of bounds
```


### Variable Declarations 
Behlang supports declaring variables. Variables are stored by value and not reference so please be careful.
```
x = 3;
y = True;
z = [1,2,3];

x = x+1; -- 4
y = y || False -- True
z !! 2 -- 3

```

### Conditionals
Behlang does let you use if statements. They must be in the following format:
``` 
if ( Expr ) then ( Expr ) else ( Expr );
```
The first expression must evaluate to a boolean. The second and third expressions can evaluate to whatever. You can't not have the else, if you don't want it then use put something irrelevant in the brackets.

### Loops and Iterators
Currently the only loop you can do is while loops:
```
while ( Expr ) { Expr };
```
The first expression must evaluate to a boolean. The other expression is the thing being looped. You can stack multiple expressions in the looped section, just use ';' to enter them.
This might seem like a limitation but you can imitate the behaviour of for loops, for each loops and do until loops using a while loop. In most languages, they are simply syntactic sugar for a while loop.

### Outputs

If you want to output a value, just use ```print```.
e.g.
```
x=3;
print(x); -- prints 3
```























