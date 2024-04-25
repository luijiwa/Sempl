part of 'feedback_bloc.dart';

@immutable
sealed class FeedbackEvent {}

final class FeedbackPlusChange extends FeedbackEvent {
  FeedbackPlusChange();
}

final class FeedbackMinusChange extends FeedbackEvent {
  FeedbackMinusChange();
}
