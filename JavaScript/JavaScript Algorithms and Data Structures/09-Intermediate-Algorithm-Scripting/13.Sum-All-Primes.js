function sumPrimes(num) {
  var sum = 0;
  for(var i = 0; i <= num;i++){
    if(IsPrime(i)){
      sum += i;
    }
  }
  return sum;
}

function IsPrime(n){
  if(n <= 1) return false;
  for(var j = 2; Math.pow(j,2) <= n;j++){
    if(n % j === 0) {
      return false;
    }
  }
  return true;
}

sumPrimes(10);
