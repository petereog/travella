class PlaceModel {
  final String id;
  final String name;
  final String location;
  final String imagePath;
  final double rating;
  final String price;

  PlaceModel({
    required this.id,
    required this.name,
    required this.location,
    required this.imagePath,
    required this.rating,
    required this.price,
  });

  factory PlaceModel.mock(int index) {
    return PlaceModel(
      id: index.toString(),
      name: 'Destination $index',
      location: 'Location $index, Indonesia',
      imagePath: 'assets/images/background.png',
      rating: 4.5 + (index % 5) / 10,
      price: '\$${150 + index * 10}',
    );
  }
}
