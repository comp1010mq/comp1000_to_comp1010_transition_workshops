final int DIA = 50;
final int LENGTH = 50;

void setup() {
  size(500, 500);
  background(180);
  fill(0, 255, 255);
  
  // seperation line
  line(width/2, 0, width/2, height);
}

void draw() {
}

void mouseClicked() {
  if (mouseX < width/2) { // mouse position in left half
    ellipse(mouseX, mouseY, DIA, DIA);
  } else { // mouse position in right half
    rect(mouseX - LENGTH/2, mouseY - LENGTH/2, LENGTH, LENGTH);
  }
}