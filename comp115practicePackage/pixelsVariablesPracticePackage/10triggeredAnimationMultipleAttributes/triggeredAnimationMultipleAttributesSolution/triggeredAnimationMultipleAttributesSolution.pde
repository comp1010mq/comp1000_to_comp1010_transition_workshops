float dia = 0; //initially empty
float x;
float y; 
float alpha;

void setup() {
  size(300, 500);
  background(255);
}

void draw() {
  background(255);
  fill(255, 0, 0, alpha);
  noStroke();
  ellipse(x, y, dia, dia);
  dia = dia + 0.1; //inflate
  y = y - 1; //move up as it's getting lighter
  alpha = alpha - 0.5; 
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
  dia = 20;
  alpha = 255;
}