int num = 124290;
int digitCount = 0;

print("Number of digits in " + num + ": ");

while (num > 0) {
  num = num/10;
  digitCount++; // increase digit counter
}

println(digitCount);