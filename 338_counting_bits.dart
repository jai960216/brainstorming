class Solution {
  List<int> countBits(int n) {
    List<int> sum = [];
    for (int i = 0; i <= n; i++) {
      String binary = i.toRadixString(2);
      int ones = binary.split('1').length - 1;
      sum.add(ones);
    }
    return sum;
    // 정수 -> 이진수 binary -> string 타입으로 나옴
    // for 순회
    // fold?
  }
}
