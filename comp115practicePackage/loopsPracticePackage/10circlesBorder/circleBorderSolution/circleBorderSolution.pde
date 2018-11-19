//assume square display window
size(400, 400);
background(255);
fill(152, 255, 0);
float dia = 40;

for (float x = dia/2; x < width; x+=dia) {
  ellipse(x, dia/2, dia, dia); // circles along the top
  ellipse(dia/2, x, dia, dia); // circles along the left
  ellipse(x, height-dia/2, dia, dia); // circles along the bottom
  ellipse(width-dia/2, x, dia, dia); // circles along the right
}