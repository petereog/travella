class DestinationModel {
  final String id;
  final String name;
  final String location;
  final String imagePath;
  final double rating;
  final String description;
  final String price;

  DestinationModel({
    required this.id,
    required this.name,
    required this.location,
    required this.imagePath,
    required this.rating,
    required this.description,
    required this.price,
  });

  // Factory constructor for mock data or API response
  factory DestinationModel.mock() {
    return DestinationModel(
      id: '1',
      name: 'Raja Ampat Islands',
      location: 'West Papua, Indonesia',
      imagePath: 'assets/images/background.png',
      rating: 4.8,
      description: 'The Raja Ampat Islands are an Indonesian archipelago off the northwest tip of Bird’s Head Peninsula in West Papua. Comprising hundreds of jungle-covered islands, Raja Ampat is known for its beaches and coral reefs rich with marine life.',
      price: '\$200',
    );
  }
}
