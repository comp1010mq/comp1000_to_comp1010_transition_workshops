int primeCount = 0;

int current = 2;
while (primeCount < 15) {
  boolean isPrime = true;

  // check if current isn't a prime number
  for (int j = 2; j <= current/2; j++) {
    if (current%j == 0) {
      isPrime = false; // current is divisible by a number
    }
  }

  if (isPrime) { // if current is a prime number
    println(current);
    primeCount++;
  }

  current++;
}