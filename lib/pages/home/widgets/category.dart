import 'package:flutter/material.dart';
import 'package:octogoat/pages/home/combattants.dart';
import 'package:octogoat/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.person,
      'color': Color.fromARGB(255, 0, 0, 0),
      'title': 'Combattants',
    },
    {
      'icon': Icons.connect_without_contact,
      'color': Color.fromARGB(255, 0, 0, 0),
      'title': 'team',
    },
    {
      'icon': Icons.calendar_month,
      'color': Color.fromARGB(255, 0, 0, 0),
      'title': 'futurs evenements',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: const Color(0xFF9EBACD),
        ),
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  children: [
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () {
                        if (categories[index]['title'] == 'Combattants') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CombattantsPage()),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: categories[index]['color'] as Color,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Icon(
                          categories[index]['icon'] as IconData,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      categories[index]['title'] as String,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 33),
                itemCount: categories.length,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: const Text(
                'prochain evenement UFC 301',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const PopularFight(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: const Text(
                'Mes pronos pour le prochain UFC 301',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
