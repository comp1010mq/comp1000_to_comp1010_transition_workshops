void setup() {
  size(400, 300);
  background(255);
}

void draw() {
  /*
  processing records mouse location at fixed intervals
  (like 5 milliseconds)
  mouseX, mouseY hold the current mouse location
  pmouseX, pmouseY hold the location recorded before that
  
  P.S. Initial values of all 4 variables are 0
  */
  line(pmouseX, pmouseY, mouseX, mouseY);
}