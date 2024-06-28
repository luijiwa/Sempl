import 'package:sempl/src/feature/review_items/data/data_source/review_items_data_source.dart';
import 'package:sempl/src/feature/review_items/data/repositories/i_review_items_repository.dart';

/// {@template review_items_repository.class}
/// Implementation of [IReviewItemsRepository].
/// {@endtemplate}
final class ReviewItemsRepository implements IReviewItemsRepository {
  final ReviewItemsDataSource _dataSource;

  /// {@macro review_items_repository.class}
  const ReviewItemsRepository({
    required ReviewItemsDataSource dataSource,
  }) : _dataSource = dataSource;
}
