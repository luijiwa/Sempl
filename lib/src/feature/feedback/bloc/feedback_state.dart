part of 'feedback_bloc.dart';

class FeedbackState extends Equatable {
  final bool minusIsEnabeled;
  final bool plusIsEnabeled;

  const FeedbackState({
    this.minusIsEnabeled = false,
    this.plusIsEnabeled = false,
  });

  FeedbackState copyWith({
    bool? minusIsEnabeled,
    bool? plusIsEnabeled,
  }) => FeedbackState(
      minusIsEnabeled: minusIsEnabeled ?? this.minusIsEnabeled,
      plusIsEnabeled: plusIsEnabeled ?? this.plusIsEnabeled,
    );

  @override
  List<Object> get props => [minusIsEnabeled, plusIsEnabeled];
}
