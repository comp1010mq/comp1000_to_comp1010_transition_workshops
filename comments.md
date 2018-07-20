# COMP115 to COMP125 Transition Workshops

## Comments

### Conditions

### Loops

### Functions

### Arrays

##### Re-referencing
The 'Creating array - Option 2' section appears to explain that arrays can not be re-referenced later if they are created using the following syntax 
```java 
type[] arrayName = {item1, item2, ....};
```
What I think it actually means is that said syntax can not be used to re-reference an array later, and that you instead have to use the 'new' operator to do so.

I'd swap the 'The problem with this approach..' line for something like
> The problem with this approach is that if an array has already been created, it can not be re-referenced later using this (more about referencing soon). 

and the line under option 3 to
> The third approach is similar to the second except you **can** use it to update the reference later.

##### Deep/Shallow array copies
When talking about deep/shallow array copies, perhaps include something like
```java
int[] a = {10, 70, 20, 90};
int[] b = a;
b = new int[]{100,30,200,50};
```
to demonstrate re-referencing in action. However it might be more suitable for the 'arrays and functions' part of the workshop.

##### Extra tasks
Maybe include a task that requires storing arrays in an array? It might be a little too advanced but it really hammers home your ability to store anything in an array.

All the scenarios look good, but Scenario 5 and 6 are screaming out for an advanced task that asks you to do the same thing using a single loop.

### Arrays and Functions
