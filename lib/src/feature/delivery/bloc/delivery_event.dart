part of 'delivery_bloc.dart';

@freezed
class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.editAddress({
    required String city,
    required String street,
    required String house,
    required String apartment,
    required String zipCode,
    required String entrance,
  }) = _EditAddress;

  const factory DeliveryEvent.loadAddress() = _LoadAddress;
}
