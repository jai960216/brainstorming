int maxArea(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int max = 0;

  while (left < right) {
    int minHeight = height[left] < height[right] ? height[left] : height[right];
    int width = right - left;
    int area = minHeight * width;

    if (area > max) {
      max = area;
    }

    // 작은 쪽 포인터를 옮긴다
    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return max;
}
