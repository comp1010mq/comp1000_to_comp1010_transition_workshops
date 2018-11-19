int countDigits(int a) {
  int count = 0;
  while (a > 0) {
    a /= 10;
    count++;
  }
  
  return count;
}

void setup() {
  size(300, 300);
  background(255);
  noStroke();
  /*
  TASK 1
  call the function count digits to compute the amount of
  digits in d, and store the value returned in variable e.
  
  once completed, a circle will appear on the screen.
  */
  int d = 1574067545;
  int e = countDigits(d);
  
  /*
  TASK 2
  call the function count digits to compute the amount of
  digits in e, and store the value returned in variable f.
  
  once completed, a square will appear on the screen.
  */
  int f = countDigits(e);
  
  /*
  TASK 3
  call the function count digits to compute the amount of
  digits in f, and store the value returned in variable g.
  
  once completed, a triangle will appear on the screen.
  */
  int g = countDigits(f);
  
  if (d == 1574067545 && e == 10) {
    fill(94, 143, 245);
    ellipse(80, 100, 50, 50);
    if (f == 2) {
      fill(245, 94, 94);
      rect(210, 40, 50, 50);
      if (g == 1) {
        fill(94, 245, 173);
        triangle(170, 180, 130, 230, 210, 230);
      }
    }
  }
}