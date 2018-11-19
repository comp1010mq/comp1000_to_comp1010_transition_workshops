size(400, 200);
background(255);
fill(0);

// draw triangles
for (float i=0; i < 10; i++) {
  float x = i*width/10;
  triangle(x, 0, x, 30, x + width/10.0, 30);
}