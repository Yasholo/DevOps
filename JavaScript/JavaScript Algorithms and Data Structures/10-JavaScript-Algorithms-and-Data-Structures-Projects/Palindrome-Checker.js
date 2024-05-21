function palindrome(str) {
  var regexPattern = /[^A-Za-z0-9+]/g;
  var newStr = (str.replace(regexPattern, "")).toLowerCase();
  var palStr = newStr.split("").reverse().join("");
  if (newStr == palStr)
    return true;
  else return false;
}

palindrome('eye');

/*** 
let str = prompt("Please enter a string: ");
palindrome(str);
***/
