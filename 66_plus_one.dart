class Solution {
  List<int> plusOne(List<int> digits) {
    String strnumber = digits.join(); //string으로 합치기
    BigInt number = BigInt.parse(strnumber); //int로 바꾸기
    number += BigInt.one; //숫자에 1 더하기
    String newStrNumber = number.toString(); // 다시 string으로 바꾸기
    List<String> splitNumber = newStrNumber.split('');
    List<int> result = splitNumber.map(int.parse).toList(); //다시 int, list로 바꾸기
    return result;
  }
}
