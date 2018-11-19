size(300, 200);
background(255);

// draw lines
for (float x = 0; x < width; x+=width/10.0) {
  line(x, 0, x, height);
}