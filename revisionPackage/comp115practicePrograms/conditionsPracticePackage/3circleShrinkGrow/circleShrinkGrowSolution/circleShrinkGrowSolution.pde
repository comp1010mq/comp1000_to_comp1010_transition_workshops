int dia = 40;
boolean shrinking = false;

int maxDia = 120;
int minDia = 20;

void setup() {
  size(200, 200);
  background(255);
  fill(0, 0, 255);
}

void draw() {
  background(255);

  // draw circle
  ellipse(width/2, height/2, dia, dia);

  if (shrinking) {
    dia = dia - 1; // increase circle diameter
  } else {
    dia = dia + 1; // decrease circle diameter
  }

  if (dia >= maxDia || dia <= minDia) { // if extreme has been reached
    shrinking = !shrinking;
  }
}