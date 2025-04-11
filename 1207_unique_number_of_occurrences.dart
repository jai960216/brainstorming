class Solution {
  bool uniqueOccurrences(List<int> numbers) {
    //for 말고 다른방법
    //set? 는 중복을 제거해버림
    //map? 쓰려면 for 돌아야함

    Map<int, int> countMap = {};

    //숫자별 등장 횟수 세기
    for (int num in numbers) {
      if (countMap.containsKey(num)) {
        countMap[num] = countMap[num]! + 1;
      } else {
        countMap[num] = 1;
      }
    }

    //등장 횟수만 따로 Set에 저장
    Set<int> freqSet = {};

    for (int count in countMap.values) {
      //중복된 등장 횟수가 있다면 false 반환
      if (freqSet.contains(count)) {
        return false;
      }
      freqSet.add(count);
    }

    //중복 없이 모두 다르면 true
    return true;
  }
}
