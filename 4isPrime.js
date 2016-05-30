// Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

function isPrime(n) {
  divider = n-1
  division(n, divider)
function division(n, divider) {
    if (n == 1 || divider == 1) {
      console.log(true)
    } else if (n % divider == 0) {
      console.log(false)
    } else if (n % divider != 0) {
      divider -= 1
      division(n, divider);
    }
  }
};

isPrime(31)
