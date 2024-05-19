import 'package:flutter/material.dart';

class CombattantsPage extends StatelessWidget {
  const CombattantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Combattants'),
        backgroundColor: const Color(0xFF1E1E1E),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: const Color(0xFF1E1E1E),
            child: Center(
              child: Text(
                'octoGOAT',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Impact',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFF9EBACD),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'Liste des combattants',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Ajoutez ici le widget qui affiche la liste des combattants
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
