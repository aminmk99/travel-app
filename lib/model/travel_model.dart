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
      image: 'assets/images/Tehran2.jpg',
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
      description: "Paris is a world-renowned city that is often referred to as the 'City of Light' and the 'City of Love.' As the capital city of France, it has a rich history and culture that is reflected in its many landmarks and attractions. One of the most recognizable landmarks in Paris is the Eiffel Tower, which draws millions of visitors each year. Other famous landmarks include the Arc de Triomphe and Notre-Dame Cathedral. Paris is also known for its world-class art museums, such as the Louvre, which houses some of the most famous artworks in the world, including the Mona Lisa. The Musée d'Orsay is another popular museum that features impressionist and post-impressionist art. The city is synonymous with high fashion, with many of the world's top haute couture brands based in Paris, including Chanel, Dior, and Yves Saint Laurent. In addition to its cultural and artistic attractions, Paris is also known for its delicious cuisine, charming neighborhoods, and vibrant nightlife. All of these elements combine to make Paris one of the most beloved and popular cities in the world.",
      price: '2000'),
  TravelModel(
      image: 'assets/images/London.jpeg',
      name: 'London',
      location: "London, England",
      distance: '8',
      temp: '19',
      rating: '4.5',
      description: "London is a globally renowned city, serving as the capital of England and the United Kingdom. It is a center for commerce, culture, and entertainment, and is recognized as one of the most diverse and cosmopolitan cities on the planet. Here are ten things that make London a unique and special city: London boasts several iconic landmarks that are renowned worldwide, including Buckingham Palace, the London Eye, and the Tower of London. The city is steeped in history, with landmarks such as the Houses of Parliament and Westminster Abbey that date back centuries. London is home to some of the world's most prestigious museums, such as the British Museum, the National Gallery, and the Tate Modern. Thanks to its diverse population, London is a melting pot of cultures, with many vibrant neighborhoods like Soho, Camden, and Notting Hill. The city is a hub for the arts, with numerous theaters, concert halls, and galleries showcasing a wide range of performances and exhibitions. London is a shopper's paradise, with famous shopping streets like Oxford Street, Regent Street, and Bond Street. London is known for its green spaces, including Hyde Park, St. James's Park, and Regent's Park, which provide a welcome respite from the busy city streets. The city is well-connected to the rest of the world, with several major airports and a comprehensive public transportation system, including the iconic red double-decker buses and black cabs. London's food scene is diverse and eclectic, with a range of international cuisines and Michelin-starred restaurants. Finally, London's nightlife is vibrant and varied, with numerous bars, clubs, and venues hosting live music and events throughout the city.",
      price: '2500'),
];
