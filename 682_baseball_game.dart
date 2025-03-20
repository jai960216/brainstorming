class Solution {
  int calPoints(List<String> operations) {
    //for(i = 0; i < operations.length; i++)반복문으로 list 돌기
    //if C,D,+ = remove.last, [i-1] *2, [i-1] += [i-2]

    List<int> score = [];
    for (int i = 0; i < operations.length; i++) {
      if (operations[i] == "C") {
        if (score.isNotEmpty) {
          score.removeLast();
        }
      } else if (operations[i] == "D") {
        if (score.isNotEmpty) {
          score.add(score.last * 2);
        }
      } else if (operations[i] == "+") {
        if (score.isNotEmpty) {
          score.add(score[score.length - 1] + score[score.length - 2]);
        }
      } else {
        score.add(int.parse(operations[i]));
      }
    }
    return score.fold(0, (sum, score) => sum + score);
  }
}
