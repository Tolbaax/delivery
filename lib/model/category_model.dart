class CategoryModel {
  final String name;
  final String imageUrl;
  CategoryModel({required this.name, required this.imageUrl,});
}

List<CategoryModel> categoryList = [
  CategoryModel(
      name: 'Food',
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80'),
  CategoryModel(
      name: 'groceries',
      imageUrl:
      'https://www.basketful.co/wp-content/uploads/2020/08/grocery-delivery-services-1024x690-1-1.jpeg'),
  CategoryModel(
      name: 'Desserts',
      imageUrl:
      'https://previews.123rf.com/images/annapustynnikova/annapustynnikova1610/annapustynnikova161000145/63948254-coffee-and-caramel-cake-mousse-dessert-on-a-black-plate-grey-stone-background-top-view-copy-space.jpg'),
];
