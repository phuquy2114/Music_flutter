import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AlbumModel {
  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'description')
  final String description;

  AlbumModel(this.image, this.name, this.description);
}
