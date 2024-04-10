import 'quiz_game.dart';

abstract class DatabaseRepository {
  // gib mir alle Quizgames
  List<QuizGame> getQuizgames();
}

class MockDatabase implements DatabaseRepository {
  // Simulierte Datenbank
  List<QuizGame> quizGames = [];

  @override
  List<QuizGame> getQuizgames() {
    return quizGames;
  }
}
