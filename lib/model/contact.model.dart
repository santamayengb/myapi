import 'package:json_annotation/json_annotation.dart';

part 'contact.model.g.dart';

@JsonSerializable()
class ContactModel {
  ContactModel({
    required this.id,
    required this.name,
    required this.number,
  });

  final String id;
  final String name;
  final String number;

  /// A necessary factory constructor for creating a new ContactModel instance
  /// from a map. Pass the map to the generated `_$ContactModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ContactModel.
  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ContactModelToJson`.
  Map<String, dynamic> toJson() => _$ContactModelToJson(this);
}
