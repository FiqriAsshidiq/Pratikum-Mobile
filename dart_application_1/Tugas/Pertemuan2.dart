// no1
class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (hitungBeratMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print('Hewan berhasil dimuat ke dalam mobil.');
    } else {
      print('Kapasitas mobil tidak mencukupi untuk menambahkan hewan ini.');
    }
  }

  double hitungBeratMuatan() {
    double totalBerat = 0;
    for (var hewan in muatan) {
      totalBerat += hewan.berat;
    }
    return totalBerat;
  }
}

class Hewan {
  double berat;

  Hewan(this.berat);
}

// no2
Future<List<int>> multiplyList(List<int> dataList, int multiplier) async {
  List<int> result = [];

  for (var item in dataList) {
    await Future.delayed(Duration(milliseconds: 800));
    result.add(item * multiplier);
  }

  return result;
}

void main() async {
  // no1
  Mobil mobil = Mobil(500.0);
  Hewan Banteng = Hewan(4.0);
  Hewan Rusa = Hewan(20.0);
  Hewan gajah = Hewan(550.0);

  mobil.tambahMuatan(Banteng);
  mobil.tambahMuatan(Rusa);
  mobil.tambahMuatan(gajah);

  print("ini Nomer 1");
  print('Total berat muatan dalam mobil: ${mobil.hitungBeratMuatan()} kg');

  // no2

  List<int> data = [8, 6, 2, 1, 5];
  int multiplier = 2;

  List<int> hasil = await multiplyList(data, multiplier);
  print("ini Nomwer 2");
  print("Hasil perkalian: $hasil");
}


//no2
