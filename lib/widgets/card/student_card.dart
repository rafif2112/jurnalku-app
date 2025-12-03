import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String image; 
  final String name;
  final String nis;
  final String rombel;
  final int portfolio;
  final int sertifikat;
  final VoidCallback onDetail;

  const StudentCard({
    super.key,
    required this.image,
    required this.name,
    required this.nis,
    required this.rombel,
    required this.portfolio,
    required this.sertifikat,
    required this.onDetail,
  });

  @override
  Widget build(BuildContext context) {
    const blue = Color(0xFF0A3A75);

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "$nis | $rombel",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),
          Divider(color: Colors.grey.shade300),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.folder_copy, size: 16, color: Colors.grey),
                  const SizedBox(width: 6),
                  Text("$portfolio Portfolio",
                      style: TextStyle(color: Colors.grey.shade700)),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.verified, size: 16, color: Colors.grey),
                  const SizedBox(width: 6),
                  Text("$sertifikat Sertifikat",
                      style: TextStyle(color: Colors.grey.shade700)),
                ],
              ),
            ],
          ),

          const SizedBox(height: 14),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: blue,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: onDetail,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Lihat Detail",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  }