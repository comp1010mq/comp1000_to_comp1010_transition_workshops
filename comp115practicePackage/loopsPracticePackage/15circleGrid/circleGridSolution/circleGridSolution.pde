int dia = 60;
size(400, 400);
background(255);
fill(145, 45, 250);

// draw circles
for (int i = 0; i < 5; i++) {
  for (int j = 0; j < 3; j++) {
    int xPos = width-(i*dia + dia/2);
    int yPos = j*dia + dia/2;
    ellipse(xPos, yPos, dia, dia);
  }
}