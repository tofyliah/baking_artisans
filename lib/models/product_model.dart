import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [
        name,
        category,
        imageUrl, price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    Product(
      name: 'Bread 1',
      category: 'Bread',
      imageUrl:
          'https://images.unsplash.com/photo-1589367920969-ab8e050bbb04?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80',
      price: 80.00,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Bread 2',
      category: 'Bread',
      imageUrl:
          'https://images.unsplash.com/photo-1570690050322-26d6a2ec7f3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80',
      price: 80.00,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Bread 3',
      category: 'Bread',
      imageUrl:
          'https://images.unsplash.com/photo-1561702856-b4ec96854ed8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      price: 80.00,
      isRecommended: true,
      isPopular: true,
    ), Product(
      name: 'Pasta 1',
      category: 'Pasta',
      imageUrl:
          'https://images.unsplash.com/photo-1607478900766-efe13248b125?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=592&q=80',
      price: 80.00,
      isRecommended: true,
      isPopular: true,
    ), Product(
      name: 'Pasta 2',
      category: 'Pasta',
      imageUrl:
          'https://images.unsplash.com/photo-1620256114757-322387444c16?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGJyZWFkc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      price: 80.00,
      isRecommended: true,
      isPopular: false,
    ),

  ];
}