import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:hive/hive.dart';

void saveBoxData(List<BookEntities> books, String boxName) {
  var hiveBox = Hive.box(boxName);
  hiveBox.addAll(books);
}
