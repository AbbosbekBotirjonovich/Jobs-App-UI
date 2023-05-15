class Category {
  final String assetIcon;
  final String title;

  Category({required this.assetIcon, required this.title});
}

List<Category> categoryList = [
  Category(assetIcon: 'assets/ic_desainer.png', title: 'Design'),
  Category(assetIcon: 'assets/ic_coding.png', title: 'Software'),
  Category(assetIcon: 'assets/ic_data.png', title: 'Data'),
  Category(assetIcon: 'assets/ic_marketing.png', title: 'Marketing'),
];
