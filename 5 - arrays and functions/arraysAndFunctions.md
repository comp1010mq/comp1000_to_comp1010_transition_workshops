# Arrays and functions

It's very common to pass an array to a function. Generally, we operate on an array passed to a function, but sometimes it's also useful to,

1. modify the contents of the passed array inside the function
2. return an array from the function that is copied into an array in the caller.

## Operating on an array passed to a function

When you pass an array to a function, a shallow copy of the actual
parameter is made into the formal parameter. For example, in the
following code, `data` becomes a shallow copy of `arr`.

```java
void caller() {
    int[] arr = {10, 70, 50};
    int sum = total(arr);
}

int total(int[] data) {
    int result = 0;
    for(int i=0; i < data.length; i++) {
        result+=data[i];
    }
    return result;
}
```

<center><img src=arraysAndFunctionMemoryDiagrams-figure0.png width=500px></center>

## Modifying contents of array passed

If you have a function that modifies the passed array, the contents of
the actual parameter will also change.

```java
void caller() {
    int[] arr = {10, -70, 0};
    negate(arr);
}

void negate(int[] data) {
    for(int i=0; i < data.length; i++) {
        data[i]=data[i]*-1;
    }
}
```

<center><img src=arraysAndFunctionMemoryDiagrams-figure1.png width=500px></center>

## Returning an array from a function

If a function returns an array (source) and the caller copies it into an
array (destination), it’s a shallow copy as demonstrated in the
following example.

If you have a function that modifies the passed array, the contents of
the actual parameter will also change.

```java
void caller() {
    int[] data = getDiceOutcomes(5);
}

int[] getDiceOutcomes(int n) {
    int[] outcomes = new int[n];
    for(int i=0; i < outcomes.length; i++) {
        outcomes[i] = (int)random(1, 7);
    }
    return outcomes;
}
```

<center><img src=arraysAndFunctionMemoryDiagrams-figure2.png width=500px></center>

# Exercises

#### Exercise 1
Define a method that when passed an integer array, returns the sum of all even numbers in the array.

#### Exercise 2
Call the method defined in exercise 1 with an array of your choice and store the value returned in a variable `result`.

#### Exercise 3
Define a method that when passed two integer arrays, returns `true` if they are identical (same items in the same order), `false` otherwise.

#### Exercise 4
Define a method that when passed an integer array, returns `true` if all items in the array are positive, `false` otherwise.

#### Exercise 5
Define a method that when passed an integer array, returns `true` if there is any positive item in the array, `false` otherwise.

#### Exercise 6
Define a method that when passed a floating-point (`double`) array, returns an integer array containing the integer part of the items of the passed array. For example, if the array passed is `{-3.6, 0.8, 7.2, -2.5}`, the array returned should be `{-3, 0, 7, -2}`.

#### Exercise 7
Define a method that when passed an integer array, returns an array containing the positive items from the array. For example, if the array passed is `{1, -3, 0, -5, 7, 0, 0, 0, 2, 9}`, the array returned should be `{1, 7, 2, 9}`.

#### Exercise 8 (Advanced)
Define a method that when passed two integer arrays, returns `true` if they are the same (same items but not necessarily in the same order), `false` otherwise.


# Coding in the real world

## SCENARIO 1
Define a method that when passed an array containing outcomes of a series of dice rolls (6-faced dice), returns the number of times a 6 was rolled.

## SCENARIO 2
Define a method that when passed an array containing weekly salaries of a person, returns the amount of tax that should be withheld based on the following payroll department's withholding rules,

- income up to `$300` a week is tax-free
- income from `$301` to `$500` a week is taxed at 15%
- income from `$501` to `$800` a week is taxed at 20%
- income from `$801` to `$1000` a week is taxed at 25%
- income from `$1001` to `$1500` a week is taxed at 30%
- income over `$1500` a week is a week taxed at 35%

For example, if the array holding salaries is `{1200, 600}`, the first week's salary is taxed 

`0.15*200 + 0.2*300 + 0.25*200 + 0.3*200 =  200`
 
and the second week's salary is taxed 

`0.15*200 + 0.2*100 = 50` 

Total tax: 250.

## SCENARIO 3
Time to time, we get a list of students and their marks. The list of students is in a `String` array, while the marks are in an integer array. Obviously, the size of both the arrays is the same. Also, the name of the first student is at index 0 of the names array and his/her marks are at index 0 in the marks array and so on. 

Define a method that returns the name of the student with the highest mark. For the basic version, in case of a tie, return the name of the first student with the highest mark. For the advanced version, in case of a tie, return an array with the names of all the students who have the same highest mark.

## SCENARIO 4
During an experiment, our data was corrupted. While the valid values should be between 0 and 100, some values were inserted that are outside this range and therefore invalid.

Define a method to which we can pass an array containing the unfiltered values and it returns an array with the filtered values. For example, if the array passed is `{4, -1, 0, 89, 105, 67, 100}`, the method should return the array `{4, 0, 89, 67, 100}`.

## SCENARIO 5
Define a method that returns the number of distinct values in the array passed. For example, if the array passed is `{3, 7, 3, 3, 3, 20, 9, 20}`, return 4 as there are four distinct values (3, 7, 20 and 9).

## SCENARIO 6
Define a method that when passed an integer (store the value passed in the formal parameter `n`), returns an array that holds the first `n` prime numbers (a number is *prime* if it is more than or equal to 2 and is divisible by only 1 and itself).