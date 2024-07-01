/// Interface for [RecentProductsDataSource].
// TODO(anyone): Explain what this DataSource is used for.
abstract interface class RecentProductsDataSource {
  Future<Map<String, Object?>?> loadCategoryData();
}
