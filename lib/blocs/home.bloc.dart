import '../models/category-list-item.model.dart';
import '../models/product-list-item.model.dart';
import '../repositories/category.repository.dart';
import '../repositories/product.repository.dart';

class HomeBloc {
  final categoryRepository = CategoryRepository();
  final productRepository = ProductRepository();

  List<ProductListItemModel>? products;
  List<CategoryListItemModel>? categories;
  String selectedCategory = 'todos';

  HomeBloc() {
    getCategories();
    getProducts();
  }

  getCategories() {
    categoryRepository.getAll().then((data) {
      categories = data;
    });
  }

  getProducts() {
    productRepository.getAll().then((data) {
      products = data;
    });
  }

  getProductsByCategory() {
    productRepository
        .getByCategory(selectedCategory)
        .then((data) => products = data);
  }

  changeCategory(tag) {
    selectedCategory = tag;
    products = null;
    getProductsByCategory();
  }
}