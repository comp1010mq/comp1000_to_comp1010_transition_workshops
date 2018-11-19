/*
 TASK
 define a function that when passed an integer, returns the highest
 digit within that integer.
 you may use the higher function in this function.
 some parameter-return value mappings:
 2 -> 2
 34525 -> 5
 152622 -> 6
 90 -> 9
 
 once completed, a yellow square will appear on the screen.
 */

int higher(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

void setup() {
  size(300, 300);
  background(255);

  boolean a = highestDigit(2) == 2;
  boolean b = highestDigit(0) == 0;
  boolean c = highestDigit(9) == 9;
  boolean d = highestDigit(34525) == 5;
  boolean e = highestDigit(152622) == 6;
  boolean f = highestDigit(980) == 9;
  boolean g = highestDigit(42580437) == 8;
  boolean h = highestDigit(1222) == 2;

  noStroke();
  fill(255, 200, 0);
  rectMode(CENTER);
  if (a && b && c && d && e && f && g && h) {
    rect(width/2, height/2, 100, 100);
  }
}