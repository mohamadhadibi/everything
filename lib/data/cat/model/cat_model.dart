import 'package:hive/hive.dart';

part 'cat_model.g.dart';

@HiveType(typeId: 1)
class CatModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String race;

  CatModel({required this.id, required this.race});
}
