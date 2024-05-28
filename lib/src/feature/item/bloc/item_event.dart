part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.loadItem({required String id}) = _LoadItem;
}
