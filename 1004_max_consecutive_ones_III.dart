class Solution {
  int longestOnes(List<int> nums, int k) {
    int left = 0;
    int maxLen = 0;
    int zeros = 0;

    for (int right = 0; right < nums.length; right++) {
      if (nums[right] == 0) {
        zeros++;
      }
      while (zeros > k) {
        if (nums[left] == 0) {
          zeros--;
        }
        left++;
      }
      maxLen = (right - left + 1 > maxLen) ? (right - left + 1) : maxLen;
    }
    return maxLen;
  }
}
