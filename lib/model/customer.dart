class Customer {
  String nama;
  String alamat;
  String tanggalBeli;
  int barangId;

  Customer({
    required this.nama,
    required this.alamat,
    required this.tanggalBeli,
    required this.barangId,
  });

  factory Customer.fromJson(Map<String, dynamic> customer) => Customer(
        nama: customer['nama'],
        alamat: customer['alamat'],
        tanggalBeli: customer['tanggal_beli'],
        barangId: customer['barang_id'],
      );

  Map<String, dynamic> toJson() {
    var data = {
      'nama': nama,
      'alamat': alamat,
      'tanggal_beli': tanggalBeli,
      'barang_id': barangId,
    };
    return data;
  }
}