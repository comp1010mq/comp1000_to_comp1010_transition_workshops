int x1 = 0;
int x2, y2 = -10000;

// draw a stick figure at (x, y) and use scale to 
// determine its size
void drawStickFigure(int scale, float x, float y) {
  strokeWeight(scale/50);
  if (scale/50 < 1) {
    strokeWeight(1);
  }
  ellipse(x, y-(scale/3.0), (scale/3.0), (scale/3.0)); // head
  line(x, y-(scale/3.0 - (scale/3.0)/2), x, y+(scale/3.5)); // body
  line(x - scale/5.0, y, x + scale/5.0, y); // arms
  line(x, y + (scale/3.5), x - scale/5.0, y + scale/1.8); //left leg
  line(x, y + (scale/3.5), x + scale/5.0, y + scale/1.8); //right leg
}

void setup() {
  size(500, 500);
  background(200, 235, 225);
}

void draw() {
}

void mouseClicked() {
  /*
  TASK 1
  call the function drawStickFigure to draw a stick figure on the screen
  at the mouse position and at scale mouseY/2 whenever the mouse is clicked.
  */
}

void keyPressed() {
  /*
  TASK 2
  call the function drawStickFigure to draw a stick figure at a random
  position on the screen at a random scale between 30 and 200 (inclusive)
  whenever the key is pressed.
  */
}