class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (hitungBeratMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print("Hewan berhasil dimuat ke dalam mobil.");
      print("total muatan = ${(hitungBeratMuatan())} kg");
    } else {
      print("");
      print("==PERINGATAN! KAPASITAS TELAH MENCAPAI BATAS MAKS==");
    }
  }

  double hitungBeratMuatan() {
    double totalBerat = 0;
    for (var hewan in muatan) {
      totalBerat += hewan.berat;
    }
    return totalBerat;
  }

  double hitungBeratMuatanSisa() {
    double totalBerat = hitungBeratMuatan();
    double kapasitasMaksimal = kapasitas;
    if (totalBerat >= kapasitasMaksimal) {
      print("");
      return 0;
    } else {
      print("");
      print("==masih bisa menambahkan==");
      return kapasitasMaksimal - totalBerat;
    }
  }
}

class Hewan {
  double berat;

  Hewan(this.berat);
}

void main() {
  Mobil mobil = Mobil(100.0);
  Hewan Banteng = Hewan(40.0);
  Hewan Rusa = Hewan(60.0);
  Hewan gajah = Hewan(10.0);

  mobil.tambahMuatan(Banteng);
  mobil.tambahMuatan(Rusa);
  mobil.tambahMuatan(gajah);

  print("");
  print('Maks Kapasitas: ${(mobil.kapasitas)} kg');
  print('Total berat muatan dalam mobil: ${mobil.hitungBeratMuatan()} kg');
  print(
      'Sisa Kapasitas muatan dalam mobil: ${mobil.hitungBeratMuatanSisa()} kg');
}
