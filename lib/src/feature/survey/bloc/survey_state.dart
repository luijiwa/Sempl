part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState({
    @Default(ButtonPushStatus.initial) ButtonPushStatus status,
    @Default(SurveyModel()) SurveyModel surveyModel,
  }) = _SurveyState;
}
