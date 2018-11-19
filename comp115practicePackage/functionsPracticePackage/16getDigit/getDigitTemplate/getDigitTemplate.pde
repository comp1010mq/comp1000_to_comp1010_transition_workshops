/*
 TASK 1
 define a function getDigit that when passed two 
 integers (num and index), returns the digit which is at 
 index position from the right of the integer num.
 
 assume that the index passed is within range.
 
 some parameter-return value mappings:
 20934, 0 -> 4
 20934, 3 -> 0
 9, 0 -> 9
 3451, 2 -> 4
 3451, 3 -> 3
 */

void setup() {
  size(300, 300);
  background(255);
  noStroke();
  
  /*
  TASK 2
  declare two variables d and e and initialize them to 
  84 and 0 respectively.
  call the function getDigit to compute the digit at index e
  of the integer d and store the value returned in variable f
  
  once completed, the top half of the screen will be light 
  blue
  */
  
  /*
  TASK 3
  store the 5th digit of the integer 2746023 in a variable g
  using the function getDigit.
  
  once completed, the bottom half of the screen will be 
  dark blue
  */
  
  
  if(d == 84 && e == 0 && f == 4) {
    fill(161, 238, 245);
    rect(0, 0, width, height/2);
  }
  if(g == 7) {
    fill(34, 70, 240);
    rect(0, height/2, width, height/2);
  }
}