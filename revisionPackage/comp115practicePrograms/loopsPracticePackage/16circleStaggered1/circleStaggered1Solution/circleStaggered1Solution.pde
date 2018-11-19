int dia = 60;
size(400, 400);
background(255);
fill(145, 45, 250);

// draw circles
for (int i = 0; i < 4; i++) {
  for (int j = i; j < 4; j++) {
    int xPos = i*dia + dia/2;
    int yPos = j*dia + dia/2;
    ellipse(xPos, yPos, dia, dia);
  }
}