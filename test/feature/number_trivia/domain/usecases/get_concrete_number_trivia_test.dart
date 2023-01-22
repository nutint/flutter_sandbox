import 'package:dartz/dartz.dart';
import 'package:flutter_sandbox/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_sandbox/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_sandbox/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia getConcreteNumberTrivia;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  test('should get number from repository', () async {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    getConcreteNumberTrivia =
        GetConcreteNumberTrivia(mockNumberTriviaRepository);

    when(mockNumberTriviaRepository.getConcreteNumberTrivia(1)).thenAnswer(
        (_) async => const Right(NumberTrivia(number: 1, text: 'text')));

    final actual = await getConcreteNumberTrivia.getConcreteNumberTrivia(1);

    expect(actual, const Right(NumberTrivia(number: 1, text: 'text')));
  });
}
