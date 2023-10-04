import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';
import '../../common/constants/icons.dart';
import '../profile/profile_page.dart';
import 'dashboard_dosen_page.dart';

class DosenPage extends StatefulWidget {
  const DosenPage({super.key});

  @override
  State<DosenPage> createState() => _DosenPageState();
}

class _DosenPageState extends State<DosenPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardDosenPage(),
    const Center(child: Text('New Page')),
    const ProfilePage(role: 'Dosen'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ColorName.primary,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(IconName.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(IconName.chart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(IconName.profile),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
