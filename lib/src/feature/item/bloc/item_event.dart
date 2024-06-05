part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.loadItem({required String id}) = _LoadItem;

  const factory ItemEvent.changeIsFavorite() = _ChangeIsFavorite;
  const factory ItemEvent.addLikeToComment(
    int commentId,
  ) = _AddLikeToComment;
  const factory ItemEvent.addDislikeToComment(
    int commentId,
  ) = _AddDislikeToComment;
}
