class Solution {
  String tictactoe(List<List<int>> moves) {
    // 승리 조건 조합들 (가로, 세로, 대각선)
    List<List<List<int>>> wins = [
      [
        [0, 0],
        [0, 1],
        [0, 2],
      ],
      [
        [1, 0],
        [1, 1],
        [1, 2],
      ],
      [
        [2, 0],
        [2, 1],
        [2, 2],
      ],
      [
        [0, 0],
        [1, 0],
        [2, 0],
      ],
      [
        [0, 1],
        [1, 1],
        [2, 1],
      ],
      [
        [0, 2],
        [1, 2],
        [2, 2],
      ],
      [
        [0, 0],
        [1, 1],
        [2, 2],
      ],
      [
        [0, 2],
        [1, 1],
        [2, 0],
      ],
    ];

    // A와 B의 수 따로 저장
    List<List<int>> aMoves = [];
    List<List<int>> bMoves = [];

    for (int i = 0; i < moves.length; i++) {
      if (i % 2 == 0) {
        aMoves.add(moves[i]); // A의 차례
      } else {
        bMoves.add(moves[i]); // B의 차례
      }
    }

    // 좌표가 리스트 안에 있는지 직접 비교하는 함수
    bool contains(List<List<int>> moveList, List<int> pos) {
      return moveList.any((m) => m[0] == pos[0] && m[1] == pos[1]);
    }

    // 승리 여부 확인 함수
    bool isWin(List<List<int>> playerMoves) {
      for (var line in wins) {
        if (line.every((pos) => contains(playerMoves, pos))) {
          return true;
        }
      }
      return false;
    }

    // 결과 판별
    if (isWin(aMoves)) return "A";
    if (isWin(bMoves)) return "B";
    if (moves.length == 9) return "Draw";
    return "Pending";
  }

  //각 move에 승리조건이 포함되는지 확인 any?
  //List 안에 List
  //반복문 하나씩 건너띄며 진행
  //for i = 0; i < moves.length; +=2;
  //for i = 1; i < moves.length; +=2;
  //승리 조건 정의????
  //if aMove
}
