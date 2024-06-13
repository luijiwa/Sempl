import 'package:chefshouse/src/feature/{{name.snakeCase()}}/data/repositories/i_{{name.snakeCase()}}_repository.dart';
import 'package:chefshouse/src/feature/{{name.snakeCase()}}/data/data_source/{{name.snakeCase()}}_data_source.dart';

/// {@template {{name.snakeCase()}}_repository.class}
/// Implementation of [I{{name.pascalCase()}}Repository].
/// {@endtemplate}
final class {{name.pascalCase()}}Repository implements I{{name.pascalCase()}}Repository {
   final {{name.pascalCase()}}DataSource _dataSource;


  /// {@macro {{name.snakeCase()}}_repository.class}
  const {{name.pascalCase()}}Repository({ required {{name.pascalCase()}}DataSource dataSource,
  }): _dataSource = dataSource;
}
