int num = 1224340989;
int result = 0;

print("sum of odd digits in " + num + ": ");

while (num > 0) {
  int digit = num%10; // last digit of number
  if (digit%2 == 1) { // if digit is odd
    result += digit;
  }
  
  num /= 10;
}

println(result);