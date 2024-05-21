function steamrollArray(arr) {
  return arr
		.toString()
		.replace(',,', ',')
		.split(',')
		.map(function (v) {
			if (v == '[object Object]') {
				return {};
			} else if (isNaN(v)) {
				return v;
			} else {
				return parseInt(v);
			}
		});
}

console.log(steamrollArray([1, [2], [3, [[4]]]]));
