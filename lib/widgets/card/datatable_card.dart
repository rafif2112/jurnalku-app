import 'package:flutter/material.dart';

class DataTableCard extends StatelessWidget {
  final String title;
  const DataTableCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            "Kompetensi dan materi pembelajaran",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: Colors.black12),
          const SizedBox(height: 10),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ColumnHeader("KOMPETENSI"),
                SizedBox(width: 80),
                ColumnHeader("GURU"),
                SizedBox(width: 80),
                ColumnHeader("TANGGAL"),
                SizedBox(width: 85),
                ColumnHeader("STATUS"),
                SizedBox(width: 80),
                ColumnHeader("CATATAN GURU"),
                SizedBox(width: 80),
                ColumnHeader("CATATAN SISWA"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColumnHeader extends StatelessWidget {
  final String label;
  const ColumnHeader(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w100,
        color:Color.fromARGB(255, 141, 174, 239),
      ),
    );
  }
}
