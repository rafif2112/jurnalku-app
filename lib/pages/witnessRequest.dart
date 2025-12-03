import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:intl/intl.dart';

class WitnessRequest extends StatefulWidget {
  const WitnessRequest({super.key});

  @override
  State<WitnessRequest> createState() => _WitnessRequestState();
}

class _WitnessRequestState extends State<WitnessRequest> {
  @override
  Widget build(BuildContext context) {
    final String today =
        DateFormat("EEEE, d MMMM yyyy", "en_US").format(DateTime.now());

    return Scaffold(
      appBar: const AppBarComponent(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Permintaan Saksi",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold ,color: Colors.black54),
            ),

            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                today,
                style: const TextStyle(
                  color: Color(0xFF3366FF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 22),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // HEADER
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Center(
                              child: Text(
                                "PENGIRIM",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "TANGGAL",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "KONFIRMASI",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // EMPTY STATE
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(28),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                      ),
                      child: Column(
                        children: const [
                          Icon(Icons.group_outlined,
                              size: 48, color: Colors.grey),
                          SizedBox(height: 10),
                          Text(
                            "Belum ada permintaan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Belum ada yang mengirim permintaan saksi kepada Anda",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
