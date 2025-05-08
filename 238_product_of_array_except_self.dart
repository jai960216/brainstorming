class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;
    List<int> result = List.filled(n, 1);

    int leftProduct = 1;
    for (int i = 0; i < n; i++) {
      result[i] = leftProduct;
      leftProduct *= nums[i];
    }

    int rightProduct = 1;
    for (int i = n - 1; i >= 0; i--) {
      result[i] *= rightProduct;
      rightProduct *= nums[i];
    }

    return result;
  }
}
