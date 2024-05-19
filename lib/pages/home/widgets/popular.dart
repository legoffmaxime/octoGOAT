import 'package:flutter/material.dart';

class PopularFight extends StatelessWidget {
  const PopularFight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black, // Définissez la couleur du bord
          width: 0.5,
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classement de ma ligue : les branquignoles',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1er : Fernand Loper',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '2ème : Daniel Vois Rien',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '3ème : Cyril Diabete',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Voir le peloton',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
