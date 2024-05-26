import 'package:flutter/material.dart';
import 'package:vioscake_admin/models/product.dart';
import 'package:vioscake_admin/pages/keranjang_page.dart';
import './dashboard_page.dart';
import './menu_page.dart';
import './setting_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  List<Product> keranjangItems = [];

  void tambahKeKeranjang(Product product) {
    setState(() {
      keranjangItems.add(product);
    });
  }

  List<Widget> _getContainer() {
    return [
      new DashboardPage(),
      new MenuPage(
        onAddToCart: (product) => tambahKeKeranjang(product),
      ),
      new KeranjangPage(keranjangItems: keranjangItems),
      new SettingPage(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getContainer().elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/menu.png")),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/keranjang.png")),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/setting.png")),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFDEAE78),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
