import '../domain/leaderboard.dart';
import '../domain/quiz_game.dart';
import '../domain/quiz_question.dart';
import '../domain/score.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  // Simulierte Datenbank
  List<QuizGame> quizGames = _createMockQuizGames();
  List<Leaderboard> leaderboards = [];

  // Methoden der Schablone `DatabaseRepository`

  @override
  List<QuizGame> getQuizgames() {
    return quizGames;
  }

  @override
  Leaderboard? getLeaderboard(QuizGame game) {
    // durchsuche alle Leaderboards nach dem gesuchten QuizGame
    for (Leaderboard l in leaderboards) {
      if (l.quizGame == game) {
        // wenn das gesuchte QuizGame gefunden wurde, gib das Leaderboard zurück
        return l;
      }
    }
    // wenn das gesuchte QuizGame nicht gefunden wurde, gib null zurück
    return null;
  }

  @override
  void addScore(Score score, QuizGame quizGame) {
    Leaderboard? leaderboard = getLeaderboard(quizGame);
    if (leaderboard == null) {
      // Leaderboard existiert noch nicht
      // -> erstelle neues Leaderboard mit dem Score als erstem Eintrag
      leaderboard = Leaderboard(quizGame: quizGame, scores: [score]);
      // füge das neue Leaderboard zur Liste der Leaderboards hinzu
      leaderboards.add(leaderboard);
    } else {
      // Leaderboard existiert bereits
      // -> füge den Score zum gefundenen Leaderboard hinzu
      leaderboard.addScore(score);
    }
  }
}

List<QuizGame> _createMockQuizGames() {
// Erstelle einige Quizfragen
  QuizQuestion q1 = QuizQuestion(
    question: "Was ergibt 1 + 1",
    answers: ["3", "200", "2", "0"],
    correctAnswerIndex: 2,
  );

  QuizQuestion q2 = QuizQuestion(
    question: "Was ergibt 2 * 2",
    answers: ["4", "200", "2", "0"],
    correctAnswerIndex: 0,
  );

  // Erstelle ein Quizgame mit den erstellten Quizfragen
  QuizGame quizGame1 = QuizGame(
    chapterNumber: "3",
    chapterName: "Grundlagen der Programmierung",
    quizQuestions: [
      q1,
      q2,
    ],
  );

  // Füge QuizGames zur Liste hinzu
  return [quizGame1];
}
