final int LENGTH = 150;
int alpha = 255;

void setup() {
  size(500, 300);
  background(255);
}

void draw() {
  background(255);
  
  // draw rect
  noStroke();
  fill(255, 200, 0, alpha);
  rect(width/2 - LENGTH/2, height/2 - LENGTH/2, LENGTH, LENGTH);
  
  if (alpha > 50) {
    alpha = alpha - 1; // decrease opacity
  }
}