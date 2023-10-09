void main(List<String> arguments) {
// 1.tugas no 1 , implementasi rumus lingkaran jika diketahui jari jarinya adalah 4
  double phi = 3.14;
  int r = 4;

  double hitung = phi * r * r;

//no2 Membuat tiga variabel string
  var string1 = "Muhammad ";
  var string2 = "Fiqri ";
  var string3 = "Asshidiq ";

  var gabung = string1 + string2 + string3;

// 3 menhitung faktorial  10 20 30
  int angkaA = 10;
  int angkaB = 20;
  int angkaC = 30;

  int faktorialA = hitungFaktorial(angkaA);
  int faktorialB = hitungFaktorial(angkaB);
  int faktorialC = hitungFaktorial(angkaC);

  print("ini nomer 1");
  print(hitung);

  print("ini nomer 2");
  print(gabung);

  print("ini nomer3");
  print("Faktorial dari $angkaA adalah $faktorialA");
  print("Faktorial dari $angkaB adalah $faktorialB");
  print("Faktorial dari $angkaC adalah $faktorialC");
}

int hitungFaktorial(int n) {
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}
