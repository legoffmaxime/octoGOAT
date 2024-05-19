import 'package:flutter/material.dart';
import 'package:octogoat/pages/home/widgets/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octogoat/pages/home/widgets/category.dart';
import 'package:octogoat/pages/home/widgets/prono.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E), // Couleur pour l'AppBar en haut
        title: const Text(
          'octoGOAT',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Impact',
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF1E1E1E), // Couleur pour le reste de la page
          ),
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              color: const Color(0xFF9EBACD), // Couleur pour les coins du clipper
            ),
          ),
          Center(
            child: SingleChildScrollView( // Enveloppez le Column avec un SingleChildScrollView
              child: Column(
                children: [
                  SearchSection(),
                  CategorySection(),
                  const PronoSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF9EBACD),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 30,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: BottomNavigationBar(
        selectedItemColor: const Color(0xFF1E1E1E), // Couleur pour les éléments sélectionnés
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Mes Pronos',
            icon: Icon(
              FontAwesomeIcons.fistRaised,
              size: 50,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Resultats',
            icon: Icon(FontAwesomeIcons.chartLine),
          ),
          BottomNavigationBarItem(
            label: 'Mes ligues',
            icon: Icon(FontAwesomeIcons.trophy),
          ),
          BottomNavigationBarItem(
            label: 'Profil',
            icon: Icon(FontAwesomeIcons.user),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.15);
    path.lineTo(size.width * 0.1, 0);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width, size.height * 0.15);
    path.lineTo(size.width, size.height * 0.85);
    path.lineTo(size.width * 0.9, size.height);
    path.lineTo(size.width * 0.1, size.height);
    path.lineTo(0, size.height * 0.85);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}