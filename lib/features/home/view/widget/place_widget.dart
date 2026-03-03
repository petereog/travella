import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/poster2.png',
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Mount Bromo',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/location.png',
                      height: 14,
                      width: 14,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Jawa timur',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/icon/Star.png'),
                    const SizedBox(width: 5,),
                    Text('4.8'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
