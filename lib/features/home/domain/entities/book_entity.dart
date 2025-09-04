import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String entityID;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String author;
  @HiveField(3)
  final String image;
  @HiveField(4)
  final num rate;
  @HiveField(5)
  final String previewLink;

  BookEntity({
    required this.entityID,
    required this.title,
    required this.author,
    required this.image,
    required this.rate,
    required this.previewLink,
  });
}
