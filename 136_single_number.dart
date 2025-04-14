class Solution {
  int singleNumber(List<int> nums) {
    //숫자 카운팅
    //map
    //카운트가 1인값만 반환
    Map<int, int> countMap = {};
    for (var num in nums) {
      countMap[num] = (countMap[num] ?? 0) + 1;
    }

    for (var entry in countMap.entries) {
      if (entry.value == 1) {
        return entry.key;
      }
    }
    return -1;
  }
}
