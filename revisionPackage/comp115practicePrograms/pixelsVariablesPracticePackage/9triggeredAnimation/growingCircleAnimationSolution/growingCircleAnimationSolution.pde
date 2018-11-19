int dia = 0;
float x, y = -1000000;

void setup() {
  size(400, 300);
  background(255);
}

void draw() {
  background(255);
  fill(0);
  ellipse(x, y, dia, dia);
  dia = dia + 1;
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
  dia = 0;
}