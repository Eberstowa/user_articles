import 'package:json_annotation/json_annotation.dart';
part 'author_model.g.dart';

@JsonSerializable()


class AuthorModel {
  const AuthorModel({
    required this.id,
    required this.picture,
    required this.firstName,
    required this.lastName,
  });

  final int id;
  final String picture;

  @JsonKey(name: 'first_name') //jsonkey dodajemy tylko dla zmiennych, które mają inną nazwę zmiennej niż pole w api
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  String get name {
    return '$firstName $lastName';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
      
  Map<String, dynamic> toJson() => _$AuthorModelToJson(this);
}
