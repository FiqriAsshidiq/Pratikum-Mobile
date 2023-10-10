Future<List<int>> multiplyList(List<int> dataList, int multiplier) async {
  List<int> result = [];

  for (var item in dataList) {
    await Future.delayed(Duration(milliseconds: 300));
    result.add(item * multiplier);
  }

  return result;
}

void main() async {
  // no2

  List<int> data = [8, 6, 2, 1, 5];
  int multiplier = 2;

  List<int> hasil = await multiplyList(data, multiplier);
  print("Hasil perkalian: $hasil");
}
