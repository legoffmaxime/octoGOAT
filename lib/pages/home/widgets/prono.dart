import 'package:flutter/material.dart';

class Fight {
  final String fighter1;
  final String fighter2;
  String result;

  Fight({required this.fighter1, required this.fighter2, this.result = ''});
}

List<Fight> fights = [
  Fight(fighter1: 'Conor', fighter2: 'Khabib'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
  Fight(fighter1: 'Fighter2_1', fighter2: 'Fighter2_2'),
];

class PronoSection extends StatefulWidget {
  const PronoSection({super.key});

  @override
  _PronoSectionState createState() => _PronoSectionState();
}

class _PronoSectionState extends State<PronoSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xFF9EBACD),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Text(
            'UFC 301',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'VS',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          ...fights.map((fight) => _buildFightRow(fight)).toList(),
          ElevatedButton(
            onPressed: () {
              // TODO: Enregistrer les pronostics
            },
            child: Text('Enregistrer vos pronos'),
          ),
        ],
      ),
    );
  }

  Widget _buildFightRow(Fight fight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          fight.fighter1,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: TextField(
            onChanged: (value) {
              setState(() {
                fight.result = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'KO, DEC, SUB',
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          fight.fighter2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
