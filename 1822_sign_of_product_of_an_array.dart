class Solution {
  int arraySign(List<int> nums) {
    int negativeCount = 0;
    for (int num in nums) {
      if (num == 0) {
        return 0; //0이 하나라도 있으면 0 반환
      }
      if (num < 0) {
        negativeCount++; //음수갯수
      }
    }
    return (negativeCount % 2 == 0) ? 1 : -1; //음수갯수가 짝수면 나머지가 0 ? 1 : -1
  }
}
