class Solution {
  bool isMonotonic(List<int> nums) {
    //단조 정의
    //반복문 2개
    //0 < 0+1 = true
    //0 > 0+1 = true
    //if else = false
    bool inc = true;
    bool dec = true;
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] < nums[i + 1]) {
        dec = false;
        break;
      }
    }
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) {
        inc = false;
        break;
      }
    }
    return inc || dec;
  }
}
