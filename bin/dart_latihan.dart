import 'dart:io';

void main(List<String> arguments) {
  String kodebarang, namabarang, carabeli, cobalagi;
  double jumlahbarang, hargabarang, totalharga, diskon, totalbayar;
  while (true) {
    stdout.writeln("Latihan Pertama Ulang 'ETALASE'");
    stdout.write("Kode Barang :");
    kodebarang = stdin.readLineSync().toString();

    //kode barang dan nama barang kosong
    if (kodebarang.isEmpty ||
        !(kodebarang == "EA4" ||
            kodebarang == "EPN" ||
            kodebarang == "EPG" ||
            kodebarang == "ESP" ||
            kodebarang == "EMP" ||
            kodebarang == "EBK" ||
            kodebarang == "EFD" ||
            kodebarang == "ELB" ||
            kodebarang == "ECT" ||
            kodebarang == "EPS")) {
      print("Barang tidak tersedia!");
      stdout.write("Apa anda ingin mencoba lagi? [Y/T] : ");
      cobalagi = stdin.readLineSync().toString();
      if (cobalagi != "Y" && cobalagi != "y") {
        break;
      } else {
        continue;
      }
    }

    stdout.write("Jumlah Barang :");
    jumlahbarang = double.parse(stdin.readLineSync().toString());
    stdout.write("Cara Beli :");
    carabeli = stdin.readLineSync().toString();

    if (kodebarang == "EA4") {
      namabarang = "Kertas A4 70 gsm (rim)";
      hargabarang = 57000;
    } else if (kodebarang == "EPN") {
      namabarang = "Pulpen Gel Hitam";
      hargabarang = 6000;
    } else if (kodebarang == "EPG") {
      namabarang = "Penggaris Besi 30 cm";
      hargabarang = 20000;
    } else if (kodebarang == "ESP") {
      namabarang = "Spidol Boardmarker";
      hargabarang = 30000;
    } else if (kodebarang == "EMP") {
      namabarang = "Map Folder Plastik";
      hargabarang = 10000;
    } else if (kodebarang == "EBK") {
      namabarang = "Buku Tulis A5";
      hargabarang = 15000;
    } else if (kodebarang == "EFD") {
      namabarang = "Flashdisk 16 GB";
      hargabarang = 50000;
    } else if (kodebarang == "ELB") {
      namabarang = "Lakban Bening";
      hargabarang = 12000;
    } else if (kodebarang == "ECT") {
      namabarang = "Cutter Kecil";
      hargabarang = 9000;
    } else if (kodebarang == "EPS") {
      namabarang = "Pensil Fabercastle";
      hargabarang = 5000;
    } else {
      namabarang = "-";
      hargabarang = 0;
    }

    totalharga = hargabarang * jumlahbarang;

    if (carabeli.toUpperCase() == "T") {
      diskon = 10 / 100 * totalharga;
    } else {
      diskon = 0;
    }

    totalbayar = totalharga - diskon;
    print(
      "Cek Harga Barang Etalase\nNama Barang : $namabarang\nHarga Barang : $hargabarang",
    );
    print("Total Harga :$totalharga");
    print("Diskon :$diskon");
    print("Total Bayar :$totalbayar");
    print("");

    stdout.write("Apa anda ingin mencoba lagi [Y/T] : ");
    cobalagi = stdin.readLineSync().toString();
    if (cobalagi != "Y" && cobalagi != "y") {
      break;
    }
  }
}
