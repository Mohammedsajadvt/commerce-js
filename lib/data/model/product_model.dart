class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    try {
      
      dynamic priceData = json['price'];
      
     
      String priceString = '';
      if (priceData is String) {
        priceString = priceData;
      } else if (priceData is Map<String, dynamic>) {
        
        priceString = priceData['formatted'] ?? '';
      }
      
      
      final cleanedPriceString = priceString.replaceAll(RegExp(r'[^0-9.]'), '');

      
      final parsedPrice = double.parse(cleanedPriceString);

     
      String imageUrl = '';
      if (json.containsKey('image')) {
        var image = json['image'];
        if (image is Map<String, dynamic> && image.containsKey('url')) {
          imageUrl = image['url'];
        }
      }

      return Product(
        id: json['id'].toString(),
        name: json['name'].toString(),
        description: json['description'].toString(),
        price: parsedPrice,
        imageUrl: imageUrl,
      );
    } catch (e) {
      print('Error parsing product: $e');
      print('JSON data for debugging: $json');
      rethrow; 
    }
  }
}
