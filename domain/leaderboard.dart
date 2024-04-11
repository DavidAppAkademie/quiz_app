import 'quiz_game.dart';
import 'score.dart';

class Leaderboard {
  // Attribute
  QuizGame quizGame;
  List<Score> scores;

  // Konstruktor
  Leaderboard({required this.quizGame, required this.scores});
}
