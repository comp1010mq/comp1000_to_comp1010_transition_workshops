final int DIA = 30;
float x = -100; //so initially it's off the screen
float y; 

void setup() {
  size(400, 300);
  background(255);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, DIA, DIA);
  y = y + 1; //drop it like it's hot
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
}