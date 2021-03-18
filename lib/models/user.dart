import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'company.dart';
import 'geo.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  int id;
  String name;
  String username;
  String email;
  String website;
  Address address;
  Company company;
  List<Geo> locs;

  User(
    this.id,
    this.name,
    this.username,
    this.email,
    this.website,
    this.address,
    this.company,
    List<Geo> locs,
  ) : locs = locs ?? <Geo>[];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
