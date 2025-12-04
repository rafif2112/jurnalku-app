import 'package:flutter/material.dart';

class DataTableCard extends StatelessWidget {
  final String title;
  final String kompetensi;
  final String guru;
  final String tanggal;
  final String status;
  final String catatanGuru;
  final String catatanSiswa;

  const DataTableCard({
    super.key,
    required this.title,
    required this.kompetensi,
    required this.guru,
    required this.tanggal,
    required this.status,
    required this.catatanGuru,
    required this.catatanSiswa,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // Divider pemisah
          const Divider(height: 1, color: Colors.black12),
          const SizedBox(height: 10),

          // EXPANSION TILE
          ExpansionTile(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding: const EdgeInsets.symmetric(horizontal: 0),

            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    _buildLabel("Kompetensi"),
                    _buildValue(kompetensi),

                    _buildLabel("Guru"),
                    _buildValue(guru),

                    _buildLabel("Tanggal"),
                    _buildValue(tanggal),

                    _buildLabel("Status"),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: status == "Disetujui" ? Colors.green : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 14),

                    _buildLabel("Catatan Guru"),
                    _buildValue(catatanGuru),

                    _buildLabel("Catatan Siswa"),
                    _buildValue(catatanSiswa),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget kecil biar kode lebih rapi 😎
  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
      ),
    );
  }

  Widget _buildValue(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Text(
        text,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
