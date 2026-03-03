import 'package:flutter/material.dart';
import 'package:travella/features/home/view/widget/city_widget.dart';
import 'package:travella/features/search/view/widget/destination_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search destinations...',
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                    const SizedBox(width: 12,),
                    DestinationWidget(),
                  ],
                ),
              ),

              const SizedBox(height: 32,),

              Text('Recommended',
                style: TextStyle(
                  fontWeight: .bold,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 32,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CityWidget(),
                    const SizedBox(width: 12,),
                    CityWidget(),
                    const SizedBox(width: 12,),
                    CityWidget(),
                    const SizedBox(width: 12,),
                    CityWidget(),
                    const SizedBox(width: 12,),
                  ],
                )
                ,
              ),


              const SizedBox(height: 32,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CityWidget(),
                    const SizedBox(width: 12,),
                    CityWidget(),
                    const SizedBox(width: 12,),
                    CityWidget(),
                    const SizedBox(width: 12,),
                    CityWidget(),
                    const SizedBox(width: 12,),
                  ],
                )
                ,
              ),

            ]
        )
        ),
      );
    }
}




