import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/appbar/app_bar_component.dart';
import 'package:intl/intl.dart';

class WitnessRequest extends StatefulWidget {
  const WitnessRequest({super.key});

  @override
  State<WitnessRequest> createState() => _WitnessRequestState();
}

class _WitnessRequestState extends State<WitnessRequest> {
  final List<Map<String, dynamic>> requestData = [
    {
      "id": 1,
      "nama": "Dimas Ady Bhaskara",
      "rombel": "PPLG X-1",
      "rayon": "Ciawi 2",
      "deskripsi": "Membantu menjadi saksi pada kegiatan piket kelas.",
      "tanggal": "12 Desember 2025",
      "status": "pending",
      "image": "assets/images/profile.png",
    },
    {
      "id": 2,
      "nama": "Dimas Ady Bhaskara",
      "rombel": "PPLG X-3",
      "rayon": "Tajur 1",
      "deskripsi": "Menjadi saksi laporan keterlambatan teman sekelas.",
      "tanggal": "10 Desember 2025",
      "status": "pending",
      "image": "assets/images/profile.jpg",
    },
    {
      "id": 3,
      "nama": "Dimas Ady Bhaskara",
      "rombel": "PPLG X-2",
      "rayon": "Cicurug 5",
      "deskripsi": "Verifikasi kegiatan kebersihan kelas.",
      "tanggal": "9 Desember 2025",
      "status": "pending",
      "image": "assets/images/profile.png",
    },
  ];

  void _handleDecision(int id, String decision) {
    setState(() {
      final index = requestData.indexWhere((e) => e["id"] == id);
      if (index >= 0) {
        requestData[index]["status"] =
            decision == "accept" ? "accepted" : "rejected";
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          decision == "accept" ? "Permintaan diterima" : "Permintaan ditolak",
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat("EEEE, d MMMM yyyy", "en_US").format(DateTime.now());

    return Scaffold(
      appBar: const AppBarComponent(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: ListView(
          children: [
            const Text(
              "Permintaan Saksi",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 16),

            Align(
              alignment: Alignment.centerLeft,
              child: IntrinsicWidth(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F0FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    formattedDate,
                    style: const TextStyle(
                      color: Color(0xFF0A5BE0),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ...requestData.map((item) {
              final status = item["status"];
              final isAccepted = status == "accepted";
              final isRejected = status == "rejected";

              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  childrenPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),

                  shape: Border.all(color: Colors.transparent),

                  title: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          item["image"],
                          width: 42,
                          height: 42,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["nama"],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item["tanggal"],
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: isAccepted
                              ? Colors.green.withOpacity(0.12)
                              : isRejected
                                  ? Colors.red.withOpacity(0.12)
                                  : Colors.grey.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          isAccepted
                              ? "Diterima"
                              : isRejected
                                  ? "Ditolak"
                                  : "Menunggu",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: isAccepted
                                ? Colors.green.shade700
                                : isRejected
                                    ? Colors.red.shade700
                                    : Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),

                  children: [
                    const Divider(),

                    // ===== Rombel (Rata Kiri) =====
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rombel: ${item["rombel"]}",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    // ===== Rayon (Rata Kiri) =====
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rayon: ${item["rayon"]}",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ===== Deskripsi Tetap =====
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item["deskripsi"],
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: (isAccepted || isRejected)
                                ? null
                                : () => _handleDecision(item["id"], "reject"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.withOpacity(0.12),
                              foregroundColor: Colors.red.shade700,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                            ),
                            child: const Text("Tolak"),
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: (isAccepted || isRejected)
                                ? null
                                : () => _handleDecision(item["id"], "accept"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green.withOpacity(0.12),
                              foregroundColor: Colors.green.shade800,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                            ),
                            child: const Text("Terima"),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
