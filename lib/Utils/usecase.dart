import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_basic_integration_clean_arc/errors/failures.dart';


abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class GeneralUseCase<Type, Params> {
  Either<Failure, Type> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
