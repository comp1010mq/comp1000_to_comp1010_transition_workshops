/*
TASK 1
define a function power that when passed a float base and an 
int exp, returns base to the power of exp.

some parameter-return value mappings:
2.0, 2 -> 4.0
5.5, 6 -> 27680.64
*/

void setup() {
  /*
  TASK 2
  a) compute the 2 to the power of 2 and store it in a vairable a.
  b) compute the 2 to the power of 7 and store it in a vairable b.
  c) compute the 5.5 to the power of 2 and store it in a vairable c.
  d) compute the 5.5 to the power of 6 and store it in a vairable d.
  e) compute the 8.3 to the power of 4 and store it in a vairable e.
  
  once completed, run the program and check the console to see if you
  are correct.
  */
  
  if (a == 4.0) {
    println("a is correct");
  } else {
    println("a is incorrect. a should equal 4.0, but instead is " + a);
  }
  
  if (b == 128.0) {
    println("b is correct");
  } else {
    println("b is incorrect. b should equal 128.0, but instead is " + b);
  }
  
  if (c == 30.25) {
    println("c is correct");
  } else {
    println("c is incorrect. c should equal 30.25, but instead is " + c);
  }
  
  if (d == 27680.64) {
    println("d is correct");
  } else {
    println("d is incorrect. d should equal 27680.64, but instead is " + d);
  }
  
  if (e == 4745.832) {
    println("e is correct");
  } else {
    println("e is incorrect. e should equal 4745.832, but instead is " + e);
  }
}