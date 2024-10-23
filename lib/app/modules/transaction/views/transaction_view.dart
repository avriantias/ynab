import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

import 'package:intl/intl.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/logo/logo.png'),
          onPressed: () {
            // Get.offNamed(Routes.BOTTOMNAVIGATION);
          },
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: StadiumBorder(),
            ),
            child: Text(
              "Keluar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                  child: Text(
                    "Hai user",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kategori",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showTambahKategoriDialog();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // Warna latar belakang biru
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Sudut melengkung
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10), // Padding tombol
                      ),
                      child: const Text(
                        'Tambah Kategori',
                        style: TextStyle(
                          color: Colors.white, // Warna teks putih
                          fontSize: 12, // Ukuran teks
                          fontWeight: FontWeight.bold, // Teks tebal
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  height: 90, // Tinggi container agar semua konten muat
                  child: ListView.builder(
                    scrollDirection:
                        Axis.horizontal, // Scroll secara horizontal
                    itemCount: 5, // Jumlah item (sesuaikan dengan kebutuhan)
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 10), // Jarak antar item
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 80, // Lebar item
                                  height: 60, // Tinggi item
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: index == 0
                                        ? Colors.green
                                        : Colors.blue, // Warna item
                                    borderRadius: BorderRadius.circular(
                                        10), // Sudut melengkung
                                  ),
                                  child: Text(
                                    index == 0 ? "All" : "Makan", // Contoh teks
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: index !=
                                          0 // X button hanya tampil jika bukan "All"
                                      ? Container(
                                          width: 16,
                                          height: 16,
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.close,
                                            size: 12,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const SizedBox(), // Kosong untuk item "All"
                                ),
                              ],
                            ),
                            const SizedBox(
                                height: 5), // Jarak antara item dan teks label
                            Text(
                              index == 0 ? "Semua" : "Makan", // Contoh label
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Semua Transaksi",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showTambahTransaksiDialog();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // Warna latar belakang biru
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Sudut melengkung
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10), // Padding tombol
                      ),
                      child: const Text(
                        'Tambah Transaksi',
                        style: TextStyle(
                          color: Colors.white, // Warna teks putih
                          fontSize: 12, // Ukuran teks
                          fontWeight: FontWeight.bold, // Teks tebal
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _transactionCard(
                        shortCode: 'HEA',
                        description: 'berobat',
                        category: 'Healthcare',
                        account: 'Tabungan Healthcare',
                        date: '22 Oct 2024',
                        amount: 'Rp 2.500.000',
                        type: 'Ex',
                        color: Colors.blue,
                      ),
                      _transactionCard(
                        shortCode: 'TRA',
                        description: 'Tidak ada deskripsi',
                        category: 'Transportasi',
                        account: 'Tabungan transport',
                        date: '22 Oct 2024',
                        amount: 'Rp 150.000',
                        type: 'In',
                        color: Colors.blue,
                      ),
                      _transactionCard(
                        shortCode: 'TRA',
                        description: 'Tidak ada deskripsi',
                        category: 'Transportasi',
                        account: 'Tabungan transport',
                        date: '22 Oct 2024',
                        amount: 'Rp 150.000',
                        type: 'In',
                        color: Colors.blue,
                      ),
                      _transactionCard(
                        shortCode: 'TRA',
                        description: 'Tidak ada deskripsi',
                        category: 'Transportasi',
                        account: 'Tabungan transport',
                        date: '22 Oct 2024',
                        amount: 'Rp 150.000',
                        type: 'In',
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void showTambahKategoriDialog() {
  Get.dialog(
    AlertDialog(
      title: Text('Tambah Kategori Baru'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Nama Kategori',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Deskripsi',
            ),
            maxLines: 3,
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'URL Gambar Kategori',
              hintText: 'https://example.com/image.jpg',
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(
                255, 119, 122, 124), // Warna latar belakang biru
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Sudut melengkung
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: 14, vertical: 10), // Padding tombol
          ),
          child: const Text(
            'Batal',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 12, // Ukuran teks
              fontWeight: FontWeight.bold, // Teks tebal
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            //aksi
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Warna latar belakang biru
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Sudut melengkung
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: 14, vertical: 10), // Padding tombol
          ),
          child: const Text(
            'Simpan',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 12, // Ukuran teks
              fontWeight: FontWeight.bold, // Teks tebal
            ),
          ),
        ),
      ],
    ),
  );
}

void showTambahTransaksiDialog() {
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  DateTime selectedDate = DateTime.now();

  Get.dialog(
    AlertDialog(
      title: Text('Tambah Transaksi Baru'),
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Dropdown untuk Akun
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Akun'),
                  value: 'Tabungan makan', // Default value
                  items: [
                    'Tabungan makan',
                    'Tabungan kesehatan',
                    'Tabungan transport'
                  ].map((String akun) {
                    return DropdownMenuItem<String>(
                      value: akun,
                      child: Text(akun),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                // Dropdown untuk Kategori
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Kategori'),
                  value: 'Makan', // Default value
                  items: ['Makan', 'Kesehatan', 'Transportasi']
                      .map((String kategori) {
                    return DropdownMenuItem<String>(
                      value: kategori,
                      child: Text(kategori),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                // Input jumlah
                TextField(
                  controller: jumlahController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Jumlah'),
                ),
                SizedBox(height: 10),
                // Tanggal Transaksi
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          'Tanggal Transaksi: ${formatter.format(selectedDate)}'),
                    ),
                    IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );
                        if (pickedDate != null && pickedDate != selectedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Dropdown untuk Tipe Transaksi
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Tipe Transaksi'),
                  value: 'Pemasukan', // Default value
                  items: ['Pemasukan', 'Pengeluaran'].map((String tipe) {
                    return DropdownMenuItem<String>(
                      value: tipe,
                      child: Text(tipe),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                // Input deskripsi
                TextField(
                  controller: deskripsiController,
                  decoration: InputDecoration(
                    labelText: 'Deskripsi',
                  ),
                  maxLines: 3,
                ),
              ],
            ),
          );
        },
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(
                255, 119, 122, 124), // Warna latar belakang biru
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Sudut melengkung
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: 14, vertical: 10), // Padding tombol
          ),
          child: const Text(
            'Batal',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 12, // Ukuran teks
              fontWeight: FontWeight.bold, // Teks tebal
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            //aksi
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Warna latar belakang biru
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Sudut melengkung
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: 14, vertical: 10), // Padding tombol
          ),
          child: const Text(
            'Simpan',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 12, // Ukuran teks
              fontWeight: FontWeight.bold, // Teks tebal
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _transactionCard({
  required String shortCode,
  required String description,
  required String category,
  required String account,
  required String date,
  required String amount,
  required String type,
  required Color color,
}) {
  return Card(
    elevation: 4,
    margin: EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Leading section with circle avatar
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius:
                  BorderRadius.circular(8), // Buat sudutnya sedikit melengkung
            ),
            child: Center(
              child: Text(
                shortCode,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(width: 16),
          // Main content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '$category • $account',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  date,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  type == 'Ex' ? 'Ex $amount' : 'In $amount',
                  style: TextStyle(
                    color: type == 'Ex' ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Button to delete the transaction
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna latar belakang biru
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Sudut melengkung
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 10), // Padding tombol
              ),
              child: const Text(
                'Hapus',
                style: TextStyle(
                  color: Colors.white, // Warna teks putih
                  fontSize: 12, // Ukuran teks
                  fontWeight: FontWeight.bold, // Teks tebal
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
