/*

Given a array arr of n elements. Draw up to 10 stacks of rectangles
where each element at index represent the number of rectangles in
that stack. The number of rectangle on a stack can be at most 10.
So at most 10 x 10 rectangles.If there at less than 10 elements 
in arr then draw n stacks, else draw for the first ten elements.
If the arr[i] is greater than 10, draw 10 rectangles for stack i.
For each stack i, the rectangle in that stack should be filled with
the colors[i]


Refer to given case and the corresponding image to see what should
be the result

CASE 1:
arr = {1, 2, 3, 4, 5, 9, 8, 7, 6, 10}
Refer to case1.png for expected result

CASE 2:
arr = {3, 12, 5, 0, 6, 10, 2, 3, 4, 9, 8, 5}
Refer to case2.png for expected result

CASE 3:
arr = {0, 0, 5, 6, 3, 7}
Refer to case3.png for expected result
*/

// Colors

color lightsteelblue = color(176,196,222);
color palegoldenrod = color(238,232,170);
color lightsalmon = color(255,160,122);
color lightyellow = color(255,255,224);
color rosybrown = color(188,143,143);

color palevioletred = color(219,112,147);
color yellowgreen = color(154,205,50);
color lightgreen = color(144,238,144);
color honeydew = color(240,255,240);
color lavender = color(230,230,250);


// The rectangle in stack i should be filled in with colors[i]
color[] colors = {lightsteelblue, palegoldenrod, lightsalmon,
                  lightyellow, rosybrown, palevioletred, yellowgreen,
                  lightgreen, honeydew, lavender};

color ghostwhite = color(248,248,255);
// The maximum number of stacks
final int MAX_NUM_STACK = 10; 

// This maximum number of rectangle on a stack 
final int MAX_NUM_OF_RECT_PER_STACK = 10;


int[] arr = {0, 0, 5, 6, 3, 7};

void setup() {
  size(500,500);
  background(ghostwhite);
  drawStackOfRects(arr);

}


/* STUDENT TO FILL OUT */
void drawStackOfRects(int[] arr) {
  int blockW = width/MAX_NUM_STACK;
  int blockH = height/MAX_NUM_OF_RECT_PER_STACK; 
  int limit = MAX_NUM_STACK;
  if(limit > arr.length)
    limit = arr.length;
  for(int i = 0; i < limit; i++){
    int stackHeight = MAX_NUM_OF_RECT_PER_STACK;
    if(stackHeight > arr[i])
      stackHeight = arr[i];
    fill(colors[i]);
    for(int k = 0; k < stackHeight; k++) {
      rect(i * blockW, height - blockH -(k * blockH), blockW, blockH);
     }
  }  
  
}