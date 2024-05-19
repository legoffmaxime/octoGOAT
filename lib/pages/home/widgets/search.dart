import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          SizedBox(
            width: 300, // définir la largeur de la barre de recherche
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  size: 20,
                ),
                hintText: 'chercher un combattant',
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF1E1E1E),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
