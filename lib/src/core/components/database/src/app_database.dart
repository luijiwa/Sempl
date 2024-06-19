import 'package:drift/drift.dart';
import 'package:sempl/src/core/components/database/src/executor/db_executor.dart';
import 'package:sempl/src/core/components/database/src/tables/cart_items_table.dart';

part 'app_database.g.dart';

/// {@template app_database}
/// The drift-managed database configuration
/// {@endtemplate}
@DriftDatabase(tables: [CartItemsTable])
class AppDatabase extends _$AppDatabase {
  /// {@macro app_database}
  AppDatabase([QueryExecutor? executor]) : super(executor ?? createExecutor());

  @override
  int get schemaVersion => 1;
}
