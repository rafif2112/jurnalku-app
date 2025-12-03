import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // FULL WIDTH
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        color: const Color(0xFF003A91), // Warna biru full screen
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Ikon sosial media
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 20),
                SizedBox(width: 18),
                FaIcon(FontAwesomeIcons.instagram, color: Colors.white, size: 20),
                SizedBox(width: 18),
                FaIcon(FontAwesomeIcons.linkedin, color: Colors.white, size: 20),
                SizedBox(width: 18),
                FaIcon(FontAwesomeIcons.youtube, color: Colors.white, size: 22),
              ],
            ),

            const SizedBox(height: 15),

            // Teks copyright
            const Text(
              '© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
