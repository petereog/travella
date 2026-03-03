import 'package:flutter/material.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
    child: Image.asset('assets/images/Ellipse 6.png'),
    ),
        const SizedBox(height: 12,),
        Text('Mount',
        style: TextStyle(
          fontSize: 12,
          fontWeight: .bold,
        ),
        )
]
    );
  }
}
