import 'package:sempl/src/feature/survey/data/survey_data_source.dart';

abstract interface class SurveyRepository<T> {
  /// Sign out
  Future<void> sendResultSurvey(Map<String, dynamic> survey);
}

final class SurveyRepositoryImpl implements SurveyRepository {
  final SurveyDataSource _dataSource;

  const SurveyRepositoryImpl(this._dataSource);

  @override
  Future<void> sendResultSurvey(Map<String, dynamic> survey) =>
      _dataSource.sendResultSurvey(survey);
}
