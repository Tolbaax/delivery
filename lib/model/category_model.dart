class CategoryModel {
  final String name;
  final String imageUrl;
  CategoryModel({
    required this.name,
    required this.imageUrl,
  });
}

List<CategoryModel> category = [
  CategoryModel(
      name: 'Food',
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80'),
];
