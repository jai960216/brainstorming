class Solution {
  bool checkStraightLine(List<List<int>> coordinates) {
    int x0 = coordinates[0][0];
    int y0 = coordinates[0][1];
    int x1 = coordinates[1][0];
    int y1 = coordinates[1][1];

    for (int i = 2; i < coordinates.length; i++) {
      int x = coordinates[i][0];
      int y = coordinates[i][1];

      if ((y1 - y0) * (x - x0) != (y - y0) * (x1 - x0)) {
        return false;
      }
    }
    return true;
  }
}


//     * 조건
//      1. 2 <= coordinates.length <= 1000
//      2. coordinates[i].length == 2
//      3. -10^4 <= coordinates[i][0], coordinates[i][1] <= 10^4
//      4. 모든 좌표는 서로 다릅니다.