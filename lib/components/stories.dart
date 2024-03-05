import 'package:flutter/material.dart';

class Story extends StatelessWidget {

  final String name;
  const Story({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(name)
        ],
      ),
    );
  }
}

  

  

