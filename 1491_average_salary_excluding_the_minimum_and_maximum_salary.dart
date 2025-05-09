class Solution {
  double average(List<int> salary) {
    //reduce로 mix max 산출
    //조건 ? 참일 때 값 : 거짓일 때 값

    int minSalary = salary.reduce((a, b) => a < b ? a : b);
    int maxSalary = salary.reduce((a, b) => a > b ? a : b);
    int totalSum = salary.reduce((a, b) => a + b);

    return (totalSum - minSalary - maxSalary) / (salary.length - 2);
  }
}
