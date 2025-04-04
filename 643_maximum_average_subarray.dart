class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int windowSum = 0;

    // 처음 k개로 초기 합 구함
    for (int i = 0; i < k; i++) {
      windowSum += nums[i];
    }

    int maxSum = windowSum;

    // 슬라이딩 윈도우 이동
    for (int i = k; i < nums.length; i++) {
      windowSum = windowSum - nums[i - k] + nums[i];
      if (windowSum > maxSum) {
        maxSum = windowSum;
      }
    }

    double average = maxSum / k;
    return double.parse(average.toStringAsFixed(5));
  }
}
