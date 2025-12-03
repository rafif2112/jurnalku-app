import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/card/profile_card.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileCard(
          title: 'Portofolio Terbaru',
          subtitle: 'Portofolio akan ditampilkan disini.',
          viewAllText: 'Lihat Semua',
          iconEmoji: '💼',
        ),

        const SizedBox(height: 20),

        ProfileCard(
          title: 'Sertifikat Terbaru',
          subtitle: 'Sertifikat akan ditampilkan disini.',
          viewAllText: 'Lihat Semua',
          iconEmoji: '🏆',
        ),

        const SizedBox(height: 20),

        Container(
          height: 210,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dokumen',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Curiculum Vitae', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      Text('Dokumen CV siswa', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500)),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text('Lihat CV', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 20),

        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Media Sosial',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue[900],
                      child: Icon(Icons.link, color: Colors.white),
                    ),
                    title: Text('LinkedIn', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    subtitle: Text('linkedin.com/in/username', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500)),
                    trailing: IconButton(
                      icon: Icon(Icons.open_in_new, color: Colors.blue[900]),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
