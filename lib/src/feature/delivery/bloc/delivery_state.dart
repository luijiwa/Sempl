part of 'delivery_bloc.dart';

@freezed
class DeliveryState with _$DeliveryState {
  const factory DeliveryState({
    @Default(Address()) Address address,
    @Default(Address()) Address initialAddress,
    @Default(ButtonPushStatus.initial) ButtonPushStatus statusSend,
    @Default('') String errorMessage,
  }) = _DeliveryState;
}
