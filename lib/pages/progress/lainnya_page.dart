import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/card/datatable_card.dart';

class LainnyaPage extends StatelessWidget {
  const LainnyaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Tombol Back
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Detail lainnya",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// TITLE
              const Text(
                "Lainnya",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 6),

              const Text(
                "Kompetensi dan materi pembelajaran",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              const Divider(thickness: 1, color: Colors.black12),

              const SizedBox(height: 20),

              /// CARD DETAIL (sesuai gambar)
              DataTableCard(
                title: "Lainnya",
                kompetensi: "Membuat Aplikasi Mobile Sederhana",
                guru: "Pa Guru",
                tanggal: "5 Nov 2025",
                status: "Disetujui",
                catatanGuru: "Hasil sangat bagus, tingkatkan lagi!",
                catatanSiswa: "Sudah melakukan revisi sesuai arahan.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
