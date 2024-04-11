import 'quiz_question.dart';

class QuizGame {
  // Attribute
  String chapterNumber;
  String chapterName;
  List<QuizQuestion> quizQuestions;

  // Konstruktor
  QuizGame({
    required this.chapterNumber,
    required this.chapterName,
    required this.quizQuestions,
  });

  // Methoden
  int getNumberOfQuestions() {
    return quizQuestions.length;
  }
}
