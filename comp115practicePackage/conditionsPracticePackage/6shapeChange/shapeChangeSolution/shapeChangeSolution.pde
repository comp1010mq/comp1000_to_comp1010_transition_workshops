final int SIZE = 20;
int count = 0;

void setup() {
  size(300, 400);
  background(255);
}

void draw() {
}

void mouseClicked() {
  if (count % 3 == 0) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, SIZE, SIZE);
  } else if (count % 3 == 1) {
    fill(0, 255, 0);
    rect(mouseX - SIZE/2, mouseY - SIZE/2, SIZE, SIZE);
  } else {
    fill(0, 0, 255);
    triangle(mouseX, mouseY - 10, mouseX - 10, mouseY + 10, mouseX + 10, mouseY + 10);
  }

  count++; // increase count
}