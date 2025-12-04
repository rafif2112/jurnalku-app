import 'package:flutter/material.dart';

class CatatanSikapCard extends StatelessWidget {
  const CatatanSikapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      title: Row(
        children: [
          Text(
            'Kedisiplinan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(width: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              "Selesai",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Catatan: Siswa tidak mengerjakan tugas tepat waktu.',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Update terakhir: 12 Okt 2025',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  Text(
                    'Dilaporkan: 12 Okt 2025',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
