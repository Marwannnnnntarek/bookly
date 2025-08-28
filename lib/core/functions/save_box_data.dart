import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBoxData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  for (final book in books) {
    // Use entityID as the key to avoid duplicates; updates existing entries
    box.put(book.entityID, book);
  }
}
