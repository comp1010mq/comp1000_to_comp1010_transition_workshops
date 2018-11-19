int dia = 50;

size(500, 150);
background(255);
fill(255, 160, 55);

// draw circles
for (int i = dia/2; i < width; i+=dia) {
  ellipse(i, height/2, dia, dia);
}