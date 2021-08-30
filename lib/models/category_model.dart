import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(name: 'cake',
        imageUrl:
        'https://images.unsplash.com/photo-1561702856-b4ec96854ed8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
    ),
    Category(name: 'bread',
        imageUrl:
        'https://images.unsplash.com/photo-1620256114757-322387444c16?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGJyZWFkc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    ),
    Category(name: 'tinapay',
        imageUrl:
        'https://images.unsplash.com/photo-1589367920969-ab8e050bbb04?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80'
    ),
  ];
}

