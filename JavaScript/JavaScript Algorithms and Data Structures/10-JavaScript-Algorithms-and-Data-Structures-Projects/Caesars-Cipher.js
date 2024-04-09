function rot13(str) {
  str = str.toUpperCase();
  var newStr = "";
  for (let i=0; i < str.length; i++){
    if (str.charCodeAt(i) >= 65 && str.charCodeAt(i) <= 90){
      //console.log(str.charCodeAt(i));
      var newCode = str.charCodeAt(i)+13;
      if (newCode > 90){
        newCode = newCode - 90 + 64;
      }
      //console.log(newCode)
      var newLetter = String.fromCharCode(newCode);
      //console.log(str.charAt(i))  
      newStr+=newLetter;
    }
    else  newStr+=str.charAt(i);
  }

  return newStr

}

rot13("SERR PBQR PNZC");
