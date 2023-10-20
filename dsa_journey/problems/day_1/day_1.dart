// 1071. Greatest Common Divisor of Strings

String gcdOfStrings(String str1, String str2) {
  //
  String gString = '';

  if (str1.length < str2.length) {
    for (var i = 0; i < str1.length; i++) {
      if (str1[i] == str2[i]) {
        gString = gString + str1[i];
        continue;
      }

      break;
    }
  } else {}

  return '';
}
