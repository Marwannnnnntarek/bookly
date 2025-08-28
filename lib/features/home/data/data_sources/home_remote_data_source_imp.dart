import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImp(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(
      endPoint: 'volumes?q=free&filter=free-ebooks&maxResults=20',
    );
    final books = getBooksList(data);
    saveBoxData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=free&filter=free-ebooks&orderBy=newest&maxResults=20',
    );
    final books = getBooksList(data);
    saveBoxData(books, kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var bookMap in data['items']) {
      books.add(Item.fromJson(bookMap));
    }
    return books;
  }

  void saveBoxData(List<BookEntity> books, String boxName) {
    var box = Hive.box(boxName);
    box.addAll(books);
  }
}
