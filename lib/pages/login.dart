import 'package:flutter/material.dart';
import 'package:jurnalku_app/pages/dashboard.dart';
import 'package:jurnalku_app/widgets/footer/footer_explore.dart';
import 'package:jurnalku_app/widgets/card/login_card.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // --- FLOATING BUTTON ---
      floatingActionButton: SizedBox(
        width: 150,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 2, 57, 140),
          onPressed: () {},
          child: const Text(
            'Jelajahi siswa',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      // --- BODY ---
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BANNER
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.cover,
              ),
            ),

             SizedBox(height: 20),

            // FORM LOGIN
            _buildLoginCard(context),

             SizedBox(height: 50),

            const Center(child: Text("Menyatukan Upaya untuk Kemajuan Siswa")),

            // FITUR – FITUR
            const LoginCard(
              iconPath: 'assets/icons/school.svg',
              title: "Dirancang untuk Sekolah Kami",
              description:
                  "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
            ),

            const SizedBox(height: 10
            ),

            const LoginCard(
              iconPath: 'assets/icons/flow.svg',
              title: "Pemantauan yang Terstruktur",
              description:
                  "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
            ),

            const SizedBox(height: 10
            ),

            const LoginCard(
              iconPath: 'assets/icons/people_meditation.svg',
              title: "Fitur Praktis dan Bermanfaat",
              description:
                  "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
            ),

            const SizedBox(height: 10
            ),

            const LoginCard(
              iconPath: 'assets/icons/toga.svg',
              title: "Pengajuan Kompetensi oleh Siswa",
              description:
                  "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
            ),

            const SizedBox(height: 10
            ),

            const LoginCard(
              iconPath: 'assets/icons/note.svg',
              title: "Validasi dan Tanda Tangan Guru",
              description:
                  "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
            ),

            const SizedBox(height: 10
            ),

            const LoginCard(
              iconPath: 'assets/icons/monitor.svg',
              title: "Pantauan Real-Time dan Transparan",
              description: "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
            ),

            const SizedBox(height: 20),

            // FOOTER
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  // LOGIN FORM CARD
  Widget _buildLoginCard(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Masuk untuk memulai ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Jurnalku',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 57, 140),
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),

          // USERNAME
          const Text('Username atau NIS'),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: 'Masukkan username atau NIS',
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 0.5, color: Colors.grey),
              ),
            ),
          ),

          const SizedBox(height: 30),

          // PASSWORD
          const Text('Password'),
          const SizedBox(height: 8),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Masukkan password',
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 0.5, color: Colors.grey),
              ),
              suffixIcon: const Icon(Icons.remove_red_eye_sharp),
            ),
          ),

          const SizedBox(height: 35),

          // BUTTON MASUK
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 57, 140),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: const Text('Masuk', style: TextStyle(color: Colors.white)),
            ),
          ),

          const SizedBox(height: 30),

          const Center(child: Text('Lupa password? Hubungi guru laboran')),

          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
