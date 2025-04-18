class Solution {
  String reverseWords(String s) {
    //trim으로 공백제거
    //split으로 나누기
    //reverse로 뒤집기
    //join으로 합치기
    s = s.replaceAll(RegExp(r'\s+'), ' ');
    return s
        .trim()
        .split(' ') //공백 여러개 처리방법????????
        .reversed
        .join(' ');
  }
}

    // String text = "  이것은 테스트 문자열입니다.  ";
    // text = text.replaceAll(RegExp(r'\s+'), ' '); // 여러 공백을 하나의 공백으로 대체
    // print(text); // 출력: 이것은 테스트 문자열입니다.