int n1 = 5340;
int n2 = 3345;
int gcd = 0;

// find smallest of the two numbers
int smallest; //<>//
if (n1 < n2) { //<>//
  smallest = n1; //<>//
} else {
  smallest = n2;
}

for (int i = 1; i <= smallest/2; i++) { //<>//
  if(n1%i == 0 && n2%i == 0) { // if both numbers divisible by i //<>//
    gcd = i; //<>//
  }
}

println("GCD of " + n1 + " and " + n2 + ": " + gcd);