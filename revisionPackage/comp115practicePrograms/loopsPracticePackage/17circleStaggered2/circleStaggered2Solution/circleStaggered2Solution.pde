int dia = 60;
size(400, 400);
background(255);
fill(145, 45, 250);

// draw circles
for (int i = 0; i < 4; i++) {
  for (int j = 3-i; j >= 0; j--) {
    int xPos = i*dia + dia/2;
    int yPos = height - (j*dia + dia/2);
    ellipse(xPos, yPos, dia, dia);
  }
}