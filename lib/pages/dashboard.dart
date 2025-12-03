// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:jurnalku_app/widgets/card/dashboard_card.dart';
import 'package:jurnalku_app/widgets/card/statistic_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: SvgPicture.asset(
                      'assets/images/bgsecondary.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Selamat Datang di Jurnalku',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Solusi cerdas untuk memantau perkembangan \n kompetensi siswa secara efektif',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // CONTENT
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CARD INTRO
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue[800]!, Colors.blue[900]!],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apa itu Jurnalku?',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  DashboardCard(
                    iconPath: 'assets/icons/hall.svg',
                    title: 'Dirancang Khusus',
                    description:
                        'Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.',
                  ),

                  SizedBox(height: 20),

                  DashboardCard(
                    iconPath: 'assets/icons/profile_graduate.svg',
                    title: 'Efektif',
                    description:
                        'Memudahkan siswa dan guru melihat perkembangan secara real-time.',
                  ),

                  SizedBox(height: 20),

                  DashboardCard(
                    iconPath: 'assets/icons/graduate.svg',
                    title: 'Terintegrasi',
                    description:
                        'Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.',
                  ),

                  SizedBox(height: 50),

                  // MENU APLIKASI
                  Text(
                    "MENU APLIKASI",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  // MENU PERTAMA
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[300]!, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: Icon(
                                Icons.person_outline,
                                color: Colors.blue[800],
                                size: 28,
                              ),
                            ),
                            title: Text(
                              'Profil',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Lihat dan kelola profilmu di sini.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          Divider(),

                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: SvgPicture.asset(
                                'assets/icons/toolbox.svg',
                                width: 28,
                                height: 28,
                                color: Colors.blue[800],
                              ),
                            ),
                            title: Text(
                              'Portofolio',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Lihat dan kelola portofolio kompetensimu di sini.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          Divider(),

                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: SvgPicture.asset(
                                'assets/icons/stars.svg',
                                width: 28,
                                height: 28,
                                color: Colors.blue[800],
                              ),
                            ),
                            title: Text(
                              'Sertifikat',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Lihat dan unduh sertifikat kompetensimu di sini.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // MENU KEDUA
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[300]!, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: SvgPicture.asset(
                                'assets/icons/book_open_outline.svg',
                                width: 28,
                                height: 28,
                                color: Colors.blue[800],
                              ),
                            ),
                            title: Text(
                              'Jurnal Pembiasaan',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Catat dan pantau kegiatan pembiasaan harianmu.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          Divider(),

                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: Icon(
                                Icons.person_outline,
                                color: Colors.blue[800],
                                size: 28,
                              ),
                            ),
                            title: Text(
                              'Permintaan Saksi',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Lihat teman yang mengajukan permintaan saksi.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          Divider(),

                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: SvgPicture.asset(
                                'assets/icons/chart_bar.svg',
                                width: 28,
                                height: 28,
                                color: Colors.blue[800],
                              ),
                            ),
                            title: Text(
                              'Progress',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Lihat kemajuan kompetensi dan pencapaian belajarmu.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          Divider(),

                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: SvgPicture.asset(
                                'assets/icons/danger.svg',
                                width: 28,
                                height: 28,
                                color: Colors.blue[800],
                              ),
                            ),
                            title: Text(
                              'Catatan Sikap',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Lihat catatan sikap dan perilaku dari guru.',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 50),

                  // STATISTIK KOMPETISI
                  Text(
                    "STATISTIK KOMPETENSI",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  StatisticCard(
                    title: 'Materi Diselesaikan',
                    count: 3,
                    description: 'Selesai',
                    icon: Icons.check_circle_outline_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(height: 20),

                  StatisticCard(
                    title: 'Pengajuan Pending',
                    count: 0,
                    description: 'Pending',
                    icon: Icons.access_time,
                    color: Colors.orange,
                  ),
                  SizedBox(height: 20),

                  StatisticCard(
                    title: 'Materi Hari Ini',
                    count: 0,
                    description: 'Hari Ini',
                    icon: Icons.calendar_today,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 20),

                  StatisticCard(
                    title: 'Materi Revisi',
                    count: 0,
                    description: 'Revisi',
                    icon: Icons.refresh,
                    color: Colors.purple,
                  ),

                  SizedBox(height: 50),


                  // PROGRESS AKADEMIK
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[300]!, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Progress Akademik',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[900],
                                    radius: 6,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Selesai',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[600],
                                    radius: 6,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Pending',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[200],
                                    radius: 6,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Belum',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color.fromRGBO(15, 173, 207, 1),
                                    radius: 6,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Hari Ini',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // FOOTER
            SizedBox(height: 20),
            Center(
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue[50]),
                child: Center(
                  child: Text(
                    '© 2025 GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
