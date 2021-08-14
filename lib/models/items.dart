class Items {
  final String photo;
  final String item;
  final String description;
  final String price;
  final String part;
  bool isFavorite;


  Items({
    required this.photo,
    required this.item,
    required this.description,
    required this.price,
    required this.part,
    this.isFavorite = false,

  });
}
