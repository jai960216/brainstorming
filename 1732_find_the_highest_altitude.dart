class Solution {
  int largestAltitude(List<int> gain) {
    int current = 0;
    int highest = 0;

    for (int g in gain) {
      current += g;
      if (current > highest) {
        highest = current;
      }
    }

    return highest;
  }
}
