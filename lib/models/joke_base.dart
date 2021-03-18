// import 'package:json_annotation/json_annotation.dart';

// import 'joke.dart';

// part 'joke_base.g.dart';

// //* explicitToJson to ensure the output has the jokes, and not "Instance of 'Joke'"

// @JsonSerializable(explicitToJson: true)
// class JokeBase {
//   //*ignore this field
//   @JsonKey(ignore: true)
//   String type;

//   List<Joke> joke;
//   JokeBase();

//   factory JokeBase.fromJson(Map<String, dynamic> json) =>
//       _$JokeBaseFromJson(json);
//   toJson() => _$JokeBaseToJson(this);
// }
