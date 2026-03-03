import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 180,
width: 195,
decoration: BoxDecoration(
  color: Colors.white,
      borderRadius: BorderRadius.circular(12),
),
child:
Padding(padding: EdgeInsetsGeometry.all(7),
    child: Column(
    children: [
    Padding(padding: EdgeInsetsGeometry.all(0),
      child:  Image.asset(
        'assets/images/poster2.png',
        fit: BoxFit.cover,
      ),
    ),
const SizedBox(height: 5,),
    Row(
    children: [
    Text('Ranu Kumbolo',
    style: TextStyle(
    fontWeight: .bold,
    fontSize: 14,
    ),
    ),
    const Spacer(),
      SizedBox(
        child: Image.asset('assets/icon/Star.png'),
      ),
      const SizedBox(width: 5,),
      Text('4.7'),
    ],
    ),
      const SizedBox(height: 5,),
      Row(
        children: [
          Image.asset('assets/icon/location.png'),
          const SizedBox(width: 5,),
          Text('Lumajang, Jawa timur')
        ],
      )

    ],
      
    ),
)


    );
  }
}