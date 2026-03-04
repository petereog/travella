class CategoryModel {
  final String id;
  final String name;
  final String iconPath;

  CategoryModel({
    required this.id,
    required this.name,
    required this.iconPath,
  });

  factory CategoryModel.mock(int index) {
    return CategoryModel(
      id: index.toString(),
      name: 'Category $index',
      iconPath: 'assets/icon/category.svg',
    );
  }
}
