# Strings

Strings are nothing but a character array (`char[]`) inside a parcel known as class. What it lets us do is call built-in functions **on** *variables* (actually *objects*) of the String type (actually *class*).


### Declaration and initialization

```java 
String str;
println(str); //COMPILATION ERROR - The local variable "str" may not have been initialized

str = "Kill Bill"; 
println(str); //displays Kill Bill

String second = "Super Nintendo Chalmers"; //declaring and initializing in one statement
```

## Length of a String

Length (number of characters) of a String `str` is given by `str.length()`.

**!!! Note the brackets at the end of `length`, unlike array length !!!**

## Characters in a String

First character is at index 0 and accessed using `str.charAt(0)`

Last character is at index `str.length()-1` and accessed using `str.charAt(str.length()-1)`

In general, character at index `i` is accessed using `str.charAt(i)`.

## Looping through a String

We loop through any given String `str` as:

```java
for(int i=0; i < str.length(); i++) {
	//current character at str.charAt(i)
}
```

Some examples:

##### Example 1: Count number of spaces

```java
int count = 0;
for(int i=0; i < str.length(); i++) {
	if(str.charAt(i) == ' ') {
		count++;
	}
}
```

##### Example 2: Count number of digits

```java
int count = 0;
for(int i=0; i < str.length(); i++) {
	if(str.charAt(i) >= '0' && str.charAt(i) <= '9') {
		count++;
	}
}
```

##### Example 3: Check if purely alphabetic

```java
boolean stillPossible = true;
for(int i=0; i < str.length() && stillPossible; i++) {
	boolean upper = false;
	boolean lower = false;
	if(str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') {
		upper = true;
	}
	if(str.charAt(i) >= 'a' && str.charAt(i) <= 'z') {
		lower = true;
	}
	if(!upper && !lower) {
		stillPossible = false;
	}
}
boolean isAlpha = stillPossible;
```

## Useful functions

Some useful functions, and examples are:

| Function                         | Comment                                                                              | Example                                                                                               | Outcome                                                                                        |
|----------------------------------|--------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| `indexOf(another String)`           | returns first index at which passed String is found, -1 if not found | 1. `"its a cool tool".indexOf("ool")` 2. `"its a cool tool".indexOf("OOL")`          | 1. `7` 2. `-1`       |      
| `indexOf(char)`           | returns first index at which char is found, -1 if not found | 1. `"tipper".indexOf('p')` 2. `"tipper".indexOf('c')`     | 1. `2` 2. `-1`                     |
| `substring(start)`               |                                                                                      | `"superman".substring(2)`                                                                               | `"perman"`                                                                                       |
| `substring(start, end)`          | end index is not included                                                            | `"superman".substring(2, 6)`                                                                            | `"perm"`                                                                                         |
| `toLowerCase()`                    | original String is NOT modified                                                        | `"Hello123!".toLowerCase()`                                                                             | `"hello123!"`                                                                                    |
| `toUpperCase()`                    | original String is NOT modified                                                        | `"Hello123!".toUpperCase()`                                                                             | `"HELLO123!"`                                                                                    |
| `Integer.parseInt(String)`         | 1. String is the parameter here 2. Raises exception if String not numeric            | `Integer.parseInt("-4096")`                                                                             | -4096                                                                                          |
| `equals(another String)`           | 1. You DON'T compare Strings using == 2. `equals` performs case-sensitive comparison | 1. `"done".equals("done")` 2. `"done".equals("Done")`                                                     | 1. `true` 2. `false`                                                                               |
| `equalsIgnoreCase(another String)` | `equalsIgnoreCase` performs case-**IN**sensitive comparison                          | 1. `"done".equals("done")` 2. `"done".equals("Done")` 3. `"done".equals("doe")`                             | 1. `true` 2. `true` 3. `false`                                                                       |
| `compareTo(another String)`        | performs lexicographic (as in dictionary) comparison                                 | 1. `"Hi".compareTo("hi")` 2. `"hi".compareTo("Hi")` 3. `"what".compareTo("why?")` 4. `"why".compareTo("why")` | 1. negative  (exact value  is irrelevant for now) 2. positive 3. negative (3rd character) 4. 0 |
