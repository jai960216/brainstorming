class Solution {
  int maximumWealth(List<List<int>> accounts) {
    //저장용 int
    //listsum의 최댓값
    //fold?
    int maxMoney = 0;
    for (List<int> customer in accounts) {
      int money = customer.fold(0, (sum, value) {
        return sum + value;
      });
      if (money > maxMoney) {
        maxMoney = money;
      }
    }
    return maxMoney;
  }
}
