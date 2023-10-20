// 345. Reverse Vowels of a String

class Solution {
  String reverseVowels(String s) {
    int l = 0;
    int r = s.length - 1;

    List<String> vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
    List<String> char = s.split('');

    while (l < r) {
      var crLeftWord = char[l];
      var crRightWord = char[r];

      if (vowels.contains(crLeftWord) && vowels.contains(crRightWord)) {
        char[l] = crRightWord;
        char[r] = crLeftWord;
        l++;
        r--;
      } else if (vowels.contains(crRightWord)) {
        l++;
      } else {
        r--;
      }
    }

    return char.join();
  }
}
