import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';
import 'package:sempl/src/feature/main/data/repository/main_screen_repository.dart';

class RatingUtils {
  Future<List<NewSemplsData>> updateItemsWithRating<T extends NewSemplsData>(
    List<T> items,
    IMainScreenRepository<dynamic> repository,
  ) async {
    List<NewSemplsData> updatedList = List<NewSemplsData>.from(items);

    for (int i = 0; i < updatedList.length; i++) {
      final ratingData = await repository.loadRatingItem(items[i].id);
      if (ratingData.data.isNotEmpty) {
        final ratings = ratingData.data;
        double rating = 0.0;
        for (var j = 0; j < ratings.length; j++) {
          rating = rating + ratings[j].rating;
        }
        final ratingSum = rating / ratings.length;
        updatedList[i] = updatedList[i]
            .copyWith(rating: ratingSum, countRating: ratings.length);
      }
    }

    return updatedList;
  }
}
