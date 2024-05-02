import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'domain/leaderboard.dart';
import 'domain/quiz_game.dart';

void main() {
  // wie erstellen das databaseRepository einmalig für die gesamte App
  // später Tauschen wir MockDatabase gegen eine echte Datenbank wie Firestore aus
  // und müssen am Rest der App nichts ändern
  DatabaseRepository databaseRepository = MockDatabase();

  // angenommen wir benötigen die QuizGames für eine Übersichtsseite
  List<QuizGame> quizGames = databaseRepository.getQuizgames();

  for (QuizGame game in quizGames) {
    print("Kapitel ${game.chapterNumber}: ${game.chapterName}");
    print("Anzahl Fragen: ${game.getNumberOfQuestions()}");

    // angenommen wir benötigen die Leaderboards für eine Highscore-Liste
    Leaderboard? leaderboard = databaseRepository.getLeaderboard(game);
    if (leaderboard != null) {
      print("Highscore: ${leaderboard.scores.length} Einträge");
    } else {
      print("Highscore: noch keine Einträge");
    }
  }
}
