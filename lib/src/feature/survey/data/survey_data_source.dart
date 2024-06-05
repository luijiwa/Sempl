import 'package:sempl/src/core/components/rest_client/rest_client.dart';

abstract interface class SurveyDataSource {
  /// Get the list of pokemons
  Future<void> sendResultSurvey(Map<String, dynamic> survey);
}

final class SurveyDataSourceNetwork implements SurveyDataSource {
  final RestClient _client;
  const SurveyDataSourceNetwork(this._client);
  @override
  Future<void> sendResultSurvey(Map<String, dynamic> survey) async {
    try {
      await _client.post('/api/auth/verify-code-and-register', body: survey);
    } catch (e) {
      rethrow;
    }
  }
}
