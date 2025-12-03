import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:jurnalku_app/widgets/card/competency_card.dart';
import 'package:jurnalku_app/widgets/table.dart';

class AttitudeRecord extends StatefulWidget {
  const AttitudeRecord({super.key});

  @override
  State<AttitudeRecord> createState() => _AttitudeRecordState();
}

class _AttitudeRecordState extends State<AttitudeRecord> {
  // late TabController tabController;
  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(length: 6, vsync: ScrollableState());
  // }

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
              RecordTable(),

              // const SizedBox(height: 30),

              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(width: 0.5, color: Colors.grey),
              //     gradient: LinearGradient(
              //       colors: [Colors.grey.shade100, Colors.grey.shade200],
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //     ),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: EdgeInsets.all(20),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Project Work",
              //               style: TextStyle(
              //                 fontSize: 25,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black87,
              //               ),
              //             ),
              //             SizedBox(height: 5),
              //             Text(
              //               "Kompetensi dan materi pembelajaran",
              //               style: TextStyle(
              //                 fontSize: 15,
              //                 color: Colors.grey[600],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       //garis
              //       Divider(height: 1, color: Colors.grey[300]),

              //       Card(
              //         margin: EdgeInsets.all(12),
              //         elevation: 2,
              //         child: ExpansionTile(
              //           title: Text("Nama Project Work"),
              //           childrenPadding: EdgeInsets.all(16),
              //           children: [
              //             tampilProjectWork("Kompetensi", ""),
              //             tampilProjectWork("Guru", ""),
              //             tampilProjectWork("Tanggal", ""),
              //             tampilProjectWork("Status", ""),
              //             tampilProjectWork("Catatan Guru", ""),
              //             tampilProjectWork("Catatan Siswa", ""),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              
            ],
          ),
        ),
      ),
    );
  }
}

// Widget tampilProjectWork(String projectWork, String value) {
//   return Padding(
//     padding: EdgeInsets.all(10),
//     child: Row(
//       children: [
//         SizedBox(width: 100, child: Text(projectWork)),
//         Expanded(child: Text(value))
//       ],
//     ),
//   );
// }
