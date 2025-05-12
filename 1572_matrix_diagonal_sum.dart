class Solution {
  int diagonalSum(List<List<int>> mat) {
    int n = mat.length;
    int sum = 0;

    for (int i = 0; i < n; i++) {
      //주 + 부
      sum += mat[i][i];
      sum += mat[i][n - 1 - i];
    }
    if (n % 2 == 1) {
      sum -= mat[n ~/ 2][n ~/ 2];
    }
    return sum;
  }
}
