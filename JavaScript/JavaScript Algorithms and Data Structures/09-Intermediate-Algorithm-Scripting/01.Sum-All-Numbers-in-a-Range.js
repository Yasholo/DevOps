function sumAll(arr) {
  let sum = 0;
  if (arr[0]>arr[1]) {
    let i = arr[1];
    let j = arr[0];
    for (i; i<=j; i++){
      sum+=i;
    }
  }
  else {
    let i = arr[0];
    let j = arr[1];
    for (i; i<=j; i++){
      sum+=i;
    }
  }
  return sum;
}

console.log(sumAll([1, 4]));
