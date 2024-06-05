import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';

abstract interface class SurveyDataSource<T> {
  /// Get the list of pokemons
  Future<T> sendResultSurvey(Map<String, dynamic> survey);
}

final class SurveyDataSourceNetwork<T> implements SurveyDataSource {
  final RestClient _client;
  const SurveyDataSourceNetwork(this._client);
  @override
  Future<Token> sendResultSurvey(Map<String, dynamic> survey) async {
    try {
      final response = await _client.post('/api/auth/verify-code-and-register',
          body: survey);
      if (response is Map<String, dynamic> &&
          response.containsKey('access_token')) {
        return Token(response['access_token']);
      }
      throw Exception('Wrong response');
    } catch (e) {
      rethrow;
    }
  }
}
