import 'package:flutter/material.dart';
import 'package:jurnalku_app/pages/dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
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

                const SizedBox(height: 20),

                // FORM LOGIN BOX
                _buildLoginCard(context),

                const SizedBox(height: 50),

                // FITUR-FITUR (banyak Card)
                _buildFeatureCard(
                  title: 'Dirancang Untuk Sekolah Kami',
                  subtitle:
                      'Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.',
                ),
                _gap(),
                _buildFeatureCard(
                  title: 'Pemantauan yang Tersruktur',
                  subtitle:
                      'Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.',
                ),
                _gap(),
                _buildFeatureCard(
                  title: 'Fitur Praktis dan Bermanfaat',
                  subtitle:
                      'Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.',
                ),
                _gap(),
                _buildFeatureCard(
                  title: 'Pengajuan Kompetensi oleh Siswa',
                  subtitle:
                      'Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.',
                ),
                _gap(),
                _buildFeatureCard(
                  title: 'Pantauan Real-Time dan Transparan',
                  subtitle:
                      'Monitoring langsung, menciptakan lingkungan belajar yang efisien',
                ),

                const SizedBox(height: 30),

                // FOOTER
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 2, 57, 140),
                    ),
                    child: Center(
                      child: Text(
                        '© 2025 GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // FLOATING BUTTON
          Positioned(
            bottom: 30,
            right: 20,
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
        ],
      ),
    );
  }


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
          Row(children: const [Text('Masuk untuk memulai '), Text('Jurnalku')]),
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

          const Center(child: Text("Menyatukan Upaya untuk Kemajuan Siswa")),
          const SizedBox(height: 20),

          const Center(
            child: Text(
              'Jurnalku adalah aplikasi cerdas yang \n'
              'membantu guru dan siswa dalam memantau \n'
              'dan mengelola kompetensi keahlian siswa \n'
              'secara efektif.',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({required String title, required String subtitle}) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(title), const SizedBox(height: 8), Text(subtitle)],
        ),
      ),
    );
  }

  SizedBox _gap() => const SizedBox(height: 30);
}
