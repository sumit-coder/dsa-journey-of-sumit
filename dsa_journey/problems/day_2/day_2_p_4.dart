// 151. Reverse Words in a String

class Solution {
  String reverseWords(String s) {
    s = s.replaceAllMapped(RegExp(r'\s{2,}'), (match) {
      return ' ';
    }).trim();

    List<String> sList = s.split(' ');

    return sList.reversed.join(' ');
  }
}
