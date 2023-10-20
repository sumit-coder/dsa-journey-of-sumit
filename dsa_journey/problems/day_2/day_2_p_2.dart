// 605. Can Place Flowers

class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int lastBed = flowerbed[0];

    for (var i = 0; i < flowerbed.length; i++) {
      if (i == flowerbed.length - 1) {
        if (lastBed == 0 && flowerbed[i] == 0) {
          n--;
          flowerbed[i] = 1;
        }

        return n <= 0;
      }

      if (lastBed == 0 && flowerbed[i + 1] == 0 && flowerbed[i] != 1) {
        n--;
        flowerbed[i] = 1;
      }

      lastBed = flowerbed[i];
    }

    return n <= 0;
  }
}
