function telephoneCheck(str) {
  const re = /^(1\s?)?\d{3}([-\s]?)\d{3}\2\d{4}$/;
  const re2 = /^(1\s?)?\(\d{3}\)\s?\d{3}[-\s]\d{4}$/;
  if (re.test(str)) {
    return true;
  }
  else {return re2.test(str) ? true : false}
}

telephoneCheck("555-555-5555");
