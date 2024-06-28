import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/review_items/data/data_source/review_items_data_source.dart';

/// {@template review_items_data_source_network.class}
/// Implementation of [ReviewItemsDataSource].
/// {@endtemplate}
final class ReviewItemsDataSourceNetwork implements ReviewItemsDataSource {
  /// {@macro review_items_data_source_network.class}
  final RestClient _client;

  const ReviewItemsDataSourceNetwork(this._client);
}
