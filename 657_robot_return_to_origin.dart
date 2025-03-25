class Solution {
  bool judgeCircle(String moves) {
    List<int> count = [0, 0];
    for (int i = 0; i < moves.length; i++) {
      String move = moves[i];
      if (move == 'U')
        count[0]++;
      else if (move == 'D')
        count[0]--;
      else if (move == 'L')
        count[1]++;
      else if (move == 'R')
        count[1]--;
    }
    return count[0] == 0 && count[1] == 0;

    //  [x,y]
    //  - `'U'`: y 좌표 증가
    //  - `'D'`: y 좌표 감소
    //  - `'L'`: x 좌표 감소
    //  - `'R'`: x 좌표 증가
  }
}
