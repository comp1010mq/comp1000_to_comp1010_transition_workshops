size(300, 200);
background(255);

// draw lines
for (float y = 0; y < height; y+=height/10.0) {
  line(0, y, width, y);
}