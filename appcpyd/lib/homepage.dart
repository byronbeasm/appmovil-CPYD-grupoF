import 'package:appcpyd/vistas/inicio.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'integrantes/integrantes.dart';
import 'asistencia/asistencia.dart';
import 'qr/qr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [InicioPage(), ScannerPage(), AsistenciaPage(), IntegrantesPage()];
  int _selectedIndex = 0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index; 
    });
  }

  void _onItemTapped(int selectIndex){
    _pageController.jumpToPage(selectIndex);
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade800,
        gap: 8,
        padding: EdgeInsets.all(20),
        onTabChange: _onItemTapped,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Inicio',
          ),
          GButton(
            icon: Icons.qr_code,
            text: 'Escanner QR',
            ),
          GButton(
            icon: Icons.person,
            text: 'Asistencia',
            ),
          GButton(
            icon: Icons.group,
            text: 'Integrantes',
            ),
        ],
      ),
    );
  }
}