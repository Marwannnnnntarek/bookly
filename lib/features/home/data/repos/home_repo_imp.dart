import 'package:bookly/core/utils/app_errors.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/services/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);
  @override
  Future<Either<AppError, List<Item>>> fetchNewestBooks() async {
    try {
      var response = await apiService.get(
        endPoint: 'volumes',
        queryParameters: {'q': 'subject:fiction', 'orderBy': 'newest'},
      );

      if (response['items'] == null) {
        return Left(NoDataError("No books found. Please try again later."));
      }

      final results = response['items'] as List;

      final books = results.map((item) => Item.fromJson(item)).toList();

      return Right(books);
    } catch (e) {
      if (e.toString().contains('SocketException') ||
          e.toString().contains('HandshakeException') ||
          e.toString().contains('Connection refused')) {
        return Left(
          NetworkError(
            'No internet connection. Please check your network and try again.',
          ),
        );
      } else if (e.toString().contains('TimeoutException') ||
          e.toString().contains('timeout')) {
        return Left(TimeoutError('Request timeout. Please try again.'));
      } else if (e.toString().contains('FormatException') ||
          e.toString().contains('type \'Null\' is not a subtype')) {
        return Left(
          ParsingError('Invalid data received from server. Please try again.'),
        );
      } else if (e.toString().contains('HttpException') ||
          e.toString().contains('404') ||
          e.toString().contains('500')) {
        return Left(
          ServerError('Server error occurred. Please try again later.'),
        );
      } else {
        return Left(AppError('Failed to fetch books: ${e.toString()}'));
      }
    }
  }
}
