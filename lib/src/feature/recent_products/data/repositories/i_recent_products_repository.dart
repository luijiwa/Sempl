import 'package:sempl/src/feature/main/data/model/categories/categories.dart';
import 'package:sempl/src/feature/recent_products/data/repositories/recent_products_repository.dart';

/// Interface for [RecentProductsRepository].
// TODO(anyone): Explain what this repository is used for.
abstract interface class IRecentProductsRepository {
  Future<Categories> loadCategoryData();
}
