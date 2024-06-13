import 'package:chefshouse/src/core/components/rest_client/rest_client.dart';
import 'package:chefshouse/src/feature/{{name.snakeCase()}}/data/data_source/{{name.snakeCase()}}_data_source.dart';

/// {@template {{name.snakeCase()}}_data_source_network.class}
/// Implementation of [{{name.pascalCase()}}DataSource].
/// {@endtemplate}
final class {{name.pascalCase()}}DataSourceNetwork implements {{name.pascalCase()}}DataSource {
  /// {@macro {{name.snakeCase()}}_data_source_network.class}
    final RestClient _client;

  const {{name.pascalCase()}}DataSourceNetwork(this._client);
}
