//assume square display window
size(400, 400);
background(255);

int n = 15; // number of circles across width
float dia = width*1.0/n;
float shade = 0;
for (float margin = dia/2; margin < width/2; margin+=dia) {
  fill(shade);
  shade+=255.0/(n/2 - 1);
  
  for (float x = margin; x <= width - margin; x+=dia) {
    ellipse(x, margin, dia, dia); // draw top circles
    ellipse(margin, x, dia, dia); // draw left circles
    ellipse(x, height-margin, dia, dia); // draw bottom circles
    ellipse(width-margin, x, dia, dia); // draw right circles
  }
}