class Produk {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final num rating;
  final int count;

  Produk({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    required this.count,
  });

  factory Produk.fromJson(Map<String, dynamic> json) {
  return Produk(
    id: json['id'],
    title: json['title'],
    price: json['price'],
    description: json['description'],
    category: json['category'],
    image: json['image'],
    rating: json['rating'],
    count: json['count'],
  );
  }
}