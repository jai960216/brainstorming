class Solution {
  int romanToInt(String s) {
    // I = 1
    // V = 5
    // X = 10
    // L = 50
    // C = 100
    // D = 500
    // M = 1000
    // 숫자 바꾸고
    // 저장공간 list []
    // smallindex = index < index + 1()
    // if smallindex(* -1)
    // sumlist[]

    // 로마 숫자 → 숫자 매핑
    Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    // 숫자 저장할 리스트
    List<int> values = [];

    // 1. 각 문자 → 숫자로 변환해서 values에 넣기
    for (int i = 0; i < s.length; i++) {
      int current = romanMap[s[i]]!;
      // 다음 문자가 있다면 비교
      if (i + 1 < s.length) {
        int next = romanMap[s[i + 1]]!;
        if (current < next) {
          // 규칙 2: 작은 값이 앞에 있으면 음수로 저장
          values.add(-current);
        } else {
          values.add(current);
        }
      } else {
        // 마지막 문자일 경우 그냥 더함
        values.add(current);
      }
    }

    // 2. 리스트 전체 더하기
    int sum = values.reduce((a, b) => a + b);
    return sum;
  }
}
