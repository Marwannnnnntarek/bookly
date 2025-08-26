import 'package:bookly/core/utils/app_errors.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<AppErrors, Type>> call([Param param]);
}

class NoParam {}
