import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  static const blue = Color(0xFF0A3A75);
  final TextEditingController searchController = TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              FaIcon(FontAwesomeIcons.bookOpen, color: blue, size: 18),
              SizedBox(width: 6),
              Text("Jurnalku", style: TextStyle(color: Colors.grey, fontSize: 16)),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: pindah halaman ke Dashboard
              // Navigator.push(context, MaterialPageRoute(builder: (_) => DashboardPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: blue,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text("Dashboard", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),

      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Konten di atas gambar
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  const Text(
                    "Direktori  Siswa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.search, color: Colors.grey),
                                  SizedBox(width: 10),

                                  Expanded(
                                    child: TextField(
                                      controller: searchController,
                                      decoration: const InputDecoration(
                                        hintText: "Cari nama siswa, NIS, atau rombel...",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Cari", style: TextStyle(color: Colors.white)),
                            ),
                            
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.filter_alt_sharp, size: 16, color: Colors.grey),
                              SizedBox(width: 6),
                              Text("Filter Lanjutan", style: TextStyle(color: Colors.grey)),
                              Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
