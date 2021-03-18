import 'package:json_annotation/json_annotation.dart';
import 'geo.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String country;
  String city;
  Geo geo;
  Address();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  toJson() => _$AddressToJson(this);
}
