import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:jurnalku_app/widgets/habit_journal_table.dart';
import 'package:jurnalku_app/widgets/table.dart';

class HabitJournalScreen extends StatefulWidget {
  const HabitJournalScreen({super.key});

  @override
  State<HabitJournalScreen> createState() => _HabitJournalScreenState();
}

class _HabitJournalScreenState extends State<HabitJournalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jurnal Pembiasaan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'DECEMBER - 2024',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_back_rounded, size: 20, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Bulan\nSebelumnya',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Konten Jurnal Pembiasaan
            Text(
              'A. Pembiasaan Harian',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CircleAvatar(radius: 6, backgroundColor: Colors.green),
                    SizedBox(width: 8),
                    Text('Sudah Diisi'),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color.fromARGB(255, 209, 221, 209),
                    ),
                    SizedBox(width: 8),
                    Text('Belum Diisi'),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: const [
                    CircleAvatar(radius: 6, backgroundColor: Colors.red),
                    SizedBox(width: 8),
                    Text('Tidak Diisi'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.45,
              ),
              itemCount: 23,
              itemBuilder: (context, index) {
                Color statusColor;
                if (index != 0 && index != 1 && index != 2) {
                  statusColor = Colors.grey[400]!;
                } else {
                  statusColor = Colors.grey[200]!;
                }

                return Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(color: statusColor),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),

            Text(
              'B. Pekerjaan Yang Dilakukan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // JobTable(),
            Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text("Pekerjaan A"),
                subtitle: Text("Tanggal: 20 Nov 2025"),
                trailing: Text("Saksi: Cahyo"),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text("Pekerjaan A"),
                subtitle: Text("Tanggal: 20 Nov 2025"),
                trailing: Text("Saksi: Cahyo"),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 30),

            Text(
              'C. Material Yang Dipelajari',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            ExpansionTile(
              title: Text(
                'Belajar Flutter Dasar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              subtitle: Text('20 Nov 2025'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Status:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Approved',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Catatan Guru:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Bagus, pemahaman sudah cukup baik.'),
                      const SizedBox(height: 12),
                      Text(
                        'Catatan Siswa:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Saya sudah memahami materi ini dengan baik.'),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CircleAvatar(radius: 6, backgroundColor: Colors.green),
                    SizedBox(width: 8),
                    Text('A : Approved '),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: const [
                    CircleAvatar(radius: 6, backgroundColor: Colors.yellow),
                    SizedBox(width: 8),
                    Text('P : Pending'),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: const [
                    CircleAvatar(radius: 6, backgroundColor: Colors.red),
                    SizedBox(width: 8),
                    Text('R : Revisi'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            Text(
              'D. Poin',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const HabitJournalTable(),
          ],
        ),
      ),
    );
  }
}
