class Solution {
  int largestPerimeter(List<int> nums) {
    //최소 숫자가 3개 or retrun 0
    //숫자가 3개 이상일 경우 가장 큰 수3개
    //map -> sort
    // 0 ~ 2 가
    //a+b>c
    //a+c>b
    //b+c>a
    // 가장 큰 수부터 세 개씩 묶어서 삼각형 가능한지 확인
    if (nums.length < 3) return 0;
    nums.sort((a, b) => b.compareTo(a));
    for (int i = 0; i < nums.length - 2; i++) {
      int a = nums[i];
      int b = nums[i + 1];
      int c = nums[i + 2];
      if (b + c > a) {
        return a + b + c;
      }
    }

    return 0;
  }
}
