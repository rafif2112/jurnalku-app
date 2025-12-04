import 'package:flutter/material.dart';
import 'package:jurnalku_app/pages/progress/UKK_page.dart';
import 'package:jurnalku_app/pages/progress/mobile_app_page.dart';
import 'package:jurnalku_app/pages/progress/project_work_page.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:jurnalku_app/widgets/card/progress_card.dart';
import 'package:jurnalku_app/widgets/card/statistic_card.dart';
import 'package:jurnalku_app/pages/progress/gim_page.dart';
import 'package:jurnalku_app/pages/progress/lainnya_page.dart';


class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Progress Belajar",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF5FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Hari, Tanggal Bulan Tahun",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightBlue,
                  ),
                ),
              ),

              StatisticCard(
                title: 'Total Pengajuan',
                count: 1,
                description: 'Semua Setatus',
                icon: Icons.check_circle_outline_outlined,
                color: Colors.blue,
              ),
              SizedBox(height: 20),

              StatisticCard(
                title: 'Halaman ini',
                count: 2,
                description: 'Data ditampilkan',
                icon: Icons.calendar_today_outlined,
                color: Colors.green,
              ),
              SizedBox(height: 20),

              StatisticCard(
                title: 'Status pending',
                count: 3,
                description: 'Perlu validasi',
                icon: Icons.access_time,
                color: Colors.orange,
              ),
              SizedBox(height: 20),

              StatisticCard(
                title: 'Total Halaman',
                count: 4,
                description: 'Navigasi Tersedia',
                icon: Icons.ac_unit_sharp,
                color: Colors.deepPurple,
              ),
              SizedBox(height: 20),

              ProgressCard(title: 'Project Work', subtitle: 'Kompetensi dan materi pembelajaran', routePage: ProjectWorkPage(),),

              SizedBox(height: 40),

              ProgressCard(title: 'Mobile Apps', subtitle: 'Kompetensi dan materi pembelajaran', routePage: MobileAppPage(),),

              SizedBox(height: 40),

              ProgressCard(title: 'UKK (Uji Kompetensi Keahlian)', subtitle: 'Kompetensi dan materi pembelajaran', routePage: UkkPage(),),

              SizedBox(height: 40),

              ProgressCard(title: 'GIM', subtitle: 'Kompetensi dan materi pembelajaran', routePage: GimPage(),),

              SizedBox(height: 40),

              ProgressCard(title: 'Lainnya', subtitle: 'Kompetensi dan materi pembelajaran', routePage: LainnyaPage(),),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
