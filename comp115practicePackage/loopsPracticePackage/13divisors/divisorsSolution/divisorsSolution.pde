int num = 2050; //<>//

println("Divisors of " + num + ":");

for (int i = 1; i <= num; i++) {
  if (num%i == 0) { // if i is a divisor of num
    println(i);
  }
}