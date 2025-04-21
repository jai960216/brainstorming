class Solution {
  String removeStars(String s) {
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '*') {
        if (stack.isNotEmpty) {
          stack.removeLast();
        }
      } else {
        stack.add(s[i]);
      }
    }
    return stack.join();
  }
}

    //반복문
    //if * 면 직전 문자 제거
    //removeLast (L대문자)