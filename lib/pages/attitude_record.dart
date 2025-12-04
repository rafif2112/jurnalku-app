import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:jurnalku_app/widgets/card/catatan_sikap.dart';
import 'package:jurnalku_app/widgets/card/competency_card.dart';
import 'package:jurnalku_app/widgets/table.dart';

class AttitudeRecord extends StatefulWidget {
  const AttitudeRecord({super.key});

  @override
  State<AttitudeRecord> createState() => _AttitudeRecordState();
}

class _AttitudeRecordState extends State<AttitudeRecord> {
  String? projectWork;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Catatan Sikap Saya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  border: Border.all(color: Colors.yellow.shade700, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.warning_amber_outlined,
                      size: 24,
                      color: Colors.orange[800],
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Perhatian",
                            style: TextStyle(
                              color: Colors.brown[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan\nklarifikasi.",
                            style: TextStyle(color: Colors.brown[800]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              CompetencyStatisticCard(
                title: "Total Catatan",
                value: 0,
                color: "0xFF3b82f6",
                valueColor: "0xFF000000",
                icon: Icons.my_library_books_outlined,
              ),
              SizedBox(height: 25),
              CompetencyStatisticCard(
                title: "Dalam Perbaikan",
                value: 0,
                color: "0xFFa855f7",
                valueColor: "0xFF000000",
                icon: Icons.lightbulb_outline_sharp,
              ),
              SizedBox(height: 25),
              CompetencyStatisticCard(
                title: "Sudah Berubah",
                value: 0,
                color: "0xFF22c55e",
                valueColor: "0xFF000000",
                icon: Icons.check_circle_outline,
              ),
              SizedBox(height: 25),

              CatatanSikapCard(),

              SizedBox(height: 25),

              CatatanSikapCard(),

              // RecordTable(),

              // ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: 3,
              //   physics: NeverScrollableScrollPhysics(),
              //   itemBuilder: (context, index) {
              //     return Card(
              //       child: ExpansionTile(
              //         leading: Icon(Icons.category, color: Colors.blue),

              //         title: Text(
              //           "Kedisiplinan",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),

              //         subtitle: Row(
              //           children: [
              //             Text("12 Okt 2025", style: TextStyle(fontSize: 12)),
              //             SizedBox(width: 8),
              //             Container(
              //               padding: EdgeInsets.symmetric(
              //                 horizontal: 8,
              //                 vertical: 2,
              //               ),
              //               decoration: BoxDecoration(
              //                 color: Colors.green[100],
              //                 borderRadius: BorderRadius.circular(4),
              //               ),
              //               child: Text(
              //                 "Selesai",
              //                 style: TextStyle(
              //                   color: Colors.green,
              //                   fontSize: 10,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),

              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(16.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text("Dilaporkan oleh: Pak Guru A"),
              //                 SizedBox(height: 8),
              //                 Text(
              //                   "Catatan: Siswa tidak membawa atribut lengkap saat upacara.",
              //                   style: TextStyle(color: Colors.grey[700]),
              //                 ),
              //                 SizedBox(height: 16),
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.end,
              //                   children: [
              //                     TextButton(
              //                       onPressed: () {},
              //                       child: Text("Edit"),
              //                     ),
              //                     TextButton(
              //                       onPressed: () {},
              //                       child: Text(
              //                         "Hapus",
              //                         style: TextStyle(color: Colors.red),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
