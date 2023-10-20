// 1431. Kids With the Greatest Number of Candies

import 'dart:math';

class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int hC = candies.reduce(max);

    return List.generate(candies.length, (index) => candies[index] + extraCandies >= hC);
  }
}
