class Solution {
  bool lemonadeChange(List<int> bills) {
    int five = 0;
    int ten = 0;

    for (int i = 0; i < bills.length; i++) {
      int bill = bills[i];
      if (bill == 5) {
        five++;
      } else if (bill == 10) {
        ten++;
        five--;
      } else if (bill == 20) {
        if (five > 0 && ten > 0) {
          ten--;
          five--;
        } else if (five >= 3) {
          five -= 3;
        } else {
          return false;
        }
      }
      if (five < 0) {
        return false;
      }
    }
    return true;
  }
}
