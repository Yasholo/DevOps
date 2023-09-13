function uniteUnique(arr) {
  var arr1 = [];
  for(var i of arguments) {
    for(var k of i) {
      if(arr1.indexOf(k) === -1) {
        arr1.push(k);
      }
    }
  }
  arr = arr1;
  return arr;
//return [...new Set(Array.from(arguments).reduce((a, b) => a.concat(b)))];
}

console.log(uniteUnique([1, 3, 2], [5, 2, 1, 4], [2, 1]));
