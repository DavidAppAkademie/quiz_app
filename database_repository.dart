import 'quiz_game.dart';

abstract class DatabaseRepository {
  // gib mir alle Quizgames
  List<QuizGame> getQuizgames();
  void setNewScore(int score, String name);
}

// Simulierte Datenbank
class MockDatabase implements DatabaseRepository {
  List<QuizGame> quizGames = [];

  @override
  List<QuizGame> getQuizgames() {
    return quizGames;
  }

  @override
  void setNewScore(int score, String name) {}
}
