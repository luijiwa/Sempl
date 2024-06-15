import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';
import 'package:sempl/src/feature/survey/data/survey_data_source.dart';

abstract interface class SurveyRepository<T> {
  /// Sign out
  Future<void> sendResultSurvey(Map<String, dynamic> survey);
}

final class SurveyRepositoryImpl<T> implements SurveyRepository {
  final SurveyDataSource<T> _dataSource;
  final TokenStorage<T> _storage;
  const SurveyRepositoryImpl({
    required SurveyDataSource<T> dataSource,
    required TokenStorage<T> storage,
  })  : _dataSource = dataSource,
        _storage = storage;

  @override
  Future<void> sendResultSurvey(Map<String, dynamic> survey) async {
    try {
      final Token newToken = await _dataSource.sendResultSurvey(survey);
      await _storage.save(newToken as T);
    } catch (e) {
      rethrow;
    }
  }
}
