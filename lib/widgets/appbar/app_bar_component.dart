import 'package:flutter/material.dart';
import 'package:jurnalku_app/pages/dashboard.dart';
import 'package:jurnalku_app/pages/profile.dart';

enum MenuOptions {
  dashboard(icon: Icons.home_outlined, label: 'Dashboard', widget: Dashboard()),
  profile(icon: Icons.person_2_outlined, label: 'Profil', widget: Profile()),
  explore(icon: Icons.explore_outlined, label: 'Jelajahi'),
  jurnalPembiasaan(icon: Icons.book_outlined, label: 'Jurnal Pembiasaan'),
  permintaanSaksi(icon: Icons.how_to_reg_outlined, label: 'Permintaan Saksi'),
  progress(icon: Icons.bar_chart_outlined, label: 'Progress'),
  catatanSikap(icon: Icons.warning_amber_outlined, label: 'Catatan Sikap'),
  panduanPenggunaan(icon: Icons.menu_book_outlined, label: 'Panduan Penggunaan'),
  pengaturanAkun(icon: Icons.settings_outlined, label: 'Pengaturan Akun'),
  logOut(icon: Icons.logout_outlined, label: 'Log Out');

  final IconData icon;
  final String label;
  final Widget? widget;

  const MenuOptions({required this.icon, required this.label, this.widget});
}

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      surfaceTintColor: Colors.transparent,
      shape: Border(
        bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
      ),
      leading: IconButton(
        icon: Icon(Icons.home_outlined, size: 26, color: Colors.grey[600]),
        onPressed: () {},
      ),
      actions: [
        PopupMenuButton<MenuOptions>(
          offset: const Offset(0, 55),
          color: Colors.white,
          itemBuilder: (context) => MenuOptions.values.map((option) {
            return PopupMenuItem<MenuOptions>(
              value: option,
              onTap: option.widget != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => option.widget!),
                      );
                    }
                  : null,
              child: SizedBox(
                child: Row(
                  children: [
                    Icon(option.icon, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    Text(
                      option.label,
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          onSelected: (value) {
            // Handle menu item selection
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Muhamad Rafif',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'PPLG XII-5',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Image.asset('assets/images/profile.png', width: 40, height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
