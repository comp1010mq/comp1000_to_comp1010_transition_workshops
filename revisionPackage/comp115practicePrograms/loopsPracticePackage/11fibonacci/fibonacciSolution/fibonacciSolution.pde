int a = 0;
int b = 1;
print(a + ", " + b);

for (int i = 0; i < 20; i++) {
  int c = a + b; // fibonacci number
  print(", " + c);
  
  // set new a and b
  a = b;
  b = c;
}