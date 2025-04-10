class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    //중복
    //차집합
    //list 반환
    // Set으로 중복 제거
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();

    // 서로의 차집합 구하기
    List<int> onlyInNums1 = set1.difference(set2).toList();
    List<int> onlyInNums2 = set2.difference(set1).toList();
    return [onlyInNums1, onlyInNums2];
  }
}
