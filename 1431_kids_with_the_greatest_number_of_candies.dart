class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    //reduce???
    //reduce는 한 리스트 내의 숫자의 합
    //????? for?
    //for->> if ->> return

    int maxCandies = candies[0];
    for (int i = 1; i < candies.length; i++) {
      if (candies[i] > maxCandies) {
        maxCandies = candies[i];
      }
    }
    return candies.map((candy) => candy + extraCandies >= maxCandies).toList();
  }
}
