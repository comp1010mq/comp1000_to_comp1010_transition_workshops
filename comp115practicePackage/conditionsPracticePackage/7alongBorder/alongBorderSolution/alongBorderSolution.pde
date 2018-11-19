int x = 0;
int y = 0;
final int LENGTH = 20;
int direction = 1; // keeps track of what direction square is moving in

void setup() {
  size(170, 200);
  background(255);
  fill(255, 0, 0);
  noStroke();
}

void draw() {
  background(255);

  rect(x, y, LENGTH, LENGTH); // draw square

  // check for direction change
  if (direction == 1 && x >= width - LENGTH) { // if top-right corner reached
    direction = 2;
  } else if (direction == 2 && y >= height - LENGTH) { // if bottom-right corner reached
    direction = 3;
  } else if (direction == 3 && x <= 0) { // if botton-left corner reached
    direction = 4;
  } else if (direction == 4 && y <= 0) { // if top-left corner reached
    direction = 1;
  }
  
  // move square
  if (direction == 1) {
    x = x + 2; // move right
  } else if (direction == 2) {
    y = y + 2; // move down
  } else if (direction == 3) {
    x = x - 2; // move left
  } else {
    y = y - 2; // move up
  }
}