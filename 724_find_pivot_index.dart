class Solution {
  int pivotIndex(List<int> nums) {
    // 전체 배열의 합을 구함
    int totalSum = nums.reduce((a, b) => a + b);

    // 왼쪽 부분합을 저장할 변수 초기화
    int leftSum = 0;

    // 배열을 순회하면서 피벗 인덱스를 찾음
    for (int i = 0; i < nums.length; i++) {
      // 현재 인덱스를 제외한 오른쪽 부분합 계산
      int rightSum = totalSum - leftSum - nums[i];

      // 왼쪽 합과 오른쪽 합이 같으면 피벗 인덱스이므로 반환
      if (leftSum == rightSum) {
        return i;
      }

      // 현재 원소를 왼쪽 합에 추가
      leftSum += nums[i];
    }

    // 피벗 인덱스가 없으면 -1 반환
    return -1;
  }
}
