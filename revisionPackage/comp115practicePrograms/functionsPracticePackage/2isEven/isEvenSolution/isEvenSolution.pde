boolean isEven(int a) {
  /*
  TASK
   given the function header for the function 'isEven',
   write the body of the fucntion such that the function
   will return true if 'a' is an even integer and 'false'
   otherwise.
   
   the program will output a smiley face if done correctly,
   and a sad face if not.
   */
  return a%2 == 0;

  /*
  also correct:
   if (a%2 == 0) {
   return true;
   } else {
   return false;
   }
   */
}

void setup() {
  size(250, 250);
  background(255);
  boolean a = isEven(0);
  boolean b = isEven(1934);
  boolean c = isEven(8);
  boolean z = isEven(1);
  boolean y = isEven(8427);
  boolean x = isEven(9);

  fill(0);
  ellipse(width/4 + 20, height/4 + 20, 20, 20);
  ellipse(3*width/4 - 20, height/4 + 20, 20, 20);
  noFill();
  strokeWeight(5);
  if (a && b && c && !z && !y && !x) {
    arc(width/2, height/2, 100, 100, 0, PI);
  } else {
    arc(width/2, height/2 + 50, 100, 100, PI, TWO_PI);
  }
}

void draw() {
}