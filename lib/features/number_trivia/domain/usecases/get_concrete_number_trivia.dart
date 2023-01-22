import 'package:dartz/dartz.dart';
import 'package:flutter_sandbox/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_sandbox/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../../../../core/failures.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository numberTriviaRepository;

  GetConcreteNumberTrivia(this.numberTriviaRepository);

  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int i) async {
    return await numberTriviaRepository.getConcreteNumberTrivia(i);
  }
}
