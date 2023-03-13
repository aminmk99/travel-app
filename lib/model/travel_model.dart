class TravelModel {
  String image;
  String name;
  String location;
  String distance;
  String temp;
  String rating;
  String description;
  String price;

  TravelModel({
    required this.image,
    required this.name,
    required this.location,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      image: 'assets/images/New_York_City.jpg',
      name: 'New York City',
      location: "New York, USA",
      distance: '15',
      temp: '18',
      rating: '5',
      description:
          'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park.',
      price: '5000'),
  TravelModel(
      image: 'assets/images/Tehran.jpg',
      name: 'Tehran City',
      location: "Tehran, Iran",
      distance: '7',
      temp: '32',
      rating: '4.8',
      description:
          'Tehran is the capital of Iran, in the north of the country. Its central Golestan Palace complex, with its ornate rooms and marble throne, was the seat of power of the Qajar dynasty. The National Jewelry Museum holds many of the Qajar monarchs’ jewels, while the National Museum of Iran has artifacts dating back to Paleolithic times.',
      price: '1000'),
  TravelModel(
      image: 'assets/images/Paris.jpg',
      name: 'Paris',
      location: 'Paris, France',
      distance: '9',
      temp: '20',
      rating: '4.2',
      description: 'description',
      price: '2000'),
  TravelModel(
      image: 'assets/images/London.jpeg',
      name: 'London',
      location: "London, England",
      distance: '8',
      temp: '19',
      rating: '4.5',
      description: 'description',
      price: '2500'),
];
