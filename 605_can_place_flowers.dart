class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    //for -> list 돌면서 -> i 위치 +- 1위치 == 0 일경우 1추가(== 1)
    //if (n < 0, retrun true) esle false
    for (int i = 0; i < flowerbed.length; i++) {
      if (flowerbed[i] == 0) {
        bool emptyleft = (i == 0) || (flowerbed[i - 1] == 0);
        bool emptyright =
            (i == flowerbed.length - 1) || (flowerbed[i + 1] == 0);
        if (emptyleft && emptyright) {
          flowerbed[i] = 1;
          n--;
          if (n <= 0) {
            return true;
          }
        }
      }
    }
    return n <= 0;
  }
}
