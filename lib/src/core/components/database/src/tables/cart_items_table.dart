import 'package:drift/drift.dart';

/// Todos table definition
class CartItemsTable extends Table {
  /// The identifier for this cart item.
  IntColumn get id => integer().autoIncrement()();

  ///  Колонка для айди товара
  IntColumn get itemId => integer()();

  /// The title of this cart item.
  TextColumn get name => text().withLength(min: 2, max: 100)();

  /// The image of this cart item.
  TextColumn get description => text()();

  /// The image of this cart item.
  TextColumn get image => text()();

  /// Created at timestamp.
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();

  /// Updated at timestamp.
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
