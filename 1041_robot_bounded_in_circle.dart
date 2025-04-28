class Solution {
  bool isRobotBounded(String instructions) {
    int x = 0, y = 0;
    int dirX = 0, dirY = 1;
    for (var instruction in instructions.split('')) {
      if (instruction == 'G') {
        x += dirX;
        y += dirY;
      } else if (instruction == 'L') {
        int temp = dirX;
        dirX = -dirY;
        dirY = temp;
      } else if (instruction == 'R') {
        int temp = dirX;
        dirX = dirY;
        dirY = -temp;
      }
    }
    return (x == 0 && y == 0) || (dirX != 0 || dirY != 1);
  }
}
