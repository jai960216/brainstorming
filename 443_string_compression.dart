class Solution {
  int compress(List<String> chars) {
    List<String> result = [];
    int count = 1;

    for (int i = 1; i <= chars.length; i++) {
      if (i < chars.length && chars[i] == chars[i - 1]) {
        count++;
      } else {
        result.add(chars[i - 1]);
        if (count > 1) {
          result.addAll(count.toString().split(''));
        }
        count = 1;
      }
    }

    for (int i = 0; i < result.length; i++) {
      chars[i] = result[i];
    }

    return result.length;
  }
}

// 1. 변수선
// 2. 문자 순회 (for문)
// 3. 같은 문자면 count 증가
// 4. 다른 문자가 나오면 result에 저장
// 5. chars에 덮어쓰기
// 6. 새로운 길이 반환
