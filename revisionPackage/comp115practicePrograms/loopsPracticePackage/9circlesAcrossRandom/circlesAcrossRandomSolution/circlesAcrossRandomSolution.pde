size(500, 150);
background(255);
fill(73, 224, 242);

float dia = random(10, 60);
float oldDia;

// draw circles
for (float i = dia/2; i <= width+80; i+=(dia/2 + oldDia/2)) {
  ellipse(i, height/2, dia, dia);
  oldDia = dia;
  dia = random(10, 60); // set new diameter
}