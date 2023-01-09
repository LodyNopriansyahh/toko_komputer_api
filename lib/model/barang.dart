class Barang {
  String id;
  String nama_komputer;

  Barang({required this.id, required this.nama_komputer});

  factory Barang.fromJson(Map<String, dynamic> barang) =>
      Barang(id: barang['id'], nama_komputer: barang['nama_komputer']);
}
