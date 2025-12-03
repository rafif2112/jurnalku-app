import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';

class CatatanSikapScreen extends StatelessWidget {
  const CatatanSikapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Catatan Sikap Saya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Lihat catatan sikap dan perilaku yang telah dilaporkan.',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),

            // alert
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                border: Border.all(color: Colors.yellow[700]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.warning_amber, color: Colors.yellow[900]),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Perhatian!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow[900],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Jika anda merasa catatan ini tidak sesuai, silakan hubungi guru atau wali kelas untuk klarifikasi.',
                          style: TextStyle(color: Colors.yellow[900]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // content placeholder
            Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[300]!, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contoh Judul',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Contoh Jumlah',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.blue[500], radius: 5),
                          SizedBox(width: 6),
                          Text(
                            'Contoh Deskripsi',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue[50],
                    radius: 20,
                    child: Icon(Icons.info, size: 26, color: Colors.blue[400]),
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
