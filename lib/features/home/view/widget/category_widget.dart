import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'All',
      'Popular',
      'Nearby',
      'Recommended',
      'Trending',
      'Newest',
    ];

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              categories[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                color: index == 0 ? Colors.black : Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
