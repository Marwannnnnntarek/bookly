import 'package:bookly/constants.dart';
import 'package:bookly/core/functions/save_box_data.dart';
import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/foundation.dart';

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImp(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=free&filter=free-ebooks&maxResults=10&startIndex=${pageNumber * 10}',
    );
    final books = await compute(parseBooksList, data);
    saveBoxData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=free&filter=free-ebooks&orderBy=newest&maxResults=20',
    );
    final books = await compute(parseBooksList, data);
    saveBoxData(books, kNewestBox);
    return books;
  }
}

// Top-level function for use with compute to parse books off the main thread
List<BookEntity> parseBooksList(Map<String, dynamic> data) {
  final List<dynamic> items = data['items'] as List<dynamic>? ?? <dynamic>[];
  final List<BookEntity> books = <BookEntity>[];
  for (final dynamic bookMap in items) {
    books.add(Item.fromJson(bookMap as Map<String, dynamic>));
  }
  return books;
}
