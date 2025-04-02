class Solution {
  String reverseVowels(String s) {
    List<String> aeiou = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    List<String> split = s.split('');
    int left = 0;
    int right = split.length - 1;

    while (left < right) {
      while (left < right && !aeiou.contains(split[left])) {
        left++;
      }
      while (left < right && !aeiou.contains(split[right])) {
        right--;
      }

      if (left < right) {
        String temp = split[left];
        split[left] = split[right];
        split[right] = temp;
        left++;
        right--;
      }
    }
    return split.join();
  }
}
    //split
    //while
    //포인터 양끝
    //양끝에서 중앙으로 이동
    //이동하다 aeiou에 둘다 걸리면 swap
    //list에 저장
    //위치 옮기기