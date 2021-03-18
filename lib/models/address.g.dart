// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address()
    ..country = json['country'] as String
    ..city = json['city'] as String
    ..geo = json['geo'] == null
        ? null
        : Geo.fromJson(json['geo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'geo': instance.geo,
    };
