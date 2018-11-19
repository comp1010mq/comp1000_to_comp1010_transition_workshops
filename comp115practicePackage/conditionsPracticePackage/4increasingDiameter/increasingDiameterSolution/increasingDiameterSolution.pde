int dia = 40;
int maxDia = 130;

void setup() {
  size(600, 500);
  background(255);
  fill(0, 0, 255);
}

void draw() {
}

void mouseClicked() {
  ellipse(mouseX, mouseY, dia, dia); // draw circle
  dia += 20; // increase diameter
  
  if (dia > maxDia) { // if diameter exceeds the maximum
    dia = 40;
  }
}