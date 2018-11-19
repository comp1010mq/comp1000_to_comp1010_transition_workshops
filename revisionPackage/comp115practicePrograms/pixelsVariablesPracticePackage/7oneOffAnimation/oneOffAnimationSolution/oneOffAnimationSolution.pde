final int DIA = 30;

void setup() {
  size(400, 300);
  background(255);
}

void draw() {
}

void mousePressed() {
  background(255);
  fill(255, 0, 0);
  noStroke();
  ellipse(mouseX, mouseY, DIA, DIA);
}