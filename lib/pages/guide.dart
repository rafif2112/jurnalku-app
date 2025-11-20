import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    const blue = Color(0xFF0A3A75);

    return Scaffold(
      backgroundColor: Colors.white,

      // ➜ TANPA APP BAR — hanya body
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TITLE WITH ICON
            Row(
              children: const [
                FaIcon(FontAwesomeIcons.bookOpen, color: blue, size: 20),
                SizedBox(width: 8),
                Text(
                  "Panduan Penggunaan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blue,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // DESCRIPTION
            const Text(
              "Selamat datang di panduan penggunaan aplikasi Jurnalku. "
              "Panduan ini akan membantu Anda memahami cara menggunakan "
              "fitur-fitur yang tersedia dengan optimal.",
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 30),

            // SECTION TITLE
            const Text(
              "Umum",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),
            Divider(color: Colors.grey.shade300, thickness: 1),

            const SizedBox(height: 16),

            // ---------- CARD 1 ----------
            GuideCard(
              icon: Icons.person_add_alt,
              title: "Unggah Profile",
              subtitle: "Panduan untuk mengunggah profile pengguna",
              onTap: () {},
            ),

            const SizedBox(height: 12),

            // ---------- CARD 2 ----------
            GuideCard(
              icon: Icons.lock_reset,
              title: "Ganti Password",
              subtitle: "Panduan untuk mengganti password pengguna",
              onTap: () {},
            ),

            const SizedBox(height: 30),

            // =====================================================
            //        SECTION BARU — "UNTUK SISWA"
            // =====================================================

            const Text(
              "Untuk Siswa",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),
            Divider(color: Colors.grey.shade300, thickness: 1),

            const SizedBox(height: 16),

            // Mengisi Jurnal
            GuideCard(
              icon: FontAwesomeIcons.clipboardCheck,
              title: "Mengisi Jurnal",
              subtitle: "Panduan untuk mengisi kegiatan sehari - hari",
              onTap: () {},
            ),

            const SizedBox(height: 12),

            // Kelengkapan Profile
            GuideCard(
              icon: FontAwesomeIcons.idBadge,
              title: "Kelengkapan Profile",
              subtitle: "Panduan untuk melengkapi profile",
              onTap: () {},
            ),

            const SizedBox(height: 12),

            // Mengelola Portofolio
            GuideCard(
              icon: Icons.image,
              title: "Mengelola Portfolio",
              subtitle: "Panduan untuk menambah, edit, dan hapus portfolio",
              onTap: () {},
            ),

            const SizedBox(height: 12),

            // Mengelola Sertifikat
            GuideCard(
              icon: Icons.verified,
              title: "Mengelola Sertifikat",
              subtitle: "Panduan untuk menambah, edit, dan hapus sertifikat",
              onTap: () {},
            ),

            const SizedBox(height: 12),

            // Catatan Sikap Saya
            GuideCard(
              icon: FontAwesomeIcons.book,
              title: "Catatan Sikap Saya",
              subtitle: "Panduan untuk melihat dan memahami catatan sikap",
              onTap: () {},
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class GuideCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const GuideCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const blue = Color(0xFF0A3A75);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            // ICON
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: blue, size: 20),
            ),

            const SizedBox(width: 14),

            // TEXT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),

                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.55),
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
