import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    @Default('') String city,
    @Default('') String street,
    @Default('') String house,
    @Default('') String apartment,
    @Default('') String entrance,
    @Default('') String zipCode,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
