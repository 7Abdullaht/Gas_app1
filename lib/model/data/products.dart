class Product {
  final String title, image, description, type, price;
  final int id, qunt, size;

  Product(this.title, this.image, this.description, this.type, this.id,
      this.price, this.qunt, this.size);
}

List<Product> Products = [
  Product('أسطوانة غاز للاستبدال', 'Assets/images/s.jpg', 'مزيد التفاصيل',
      'uish', 2, '60000 R.Y', 2, 20),
  Product('أسطوانة غاز للاستبدال', 'Assets/images/s.jpg', 'مزيد التفاصيل',
      'uish', 2, '60000 R.Y', 2, 20),
  Product('أسطوانة غاز للاستبدال', 'Assets/images/s.jpg', 'مزيد التفاصيل',
      'uish', 2, '60000 R.Y', 2, 20),
];
